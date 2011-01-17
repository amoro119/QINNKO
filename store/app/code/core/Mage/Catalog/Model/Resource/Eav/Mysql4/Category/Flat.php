<?php
/**
 * Magento
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@magentocommerce.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade Magento to newer
 * versions in the future. If you wish to customize Magento for your
 * needs please refer to http://www.magentocommerce.com for more information.
 *
 * @category    Mage
 * @package     Mage_Catalog
 * @copyright   Copyright (c) 2010 Magento Inc. (http://www.magentocommerce.com)
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */


/**
 * Category flat model
 *
 * @category   Mage
 * @package    Mage_Catalog
 * @author     Magento Core Team <core@magentocommerce.com>
 */
class Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat extends Mage_Core_Model_Mysql4_Abstract
{
    protected $_storeId = null;

    protected $_loaded = false;

    protected $_nodes = array();

    protected $_columns = null;

    protected $_columnsSql = null;

    protected $_attributeCodes = null;

    /**
     * Inactive categories ids
     *
     * @var array
     */
    protected $_inactiveCategoryIds = null;

    protected $_isRebuilt = null;

    /**
     * array with root category id per store
     *
     * @var array
     */
    protected $_storesRootCategories;

    protected function  _construct()
    {
        $this->_init('catalog/category_flat', 'entity_id');
    }

    /**
     * Set store id
     *
     * @param integer $storeId
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function setStoreId($storeId)
    {
        $this->_storeId = $storeId;
        return $this;
    }

    /**
     * Return store id
     *
     * @return integer
     */
    public function getStoreId()
    {
        if (is_null($this->_storeId)) {
            return Mage::app()->getStore()->getId();
        }
        return $this->_storeId;
    }

    /**
     * Get main table name
     *
     * @return string
     */
    public function getMainTable()
    {
        return $this->getMainStoreTable($this->getStoreId());
    }

    /**
     * Return name of table for given $storeId.
     *
     * @param integer $storeId
     * @return string
     */
    public function getMainStoreTable($storeId = 0)
    {
        $table = parent::getMainTable();
        if (is_string($storeId)) {
            $storeId = intval($storeId);
        }
        if ($this->getUseStoreTables() && $storeId) {
            $table .= '_store_'.$storeId;
        }
        return $table;
    }

    /**
     * Return true if need use for each store different table of flat categoris data.
     *
     * @return boolean
     */
    public function getUseStoreTables()
    {
        return true;
    }

    /**
     * Add inactive categories ids
     *
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function addInactiveCategoryIds($ids)
    {
        if (!is_array($this->_inactiveCategoryIds)) {
            $this->_initInactiveCategoryIds();
        }
        $this->_inactiveCategoryIds = array_merge($ids, $this->_inactiveCategoryIds);
        return $this;
    }

    /**
     * Retreive inactive categories ids
     *
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    protected function _initInactiveCategoryIds()
    {
        $this->_inactiveCategoryIds = array();
        Mage::dispatchEvent('catalog_category_tree_init_inactive_category_ids', array('tree'=>$this));
        return $this;
    }

    /**
     * Retreive inactive categories ids
     *
     * @return array
     */
    public function getInactiveCategoryIds()
    {
        if (!is_array($this->_inactiveCategoryIds)) {
            $this->_initInactiveCategoryIds();
        }

        return $this->_inactiveCategoryIds;
    }

    /**
     * Load nodes by parent id
     *
     * @param integer $parentId
     * @param integer $recursionLevel
     * @param integer $storeId
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    protected function _loadNodes($parentNode = null, $recursionLevel = 0, $storeId = 0)
    {
        $_conn = $this->_getReadAdapter();
        $startLevel = 1;
        $parentPath = '';
        if ($parentNode instanceof Mage_Catalog_Model_Category) {
            $parentPath = $parentNode->getPath();
            $startLevel = $parentNode->getLevel();
        } elseif (is_numeric($parentNode)) {
            $selectParent = $_conn->select()
                ->from($this->getMainStoreTable($storeId))
                ->where('entity_id = ?', $parentNode)
                ->where('store_id = ?', $storeId);
            if ($parentNode = $_conn->fetchRow($selectParent)) {
                $parentPath = $parentNode['path'];
                $startLevel = $parentNode['level'];
            }
        }
        $select = $_conn->select()
            ->from(array('main_table'=>$this->getMainStoreTable($storeId)), array('main_table.entity_id', 'main_table.name', 'main_table.path', 'main_table.is_active', 'main_table.is_anchor'))
            ->joinLeft(
                array('url_rewrite'=>$this->getTable('core/url_rewrite')),
                'url_rewrite.category_id=main_table.entity_id AND url_rewrite.is_system=1 AND url_rewrite.product_id IS NULL AND url_rewrite.store_id="'.$storeId.'" AND url_rewrite.id_path LIKE "category/%"',
                array('request_path' => 'url_rewrite.request_path'))
            ->where('main_table.is_active = ?', '1')
//            ->order('main_table.path', 'ASC')
            ->order('main_table.position', 'ASC');



        if ($parentPath) {
            $select->where($_conn->quoteInto("main_table.path like ?", "$parentPath/%"));
        }
        if ($recursionLevel != 0) {
            $select->where("main_table.level <= ?", $startLevel + $recursionLevel);
        }

        $inactiveCategories = $this->getInactiveCategoryIds();

        if (!empty($inactiveCategories)) {
            $select->where('main_table.entity_id NOT IN (?)', $inactiveCategories);
        }

        $arrNodes = $_conn->fetchAll($select);
        $nodes = array();
        foreach ($arrNodes as $node) {
            $node['id'] = $node['entity_id'];
            $nodes[$node['id']] = Mage::getModel('catalog/category')->setData($node);
        }

        return $nodes;
    }

    /**
     * Creating sorted array of nodes
     *
     * @param array $children
     * @param string $path
     * @param Varien_Object $parent
     */
    public function addChildNodes($children, $path, $parent)
    {
        if (isset($children[$path])) {
            foreach ($children[$path] as $child) {
                $childrenNodes = $parent->getChildrenNodes();
                if ($childrenNodes && isset($childrenNodes[$child->getId()])) {
                    $childrenNodes[$child['entity_id']]->setChildrenNodes(array($child->getId()=>$child));
                } else {
                    if ($childrenNodes) {
                        $childrenNodes[$child->getId()] = $child;
                    } else {
                        $childrenNodes = array($child->getId()=>$child);
                    }
                    $parent->setChildrenNodes($childrenNodes);
                }

                if ($path) {
                    $childrenPath = explode('/', $path);
                } else {
                    $childrenPath = array();
                }
                $childrenPath[] = $child->getId();
                $childrenPath = implode('/', $childrenPath);
                $this->addChildNodes($children, $childrenPath, $child);
            }
        }
    }

    /**
     * Return sorted array of nodes
     *
     * @param integer|null $parentId
     * @param integer $recursionLevel
     * @param integer $storeId
     * @return array
     */
    public function getNodes($parentId, $recursionLevel = 0, $storeId = 0)
    {
        if (!$this->_loaded) {
            $selectParent = $this->_getReadAdapter()->select()
                ->from($this->getMainStoreTable($storeId))
                ->where('entity_id = ?', $parentId);
            if ($parentNode = $this->_getReadAdapter()->fetchRow($selectParent)) {
                $parentNode['id'] = $parentNode['entity_id'];
                $parentNode = Mage::getModel('catalog/category')->setData($parentNode);
                $this->_nodes[$parentNode->getId()] = $parentNode;
                $nodes = $this->_loadNodes($parentNode, $recursionLevel, $storeId);
                $childrenItems = array();
                foreach ($nodes as $node) {
                    $pathToParent = explode('/', $node->getPath());
                    array_pop($pathToParent);
                    $pathToParent = implode('/', $pathToParent);
                    $childrenItems[$pathToParent][] = $node;
                }
                $this->addChildNodes($childrenItems, $parentNode->getPath(), $parentNode);
                $childrenNodes = $this->_nodes[$parentNode->getId()];
                if ($childrenNodes->getChildrenNodes()) {
                    $this->_nodes = $childrenNodes->getChildrenNodes();
                }
                else {
                    $this->_nodes = array();
                }
                $this->_loaded = true;
            }
        }
        return $this->_nodes;
    }

    /**
     * Return array or collection of categories
     *
     * @param integer $parent
     * @param integer $recursionLevel
     * @param boolean|string $sorted
     * @param boolean $asCollection
     * @param boolean $toLoad
     * @return array|Varien_Data_Collection
     */
    public function getCategories($parent, $recursionLevel = 0, $sorted=false, $asCollection=false, $toLoad=true)
    {
        if ($asCollection) {
            $parentPath = $this->_getReadAdapter()->fetchOne(new Zend_Db_Expr("
                SELECT path FROM {$this->getMainStoreTable($this->getStoreId())} WHERE entity_id = {$parent}
            "));
            $collection = Mage::getModel('catalog/category')->getCollection()
                ->addNameToResult()
                ->addUrlRewriteToResult()
                ->addParentPathFilter($parentPath)
                ->addStoreFilter()
                ->addSortedField($sorted);
            if ($toLoad) {
                return $collection->load();
            }
            return $collection;
        }
        return $this->getNodes($parent, $recursionLevel, Mage::app()->getStore()->getId());
    }

    /**
     * Return node with id $nodeId
     *
     * @param integer $nodeId
     * @param array $nodes
     * @return Varien_Object
     */
    public function getNodeById($nodeId, $nodes = null)
    {
        if (is_null($nodes)) {
            $nodes = $this->getNodes();
        }
        if (isset($nodes[$nodeId])) {
            return $nodes[$nodeId];
        }
        foreach ($nodes as $node) {
//            if ($node->getId() == $nodeId) {
//                return $node;
//            }
            if ($node->getChildrenNodes()) {
                return $this->getNodeById($nodeId, $node->getChildrenNodes());
            }
        }
        return array();
    }

    /**
     * Check if category flat data is rebuilt
     *
     * @return bool
     */
    public function isRebuilt()
    {
        if ($this->_isRebuilt === null) {
            $select = $this->_getReadAdapter()->select()
                ->from($this->getMainStoreTable(Mage::app()->getDefaultStoreView()->getId()), 'entity_id')
                ->limit(1);
            try {
                $this->_isRebuilt = (bool) $this->_getReadAdapter()->fetchOne($select);
            } catch (Exception $e) {
                $this->_isRebuilt = false;
            }
        }
        return $this->_isRebuilt;
    }

    protected function _getTableSqlSchema($storeId = 0)
    {
        $storeId = Mage::app()->getStore($storeId)->getId();
        $schema = "CREATE TABLE `{$this->getMainStoreTable($storeId)}` (
                `entity_id` int(10) unsigned not null,
                `store_id` smallint(5) unsigned not null default '0',
                `parent_id` int(10) unsigned not null default '0',
                `path` varchar(255) not null default '',
                `level` int(11) not null default '0',
                `position` int(11) not null default '0',
                `children_count` int(11) not null,
                `created_at` datetime not null default '0000-00-00 00:00:00',
                `updated_at` datetime not null default '0000-00-00 00:00:00',
                KEY `CATEGORY_FLAT_CATEGORY_ID` (`entity_id`),
                KEY `CATEGORY_FLAT_STORE_ID` (`store_id`),
                KEY `path` (`path`),
                KEY `IDX_LEVEL` (`level`),
                CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_{$storeId}` FOREIGN KEY (`entity_id`)
                    REFERENCES `{$this->getTable('catalog/category')}` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
                CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_{$storeId}` FOREIGN KEY (`store_id`)
                    REFERENCES `{$this->getTable('core/store')}` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8";
        return $schema;
    }

    /**
     * Rebuild flat data from eav
     *
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function rebuild($stores = null)
    {
        if ($stores === null) {
            $stores = Mage::app()->getStores();
        }

        if (!is_array($stores)) {
            $stores = array($stores);
        }

        $rootId = Mage_Catalog_Model_Category::TREE_ROOT_ID;
        $categories = array();
        $categoriesIds = array();
        /* @var $store Mage_Core_Model_Store */
        foreach ($stores as $store) {
            $this->_createTable($store->getId());

            if (!isset($categories[$store->getRootCategoryId()])) {
                $select = $this->_getWriteAdapter()->select()
                    ->from($this->getTable('catalog/category'))
                    ->where('path = ?', (string)$rootId)
                    ->orWhere('path = ?', "{$rootId}/{$store->getRootCategoryId()}")
                    ->orWhere('path LIKE ?', "{$rootId}/{$store->getRootCategoryId()}/%");
                $categories[$store->getRootCategoryId()] = $this->_getWriteAdapter()->fetchAll($select);
                $categoriesIds[$store->getRootCategoryId()] = array();
                foreach ($categories[$store->getRootCategoryId()] as $category) {
                    $categoriesIds[$store->getRootCategoryId()][] = $category['entity_id'];
                }
            }
            $categoriesIdsChunks = array_chunk($categoriesIds[$store->getRootCategoryId()], 500);
            foreach ($categoriesIdsChunks as $categoriesIdsChunk) {
                $attributesData = $this->_getAttributeValues($categoriesIdsChunk, $store->getId());
                $data = array();
                foreach ($categories[$store->getRootCategoryId()] as $category) {
                    if (!isset($attributesData[$category['entity_id']])) {
                        continue;
                    }
                    $category['store_id'] = $store->getId();
                    $data[] = $this->_prepareValuesToInsert(
                        array_merge($category, $attributesData[$category['entity_id']])
                    );
                }
                $this->_getWriteAdapter()->insertMultiple($this->getMainStoreTable($store->getId()), $data);
            }
        }
        return $this;
    }

    /**
     * Prepare array of column and columnValue pairs
     *
     * @param array $data
     * @return array
     */
    protected function _prepareValuesToInsert($data)
    {
        $values = array();
        foreach (array_keys($this->_columns) as $key => $column) {
            if (isset($data[$column])) {
                $values[$column] = $data[$column];
            } else {
                $values[$column] = '';
            }
        }
        return $values;
    }

    /**
     * Create Flate Table(s)
     *
     * @param array|int $stores
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function createTable($stores)
    {
        return $this->_createTable($stores);
    }

    /**
     * Creating table and adding attributes as fields to table
     *
     * @param array|integer $store
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    protected function _createTable($store)
    {
        $this->_getWriteAdapter()->query("DROP TABLE IF EXISTS `{$this->getMainStoreTable($store)}`;");
        $_tableSql = "CREATE TABLE `{$this->getMainStoreTable($store)}` (\n";
        if ($this->_columnsSql === null || $this->_columnsSql === null) {
            $this->_columns = array_merge($this->_getStaticColumns(), $this->_getEavColumns());
            foreach ($this->_columns as $columnName => $columnData) {
                $this->_columnsSql .= '`' . $columnName . '` ' . $columnData['type'];
                $this->_columnsSql .= $columnData['is_unsigned'] ? ' unsigned' : '';
                $this->_columnsSql .= ($columnData['is_null'] ? '' : ' not null');
                $this->_columnsSql .= ($columnData['default'] === false ? '' : ' default \'' . $columnData['default'] . '\'');
                $this->_columnsSql .= ",\n";
            }
        }
        $_tableSql .= $this->_columnsSql;
        $_tableSql .= "PRIMARY KEY (`entity_id`),
                KEY `IDX_STORE` (`store_id`),
                KEY `IDX_PATH` (`path`),
                KEY `IDX_LEVEL` (`level`),
                CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_{$store}` FOREIGN KEY (`entity_id`)
                    REFERENCES `{$this->getTable('catalog/category')}` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
                CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_{$store}` FOREIGN KEY (`store_id`)
                    REFERENCES `{$this->getTable('core/store')}` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8";
        $this->_getWriteAdapter()->query($_tableSql);
        return $this;
    }

    /**
     * Return array of static columns
     *
     * @return array
     */
    protected function _getStaticColumns()
    {
        $columns = array();
        $columnsToSkip = array('entity_type_id', 'attribute_set_id');
        $describe = $this->_getWriteAdapter()->describeTable($this->getTable('catalog/category'));
        foreach ($describe as $column) {
            if (in_array($column['COLUMN_NAME'], $columnsToSkip)) {
                continue;
            }
            $_type = '';
            $_is_unsigned = '';
             switch ($column['DATA_TYPE']) {
                case 'smallint':
                case 'int':
                    $_type = $column['DATA_TYPE'] . '(11)';
                    $_is_unsigned = (bool)$column['UNSIGNED'];
                    if ($column['DEFAULT'] === '') {
                        $column['DEFAULT'] = null;
                    }
                    break;
                case 'varchar':
                    $_type = $column['DATA_TYPE'] . '(' . $column['LENGTH'] . ')';
                    $_is_unsigned = null;
                    break;
                case 'datetime':
                    $_type = $column['DATA_TYPE'];
                    $_is_unsigned = null;
                    break;
                case 'decimal':
                    $_type = $columns['DATA_TYPE'] . '(' . $column['PRECISION'] . ',' . $column['SCALE'] . ')';
                    $_is_unsigned = null;
                    if ($column['DEFAULT'] === '') {
                        $column['DEFAULT'] = null;
                    }
                    break;
            }
            $columns[$column['COLUMN_NAME']] = array(
                'type' => $_type,
                'is_unsigned' => $_is_unsigned,
                'is_null' => $column['NULLABLE'],
                'default' => ($column['DEFAULT'] === null ? false : $column['DEFAULT'])
            );
        }
        $columns['store_id'] = array(
            'type' => 'smallint(5)',
            'is_unsigned' => true,
            'is_null' => false,
            'default' => '0'
        );
        return $columns;
    }

    /**
     * Return array of eav columns, skip attribute with static type
     *
     * @return array
     */
    protected function _getEavColumns()
    {
        $columns = array();
        $attributes = $this->_getAttributes();
        foreach ($attributes as $attribute) {
            if ($attribute['backend_type'] == 'static') {
                continue;
            }
            $columns[$attribute['attribute_code']] = array();
            switch ($attribute['backend_type']) {
                case 'varchar':
                    $columns[$attribute['attribute_code']] = array(
                        'type' => 'varchar(255)',
                        'is_unsigned' => null,
                        'is_null' => false,
                        'default' => ''
                    );
                    break;
                case 'int':
                    $columns[$attribute['attribute_code']] = array(
                        'type' => 'int(10)',
                        'is_unsigned' => null,
                        'is_null' => false,
                        'default' => '0'
                    );
                    break;
                case 'text':
                    $columns[$attribute['attribute_code']] = array(
                        'type' => 'text',
                        'is_unsigned' => null,
                        'is_null' => true,
                        'default' => null
                    );
                    break;
                case 'datetime':
                    $columns[$attribute['attribute_code']] = array(
                        'type' => 'datetime',
                        'is_unsigned' => null,
                        'is_null' => false,
                        'default' => '0000-00-00 00:00:00'
                    );
                    break;
                case 'decimal':
                    $columns[$attribute['attribute_code']] = array(
                        'type' => 'decimal(12,4)',
                        'is_unsigned' => null,
                        'is_null' => false,
                        'default' => '0.0000'
                    );
                    break;
            }
        }
        return $columns;
    }

    /**
     * Return array of attribute codes for entity type 'catalog_category'
     *
     * @return array
     */
    protected function _getAttributes()
    {
        if ($this->_attributeCodes === null) {
            $select = $this->_getWriteAdapter()->select()
                ->from($this->getTable('eav/entity_type'), array())
                ->join(
                    $this->getTable('eav/attribute'),
                    $this->getTable('eav/attribute').'.entity_type_id = '.$this->getTable('eav/entity_type').'.entity_type_id',
                    $this->getTable('eav/attribute').'.*'
                )
                ->where($this->getTable('eav/entity_type').'.entity_type_code=?', 'catalog_category');
            $this->_attributeCodes = array();
            foreach ($this->_getWriteAdapter()->fetchAll($select) as $attribute) {
                $this->_attributeCodes[$attribute['attribute_id']] = $attribute;
            }
        }
        return $this->_attributeCodes;
    }

    /**
     * Return attribute values for given entities and store
     *
     * @param array $entityIds
     * @param integer $store_id
     * @return array
     */
    protected function _getAttributeValues($entityIds, $store_id)
    {
        if (!is_array($entityIds)) {
            $entityIds = array($entityIds);
        }
        $values = array();

        foreach ($entityIds as $entityId) {
            $values[$entityId] = array();
        }
        $attributes = $this->_getAttributes();
        $attributesType = array(
            'varchar',
            'int',
            'decimal',
            'text',
            'datetime'
        );
        foreach ($attributesType as $type) {
            foreach ($this->_getAttributeTypeValues($type, $entityIds, $store_id) as $row) {
                $values[$row['entity_id']][$attributes[$row['attribute_id']]['attribute_code']] = $row['value'];
            }
        }
        return $values;
    }

    /**
     * Return attribute values for given entities and store of specific attribute type
     *
     * @param string $type
     * @param array $entityIds
     * @param integer $store_id
     * @return array
     */
    protected function _getAttributeTypeValues($type, $entityIds, $store_id)
    {
        $select = $this->_getWriteAdapter()->select()
            ->from(array('default' => $this->getTable('catalog/category') . '_' . $type), array('entity_id', 'attribute_id'))
            ->joinLeft(
                array('store' => $this->getTable('catalog/category') . '_' . $type),
                '`store`.entity_id = `default`.entity_id AND `store`.attribute_id = `default`.attribute_id AND `store`.store_id = ' . $store_id,
                array('value' => new Zend_Db_Expr('IF(`store`.`value_id`>0, `store`.`value`, `default`.`value`)'))
            )
            ->where('`default`.entity_id IN (?)', $entityIds)
            ->where('`default`.store_id = ?', 0);
        return $this->_getWriteAdapter()->fetchAll($select);
    }

    /**
     * Delete store table(s) of given stores;
     *
     * @param array|integer $stores
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function deleteStores($stores)
    {
        $this->_deleteTable($stores);
        return $this;
    }

    /**
     * Delete table(s) of given stores.
     *
     * @param array|integer $stores
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    protected function _deleteTable($stores)
    {
        if (!is_array($stores)) {
            $stores = array($stores);
        }
        foreach ($stores as $store) {
            $_tableExist = $this->_getWriteAdapter()->query(
                "DROP TABLE IF EXISTS `{$this->getMainStoreTable($store)}`"
            );
        }
        return $this;
    }

    /**
     * Synchronize flat data with eav model for category
     *
     * @param Varien_Object $category
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    protected function _synchronize($category)
    {
        $table = $this->getMainStoreTable($category->getStoreId());
        $data  = $this->_prepareDataForAllFields($category);
        $this->_getWriteAdapter()->insertOnDuplicate($table, $data);
        return $this;
    }

    /**
     * Synchronize flat data with eav model.
     *
     * @param Mage_Catalog_Model_Category|int $category
     * @param array $storeIds
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function synchronize($category = null, $storeIds = array())
    {
        if (is_null($category)) {
            if (empty($storeIds)) {
                $storeIds = null;
            }
            $stores = $this->getStoresRootCategories($storeIds);

            $storesObjects = array();
            foreach ($stores as $storeId => $rootCategoryId) {
                $_store = new Varien_Object(array(
                    'store_id'          => $storeId,
                    'root_category_id'  => $rootCategoryId
                ));
                $_store->setIdFieldName('store_id');
                $storesObjects[] = $_store;
            }

            $this->rebuild($storesObjects);
        } else if ($category instanceof Mage_Catalog_Model_Category) {
            $categoryId = $category->getId();
            foreach ($category->getStoreIds() as $storeId) {
                if ($storeId == 0) {
                    continue;
                }

                $attributeValues = $this->_getAttributeValues($categoryId, $storeId);
                $data = new Varien_Object($category->getData());
                $data->addData($attributeValues[$categoryId])
                    ->setStoreId($storeId);
                $this->_synchronize($data);
            }
        } else if (is_numeric($category)) {
            $write  = $this->_getWriteAdapter();
            $select = $write->select()
                ->from($this->getTable('catalog/category'))
                ->where('entity_id=?', $category);
            $row    = $write->fetchRow($select);
            if (!$row) {
                return $this;
            }

            $stores = $this->getStoresRootCategories();
            $path   = explode('/', $row['path']);
            foreach ($stores as $storeId => $rootCategoryId) {
                if (in_array($rootCategoryId, $path)) {
                    $attributeValues = $this->_getAttributeValues($category, $storeId);
                    $data = new Varien_Object($row);
                    $data->addData($attributeValues[$category])
                        ->setStoreId($storeId);
                    $this->_synchronize($data);
                } else {
                    $where = $write->quoteInto('entity_id=?', $category);
                    $write->delete($this->getMainStoreTable($storeId), $where);
                }
            }
        }

        return $this;
    }

    public function removeStores($stores)
    {
        $this->_deleteTable($stores);
        return $this;
    }

    /**
     * Synchronize flat category data after move by affected category ids
     *
     * @param array $affectedCategoryIds
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function move(array $affectedCategoryIds)
    {
        $write  = $this->_getWriteAdapter();
        $select = $write->select()
            ->from($this->getTable('catalog/category'), array('entity_id', 'path'))
            ->where('entity_id IN(?)', $affectedCategoryIds);
        $pairs  = $write->fetchPairs($select);

        $pathCond  = array($write->quoteInto('entity_id IN(?)', $affectedCategoryIds));
        $parentIds = array();

        foreach ($pairs as $path) {
            $pathCond[] = $write->quoteInto('path LIKE ?', $path . '/%');
            $parentIds  = array_merge($parentIds, explode('/', $path));
        }

        $stores = $this->getStoresRootCategories();
        $where  = join(' OR ', $pathCond);
        $lastId = 0;
        while (true) {
            $select = $write->select()
                ->from($this->getTable('catalog/category'))
                ->where('entity_id>?', $lastId)
                ->where($where)
                ->order('entity_id')
                ->limit(500);
            $rowSet = $write->fetchAll($select);

            if (!$rowSet) {
                break;
            }

            $addStores = array();
            $remStores = array();

            foreach ($rowSet as &$row) {
                $lastId = $row['entity_id'];
                $path = explode('/', $row['path']);
                foreach ($stores as $storeId => $rootCategoryId) {
                    if (in_array($rootCategoryId, $path)) {
                        $addStores[$storeId][$row['entity_id']] = $row;
                    } else {
                        $remStores[$storeId][] = $row['entity_id'];
                    }
                }
            }

            // remove
            foreach ($remStores as $storeId => $categoryIds) {
                $where = $write->quoteInto('entity_id IN(?)', $categoryIds);
                $write->delete($this->getMainStoreTable($storeId), $where);
            }

            // add/update
            foreach ($addStores as $storeId => $storeCategoryIds) {
                $attributeValues = $this->_getAttributeValues(array_keys($storeCategoryIds), $storeId);
                foreach ($storeCategoryIds as $row) {
                    $data = new Varien_Object($row);
                    $data->addData($attributeValues[$row['entity_id']])
                        ->setStoreId($storeId);
                    $this->_synchronize($data);
                }
            }
        }

        return $this;
    }

    /**
     * Synchronize flat data with eav after moving category
     *
     * @param integer $categoryId
     * @param integer $prevParentId
     * @param integer $parentId
     * @return Mage_Catalog_Model_Resource_Eav_Mysql4_Category_Flat
     */
    public function moveold($categoryId, $prevParentId, $parentId)
    {
        $_staticFields = array(
            'parent_id',
            'path',
            'level',
            'position',
            'children_count',
            'updated_at'
        );
        $prevParent = Mage::getModel('catalog/category')->load($prevParentId);
        $parent = Mage::getModel('catalog/category')->load($parentId);
        if ($prevParent->getStore()->getWebsiteId() != $parent->getStore()->getWebsiteId()) {
            foreach ($prevParent->getStoreIds() as $storeId) {
                $this->_getWriteAdapter()->delete(
                    $this->getMainStoreTable($storeId),
                    $this->_getWriteAdapter()->quoteInto('entity_id = ?', $categoryId)
                );
            }
            $categoryPath = $this->_getWriteAdapter()->fetchOne("
                SELECT
                    path
                FROM
                    {$this->getTable('catalog/category')}
                WHERE
                    entity_id = '$categoryId'
            ");
            $select = $this->_getWriteAdapter()->select()
                ->from($this->getTable('catalog/category'), 'entity_id')
                ->where('path LIKE ?', "$categoryPath/%")
                ->orWhere('path = ?', $categoryPath);
            $_categories = $this->_getWriteAdapter()->fetchAll($select);
            foreach ($_categories as $_category) {
                foreach ($parent->getStoreIds() as $storeId) {
                    $_tmpCategory = Mage::getModel('catalog/category')
                        ->setStoreId($storeId)
                        ->load($_category['entity_id']);
                    $this->_synchronize($_tmpCategory);
                }
            }
        } else {
            foreach ($parent->getStoreIds() as $store) {
                $update = "UPDATE {$this->getMainStoreTable($store)}, {$this->getTable('catalog/category')} SET";
                foreach ($_staticFields as $field) {
                    $update .= " {$this->getMainStoreTable($store)}.".$field."={$this->getTable('catalog/category')}.".$field.",";
                }
                $update = substr($update, 0, -1);
                $update .= " WHERE {$this->getMainStoreTable($store)}.entity_id = {$this->getTable('catalog/category')}.entity_id AND " .
                    "({$this->getTable('catalog/category')}.path like '{$parent->getPath()}/%' OR " .
                    "{$this->getTable('catalog/category')}.path like '{$prevParent->getPath()}/%')";
                $this->_getWriteAdapter()->query($update);
            }
        }
        $prevParent = null;
        $parent = null;
        $_tmpCategory = null;
//        $this->_move($categoryId, $prevParentPath, $parentPath);
        return $this;
    }

    /**
     * Prepare array of category data to insert or update.
     *
     * array(
     *  'field_name' => 'value'
     * )
     *
     * @param Mage_Catalog_Model_Category $category
     * @param array $replaceFields
     * @return array
     */
    protected function _prepareDataForAllFields($category, $replaceFields = array())
    {
        $table = $this->getMainStoreTable($category->getStoreId());
        $this->_getWriteAdapter()->resetDdlCache($table);
        $table = $this->_getWriteAdapter()->describeTable($table);
        $data = array();
        foreach ($table as $column=>$columnData) {
            if (null !== $category->getData($column)) {
                if (key_exists($column, $replaceFields)) {
                    $value = $category->getData($replaceFields[$column]);
                } else {
                    $value = $category->getData($column);
                }
                if (is_array($value)) {
                    $value = implode(',', $value);
                }
                $data[$column] = $value;
            }
        }
        return $data;
    }

    /**
     * Get count of active/not active children categories
     *
     * @param   Mage_Catalog_Model_Category $category
     * @param   bool $isActiveFlag
     * @return  integer
     */
    public function getChildrenAmount($category, $isActiveFlag = true)
    {
        $_table = $this->getMainStoreTable($category->getStoreId());
        $select = $this->_getReadAdapter()->select()
            ->from($_table, "COUNT({$_table}.entity_id)")
            ->where("{$_table}.path LIKE ?", $category->getPath() . '/%')
            ->where("{$_table}.is_active = ?", (int) $isActiveFlag);
        return (int) $this->_getReadAdapter()->fetchOne($select);
    }

    /**
     * Get products count in category
     *
     * @param Mage_Catalog_Model_Category $category
     * @return integer
     */
    public function getProductCount($category)
    {
        $select =  $this->_getReadAdapter()->select()
            ->from($this->getTable('catalog/category_product'), "COUNT({$this->getTable('catalog/category_product')}.product_id)")
            ->where("{$this->getTable('catalog/category_product')}.category_id = ?", $category->getId())
            ->group("{$this->getTable('catalog/category_product')}.category_id");
        return (int) $this->_getReadAdapter()->fetchOne($select);
    }

    /**
     * Return parent categories of category
     *
     * @param Mage_Catalog_Model_Category $category
     * @return array
     */
    public function getParentCategories($category, $isActive = true)
    {
        $categories = array();
        $select = $this->_getReadAdapter()->select()
            ->from(array('main_table' => $this->getMainStoreTable($category->getStoreId())), array('main_table.entity_id', 'main_table.name'))
            ->joinLeft(
                array('url_rewrite'=>$this->getTable('core/url_rewrite')),
                'url_rewrite.category_id=main_table.entity_id AND url_rewrite.is_system=1 AND url_rewrite.product_id IS NULL AND url_rewrite.store_id="'.$category->getStoreId().'" AND url_rewrite.id_path LIKE "category/%"',
                array('request_path' => 'url_rewrite.request_path'))
            ->where('main_table.entity_id IN (?)', array_reverse(explode(',', $category->getPathInStore())));
        if ($isActive) {
            $select->where('main_table.is_active = ?', '1');
        }
        $select->order('main_table.path ASC');
        $result = $this->_getReadAdapter()->fetchAll($select);
        foreach ($result as $row) {
            $row['id'] = $row['entity_id'];
            $categories[$row['entity_id']] = Mage::getModel('catalog/category')->setData($row);
        }
        return $categories;
    }

    /**
     * Return children categories of category
     *
     * @param Mage_Catalog_Model_Category $category
     * @return array
     */
    public function getChildrenCategories($category)
    {
//        $node = $this->getNodeById($category->getId());
//        if ($node && $node->getChildrenNodes()) {
//            return $node->getChildrenNodes();
//        }
        $categories = $this->_loadNodes($category, 1, $category->getStoreId());
        return $categories;
    }

    /**
     * Check is category in list of store categories
     *
     * @param Mage_Catalog_Model_Category $category
     * @return boolean
     */
    public function isInRootCategoryList($category)
    {
        $innerSelect = $this->_getReadAdapter()->select()
            ->from($this->getMainStoreTable($category->getStoreId()), new Zend_Db_Expr("CONCAT(path, '/%')"))
            ->where('entity_id = ?', Mage::app()->getStore()->getRootCategoryId());
        $select = $this->_getReadAdapter()->select()
            ->from($this->getMainStoreTable($category->getStoreId()), 'entity_id')
            ->where('entity_id = ?', $category->getId())
            ->where(new Zend_Db_Expr("path LIKE ({$innerSelect->__toString()})"));
        return (bool) $this->_getReadAdapter()->fetchOne($select);
    }

    /**
     * Return children ids of category
     *
     * @param Mage_Catalog_Model_Category $category
     * @param integer $level
     * @return array
     */
    public function getChildren($category, $recursive = true, $isActive = true)
    {
        $select = $this->_getReadAdapter()->select()
            ->from($this->getMainStoreTable($category->getStoreId()), 'entity_id')
            ->where('path LIKE ?', "{$category->getPath()}/%");
        if (!$recursive) {
            $select->where('level <= ?', $category->getLevel() + 1);
        }
        if ($isActive) {
            $select->where('is_active = ?', '1');
        }
        $_categories = $this->_getReadAdapter()->fetchAll($select);
        $categoriesIds = array();
        foreach ($_categories as $_category) {
            $categoriesIds[] = $_category['entity_id'];
        }
        return $categoriesIds;
    }

    /**
     * Return all children ids of category (with category id)
     *
     * @param Mage_Catalog_Model_Category $category
     * @return array
     */
    public function getAllChildren($category)
    {
        $categoriesIds = $this->getChildren($category);
        $myId = array($category->getId());
        $categoriesIds = array_merge($myId, $categoriesIds);

        return $categoriesIds;
    }

/**
     * Check if category id exist
     *
     * @param   int $id
     * @return  bool
     */
    public function checkId($id)
    {
        $select = $this->_getReadAdapter()->select()
            ->from($this->getMainStoreTable($this->getStoreId()), 'entity_id')
            ->where('entity_id=?', $id);
        return $this->_getReadAdapter()->fetchOne($select);
    }

    /**
     * Get design update data of parent categories
     *
     * @param Mage_Catalog_Model_Category $category
     * @return array
     */
    public function getDesignUpdateData($category)
    {
        $categories = array();
        $pathIds = array();
        foreach (array_reverse($category->getParentIds()) as $pathId) {
            if ($pathId == Mage::app()->getStore()->getRootCategoryId()) {
                $pathIds[] = $pathId;
                break;
            }
            $pathIds[] = $pathId;
        }
        $select = $this->_getReadAdapter()->select()
            ->from(
                array('main_table' => $this->getMainStoreTable($category->getStoreId())),
                array(
                    'main_table.entity_id',
                    'main_table.custom_design',
                    'main_table.custom_design_apply',
                    'main_table.custom_design_from',
                    'main_table.custom_design_to',
                )
            )
            ->where('main_table.entity_id IN (?)', $pathIds)
            ->where('main_table.is_active = ?', '1')
            ->order('main_table.path DESC');
        $result = $this->_getReadAdapter()->fetchAll($select);
        foreach ($result as $row) {
            $row['id'] = $row['entity_id'];
            $categories[$row['entity_id']] = Mage::getModel('catalog/category')->setData($row);
        }
        return $categories;
    }

    /**
     * Retrieve anchors above
     *
     * @param array $filterIds
     * @param int $storeId
     * @return array
     */
    public function getAnchorsAbove(array $filterIds, $storeId = 0)
    {
        $select = $this->_getReadAdapter()->select()
            ->from(array('e' => $this->getMainStoreTable($storeId)), 'entity_id')
            ->where('is_anchor = ?', 1)
            ->where('entity_id IN (?)', $filterIds);

        return $this->_getReadAdapter()->fetchCol($select);
    }

    /**
     * Retrieve array with root category id per store
     *
     * @param int|array $storeIds   result limitation
     * @return array
     */
    public function getStoresRootCategories($storeIds = null)
    {
        if (is_null($this->_storesRootCategories)) {
            $select = $this->_getWriteAdapter()->select()
                ->from(array('cs' => $this->getTable('core/store')), array('store_id'))
                ->join(
                    array('csg' => $this->getTable('core/store_group')),
                    'csg.group_id = cs.group_id',
                    array('root_category_id'))
                ->where('cs.store_id <> ?', 0);
            $this->_storesRootCategories = $this->_getWriteAdapter()->fetchPairs($select);
        }

        if (!is_null($storeIds)) {
            if (!is_array($storeIds)) {
                $storeIds = array($storeIds);
            }

            $stores = array();
            foreach ($this->_storesRootCategories as $storeId => $rootId) {
                if (in_array($storeId, $storeIds)) {
                    $stores[$storeId] = $rootId;
                }
            }
            return $stores;
        }

        return $this->_storesRootCategories;
    }
}

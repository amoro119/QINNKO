<?php

class Xtunes_Product_Block_Siblings extends Mage_Catalog_Block_Product_Abstract
{

	    protected $_columnCount = 4;

	    protected $_items;

	    protected $_itemCollection;

	    protected $_itemLimits = array();
	

	    protected function _prepareData()
	    {
	        
	
			$product = Mage::registry('product');
	        /* @var $product Mage_Catalog_Model_Product */

	       	$storeId    = Mage::app()->getStore()->getId();
			$category	= Mage::getModel('catalog/category')->load($product->getCategoryId());
			// Mage::log("use siblings block! store:$storeId,category:".$category->getId());

	        $this->_itemCollection   = $product->setStoreId($storeId)
				->getCollection()
				->addCategoryFilter($category)
				->addIdFilter($product->getId(),true)
	            ->addAttributeToSort('position', 'asc')
	            ->addStoreFilter()
	        ;
			

			// Mage::log("use siblings block! store:$storeId,category:".$category->getId());

		        $this->_addProductAttributesAndPrices($this->_itemCollection);
		        Mage::getSingleton('catalog/product_visibility')->addVisibleInCatalogFilterToCollection($this->_itemCollection);
		        // if ($this->getItemLimit('upsell') > 0) {
		        //     $this->_itemCollection->setPageSize($this->getItemLimit('upsell'));
		        // }
		        $this->_itemCollection->load();

		        foreach ($this->_itemCollection as $product) {
		            $product->setDoNotUseCategoryId(true);
		        }

		        return $this;
	    }

	   protected function _beforeToHtml()
	    {
	        $this->_prepareData();
	        return parent::_beforeToHtml();
	    }

	    public function getItemCollection()
	    {
	        return $this->_itemCollection;
	    }

	    public function getItems()
	    {
	        if (is_null($this->_items)) {
	            $this->_items = $this->getItemCollection()->getItems();
	        }
	        return $this->_items;
	    }

	    public function getRowCount()
	    {
	        return ceil(count($this->getItemCollection()->getItems())/$this->getColumnCount());
	    }

	    public function setColumnCount($columns)
	    {
	        if (intval($columns) > 0) {
	            $this->_columnCount = intval($columns);
	        }
	        return $this;
	    }

	    public function getColumnCount()
	    {
	        return $this->_columnCount;
	    }

	    public function resetItemsIterator()
	    {
	        $this->getItems();
	        reset($this->_items);
	    }

	    public function getIterableItem()
	    {
	        $item = current($this->_items);
	        next($this->_items);
	        return $item;
	    }


	    public function setItemLimit($type, $limit)
	    {
	        if (intval($limit) > 0) {
	            $this->_itemLimits[$type] = intval($limit);
	        }
	        return $this;
	    }

	    public function getItemLimit($type = '')
	    {
	        if ($type == '') {
	            return $this->_itemLimits;
	        }
	        if (isset($this->_itemLimits[$type])) {
	            return $this->_itemLimits[$type];
	        }
	        else {
	            return 0;
	        }
	    }
}
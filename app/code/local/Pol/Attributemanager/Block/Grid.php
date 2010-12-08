<?php

class Pol_Attributemanager_Block_Grid  extends Mage_Adminhtml_Block_Widget_Grid
{
  public function __construct()
  {
      parent::__construct();
      
      $this->setId('attributemanagergrid');
      $this->setDefaultSort('attribute_code');
      $this->setDefaultDir('ASC');
      $this->setSaveParametersInSession(true);
      $this->setTemplate('attributemanager/grid.phtml');
  }

  protected function _prepareCollection()
  {
      $sUrl=$this->getUrl('*/*/*', array('_current'=>true));
      $pos = strpos($sUrl,'/attributemanager/index/');
      $pos2 = $pos + strlen('/attributemanager/index/');
      $pos3 = strpos($sUrl, '/', $pos2);
      $type = substr($sUrl, $pos2, $pos3-$pos2);

      /*if (false!==strpos($sUrl,'customer')){
      		$type='customer';
      }elseif (false!==strpos($sUrl,'address')){
      		$type='customer_address';
      }elseif (false!==strpos($sUrl,'category')){
      		$type='catalog_category';
      }elseif (false!==strpos($sUrl,'order')){
      		$type='order';
      }elseif (false!==strpos($sUrl,'invoice')){
      		$type='invoice';
      }else{
      		$type="catalog_category";
      }*/
      $this->type=$type;
      $collection = Mage::getResourceModel('eav/entity_attribute_collection')
            ->setEntityTypeFilter( Mage::getModel('eav/entity')->setType($type)->getTypeId() )
            // *** ->addVisibleFilter()
            ;
      
      $this->setCollection($collection);
      return parent::_prepareCollection();
      
  }

  protected function _prepareColumns()
  {
      $this->addColumn('attribute_code', array(
            'header'=>Mage::helper('catalog')->__('Attribute Code'),
            'sortable'=>true,
            'index'=>'attribute_code'
        ));

        $this->addColumn('frontend_label', array(
            'header'=>Mage::helper('catalog')->__('Attribute Label'),
            'sortable'=>true,
            'index'=>'frontend_label'
        ));

      	$this->addColumn('sort_order', array(
            'header'=>Mage::helper('catalog')->__('Sort Order'),
            'sortable'=>true,
            'index'=>'sort_order'
        ));

        $this->addColumn('is_visible', array(
            'header'=>Mage::helper('catalog')->__('Visible'),
            'sortable'=>true,
            'index'=>'is_visible_on_front',
            'type' => 'options',
            'options' => array(
                '1' => Mage::helper('catalog')->__('Yes'),
                '0' => Mage::helper('catalog')->__('No'),
            ),
            'align' => 'center',
        ));

        $this->addColumn('is_global', array(
            'header'=>Mage::helper('catalog')->__('Scope'),
            'sortable'=>true,
            'index'=>'is_global',
            'type' => 'options',
            'options' => array(
                Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE =>Mage::helper('catalog')->__('Store View'),
                Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_WEBSITE =>Mage::helper('catalog')->__('Website'),
                Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL =>Mage::helper('catalog')->__('Global'),
            ),
            'align' => 'center',
        ));

        $this->addColumn('is_required', array(
            'header'=>Mage::helper('catalog')->__('Required'),
            'sortable'=>true,
            'index'=>'is_required',
            'type' => 'options',
            'options' => array(
                '1' => Mage::helper('catalog')->__('Yes'),
                '0' => Mage::helper('catalog')->__('No'),
            ),
            'align' => 'center',
        ));

        $this->addColumn('is_user_defined', array(
            'header'=>Mage::helper('catalog')->__('System'),
            'sortable'=>true,
            'index'=>'is_user_defined',
            'type' => 'options',
            'align' => 'center',
            'options' => array(
                '0' => Mage::helper('catalog')->__('Yes'),   // intended reverted use
                '1' => Mage::helper('catalog')->__('No'),    // intended reverted use
            ),
        ));

        $this->addColumn('is_searchable', array(
            'header'=>Mage::helper('catalog')->__('Searchable'),
            'sortable'=>true,
            'index'=>'is_searchable',
            'type' => 'options',
            'options' => array(
                '1' => Mage::helper('catalog')->__('Yes'),
                '0' => Mage::helper('catalog')->__('No'),
            ),
            'align' => 'center',
        ));

        $this->addColumn('is_filterable', array(
            'header'=>Mage::helper('catalog')->__('Use In Layered Navigation'),
            'sortable'=>true,
            'index'=>'is_filterable',
            'type' => 'options',
            'options' => array(
                '1' => Mage::helper('catalog')->__('Filterable (with results)'),
                '2' => Mage::helper('catalog')->__('Filterable (no results)'),
                '0' => Mage::helper('catalog')->__('No'),
            ),
            'align' => 'center',
        ));

        $this->addColumn('is_comparable', array(
            'header'=>Mage::helper('catalog')->__('Comparable'),
            'sortable'=>true,
            'index'=>'is_comparable',
            'type' => 'options',
            'options' => array(
                '1' => Mage::helper('catalog')->__('Yes'),
                '0' => Mage::helper('catalog')->__('No'),
            ),
            'align' => 'center',
        ));
		
		$this->addExportType('*/*/exportCsv', Mage::helper('attributemanager')->__('CSV'));
		$this->addExportType('*/*/exportXml', Mage::helper('attributemanager')->__('XML'));
	  
      return parent::_prepareColumns();
  }

  public function addNewButton(){
  	return $this->getButtonHtml(
  		Mage::helper('attributemanager')->__('New Attribute'), //label
  		"setLocation('".$this->getUrl('*/*/new', array('type' => $this->type,'attribute_id'=>0))."')", //url
  		"scalable add" //classe css
  		);
  }
  public function getRowUrl($row)
  {
      return $this->getUrl('*/*/edit', array('type' => $this->type,'attribute_id' => $row->getAttributeId()));
  }

}

?>
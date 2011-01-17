<?php

class Pol_Attributemanager_Block_Attributemanager  extends Mage_Adminhtml_Block_Template  {

	public function _prepareLayout()
    {
    	
		return parent::_prepareLayout();
    }
    
	public function _construct()
    {
        
    	parent::_construct();
        $this->setTemplate('attributemanager/index.phtml');// active le template
        $this->getAttributemanager();
    }
     public function getAttributemanager()
     {
        if (!$this->hasData('attributemanager/index')) {
            $this->setData('attributemanager/index', Mage::registry('attributemanager/index'));
        }
         
        return $this->getData('attributemanager/index');
       
        
    }

}

?>
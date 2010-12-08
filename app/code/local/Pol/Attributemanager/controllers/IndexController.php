<?php

class Pol_Attributemanager_IndexController extends Mage_Adminhtml_Controller_Action
{

	/*protected $_customerTypeId;
	protected $_categoryTypeId;
	protected $_customer_addressTypeId;*/
	protected $_type;

    public function preDispatch()
    {
        parent::preDispatch();
        /*$this->_customerTypeId = Mage::getModel('eav/entity')->setType('customer')->getTypeId();
        $this->_categoryTypeId = Mage::getModel('eav/entity')->setType('catalog_category')->getTypeId();
        $this->_customer_addressTypeId = Mage::getModel('eav/entity')->setType('customer_address')->getTypeId();
    	if ($this->getRequest ()->getParam ( 'type' )){
    		switch ($this->getRequest ()->getParam ( 'type' )) {
					case "catalog_category" :
						$this->_type = 'category';
						break;
					
					case "customer" :
						$this->_type = 'customer';
						break;
					
					case "customer_address" :
						$this->_type = 'address';
						break;
				}
    	}*/
    	$this->_type = $this->getRequest ()->getParam ( 'type' );
    }
    
	protected function _initAction($ids=null) {
		$this->loadLayout($ids);
		
		return $this;
	}
	
	public function __call($name, $arguments) {
		$this->_initAction()
			->_setActiveMenu('system/pol')
			->_addContent($this->getLayout()->createBlock('attributemanager/Grid'));
		$this->renderLayout();
	}
	
	
	public function indexAction()
	{
		$this->_initAction()
			->_setActiveMenu('system/pol')
			->_addContent($this->getLayout()->createBlock('attributemanager/attributemanager'))
		;
		$this->renderLayout();
		
	}
	
	/* public function categoryAction()
	{
		$this->_initAction()
			->_setActiveMenu('system/pol')
			->_addContent($this->getLayout()->createBlock('attributemanager/Grid'));
		$this->renderLayout();
	}
	
	public function customerAction()
	{
		$this->_initAction()
			->_setActiveMenu('system/pol')
			->_addContent($this->getLayout()->createBlock('attributemanager/Grid'));
		$this->renderLayout();
	}
	
	public function invoiceAction()
	{
		$this->_initAction()
			->_setActiveMenu('system/pol')
			->_addContent($this->getLayout()->createBlock('attributemanager/Grid'));
		$this->renderLayout();
	}
	
	public function orderAction()
	{
		$this->_initAction()
			->_setActiveMenu('system/pol')
			->_addContent($this->getLayout()->createBlock('attributemanager/Grid'));
		$this->renderLayout();
	}
	
	public function addressAction()
	{
		$this->_initAction()
			->_setActiveMenu('system/pol')
			->_addContent($this->getLayout()->createBlock('attributemanager/Grid'));
		$this->renderLayout();
	} */
	
	public function editAction() {
		$id     = $this->getRequest()->getParam('attribute_id');
		$model  = Mage::getModel('eav/entity_attribute');
		$model->load($id);
		if($id!=0){
			$db = Mage::getSingleton('core/resource')->getConnection('core_write');
			$table = $tableName = Mage::getSingleton('core/resource')->getTableName('eav_entity_attribute');
			$model->setData("sort_order",$db->fetchOne("select sort_order from ".$table." where attribute_id=$id"));
		}
		

		if ($model->getId() || $id == 0) {
			$data = Mage::getSingleton('adminhtml/session')->getFormData(true);
			if (!empty($data)) {
				$model->setData($data);
			}

			Mage::register('attributemanager_data', $model);

			$this->loadLayout();
			$this->_setActiveMenu('system/pol');

			$this->_addBreadcrumb(Mage::helper('adminhtml')->__('Item Manager'), Mage::helper('adminhtml')->__('Item Manager'));
			$this->_addBreadcrumb(Mage::helper('adminhtml')->__('Item News'), Mage::helper('adminhtml')->__('Item News'));

			$this->getLayout()->getBlock('head')->setCanLoadExtJs(true);

			$this
				->_addContent($this->getLayout()->createBlock('attributemanager/edit'))
				->_addLeft($this->getLayout()->createBlock('attributemanager/edit_tabs'))
				;

			$this->renderLayout();
		} else {
			Mage::getSingleton('adminhtml/session')->addError(Mage::helper('attributemanager')->__('Item does not exist'));
			$this->_redirect('*/*/');
		}
	}
 
	public function newAction() {
		$this->_forward('edit');
	}
	
	public function validateAction()
    {
        $response = new Varien_Object();
    	$response->setError(false);

        $attributeCode  = $this->getRequest()->getParam('type');
        $attributeId    = $this->getRequest()->getParam('attribute_id');
        /* switch ($attributeCode){
        	case "catalog_category":
        		$this->_entityTypeId=$this->_categoryTypeId;
        		break;
        
        	case "customer":
        		$this->_entityTypeId=$this->_customerTypeId;
        		break;
        
        	case "customer_address":
        		$this->_entityTypeId=$this->_customer_addressTypeId;
        		break;
        }*/
        $this->_entityTypeId = Mage::getModel('eav/entity')->setType($attributeCode)->getTypeId();
        $attribute = Mage::getModel('eav/entity_attribute')
            ->loadByCode($this->_entityTypeId, $attributeCode);

        if ($attribute->getId() && !$attributeId) {
            Mage::getSingleton('adminhtml/session')->addError(Mage::helper('catalog')->__('Attribute with the same code already exists'));
            $this->_initLayoutMessages('adminhtml/session');
            $response->setError(true);
            $response->setMessage($this->getLayout()->getMessagesBlock()->getGroupedHtml());
        }

        $this->getResponse()->setBody($response->toJson());
    }
 
	public function saveAction() {
		if ($data = $this->getRequest()->getPost()) {
			
			$model = Mage::getModel('attributemanager/attributemanager');
			$model->setData($data);
			if( $this->getRequest()->getParam('attribute_id') > 0 ) {
				
					$model->setId($this->getRequest()->getParam('attribute_id'));
			}
			
			try {
				
				if ($model->getCreatedTime == NULL || $model->getUpdateTime() == NULL) {
					$model->setCreatedTime(now())
						->setUpdateTime(now());
				} else {
					$model->setUpdateTime(now());
				}
				
				$model->save();
				$id=$model->getId();
				
				Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('attributemanager')->__('Item was successfully saved'));
				Mage::getSingleton('adminhtml/session')->setFormData(false);

				if ($this->getRequest()->getParam('back')) {
					$this->_redirect('*/*/edit', array('type'=>$this->getRequest()->getParam('type'), 'attribute_id' => $id));
					return;
				}
				
				$this->_redirect('*/*/'.$this->_type.'/filter//');
				return;
            } catch (Exception $e) {
                Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
                Mage::getSingleton('adminhtml/session')->setFormData($data);
                $this->_redirect('*/*/edit', array('type'=>$this->getRequest()->getParam('type'),'attribute_id' => $this->getRequest()->getParam('attribute_id')));
                return;
            }
        }
        Mage::getSingleton('adminhtml/session')->addError(Mage::helper('attributemanager')->__('Unable to find item to save'));
        $this->_redirect('*/*/'.$this->_type.'/filter//');
	}
 
	public function deleteAction() {
		if( $this->getRequest()->getParam('attribute_id') > 0 ) {
			try {
				$model = Mage::getModel('eav/entity_attribute');
				 
				$model->setId($this->getRequest()->getParam('attribute_id'))
					->delete();
					 
				Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('adminhtml')->__('Item was successfully deleted'));
				$this->_redirect('*/*/'.$this->_type.'/filter//');
			} catch (Exception $e) {
				Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
				$this->_redirect('*/*/edit', array('type'=>$this->getRequest()->getParam('type'),'attribute_id' => $this->getRequest()->getParam('attribute_id')));
			}
		}
		$this->_redirect('*/*/'.$this->_type.'/filter//');
	}

    public function massDeleteAction() {
        $categoriesattributesIds = $this->getRequest()->getParam('attributemanager');
        if(!is_array($categoriesattributesIds)) {
			Mage::getSingleton('adminhtml/session')->addError(Mage::helper('adminhtml')->__('Please select item(s)'));
        } else {
            try {
                foreach ($categoriesattributesIds as $categoriesattributesId) {
                    $categoriesattributes = Mage::getModel('eav/entity_attribute')->load($categoriesattributesId);
                    $categoriesattributes->delete();
                }
                Mage::getSingleton('adminhtml/session')->addSuccess(
                    Mage::helper('adminhtml')->__(
                        'Total of %d record(s) were successfully deleted', count($categoriesattributesIds)
                    )
                );
            } catch (Exception $e) {
                Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
            }
        }
        $this->_redirect('*/*/'.$this->_type.'/filter//');
    }
	
    public function massStatusAction()
    {
//        $categoriesattributesIds = $this->getRequest()->getParam('attributemanager');
//        if(!is_array($categoriesattributesIds)) {
//            Mage::getSingleton('adminhtml/session')->addError($this->__('Please select item(s)'));
//        } else {
//            try {
//                foreach ($categoriesattributesIds as $categoriesattributesId) {
//                    $categoriesattributes = Mage::getSingleton('categoriesattributes/categoriesattributes')
//                        ->load($categoriesattributesId)
//                        ->setStatus($this->getRequest()->getParam('status'))
//                        ->setIsMassupdate(true)
//                        ->save();
//                }
//                $this->_getSession()->addSuccess(
//                    $this->__('Total of %d record(s) were successfully updated', count($categoriesattributesIds))
//                );
//            } catch (Exception $e) {
//                $this->_getSession()->addError($e->getMessage());
//            }
//        }
//        $this->_redirect('*/*/index');
    }
  
    public function exportCsvAction()
    {
        $fileName   = $this->_type.'attributes.csv';
        $content    = $this->getLayout()->createBlock('attributemanager/grid')
            ->getCsv();

        $this->_sendUploadResponse($fileName, $content);
    }

    public function exportXmlAction()
    {
        $fileName   = $this->_type.'attributes.xml';
        $content    = $this->getLayout()->createBlock('attributemanager/grid')
            ->getXml();

        $this->_sendUploadResponse($fileName, $content);
    }

    protected function _sendUploadResponse($fileName, $content, $contentType='application/octet-stream')
    {
        $response = $this->getResponse();
        $response->setHeader('HTTP/1.1 200 OK','');
        $response->setHeader('Pragma', 'public', true);
        $response->setHeader('Cache-Control', 'must-revalidate, post-check=0, pre-check=0', true);
        $response->setHeader('Content-Disposition', 'attachment; filename='.$fileName);
        $response->setHeader('Last-Modified', date('r'));
        $response->setHeader('Accept-Ranges', 'bytes');
        $response->setHeader('Content-Length', strlen($content));
        $response->setHeader('Content-type', $contentType);
        $response->setBody($content);
        $response->sendResponse();
        die;
    }
}

?>
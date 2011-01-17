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
 * @copyright   Copyright (c) 2009 Irubin Consulting Inc. DBA Varien (http://www.varien.com)
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

/**
 * Grouped product type implementation
 *
 * @category   Mage
 * @package    Mage_Catalog
 * @author      Magento Core Team <core@magentocommerce.com>
 */
class Brim_Catalog_Model_Product_Type_Grouped extends Mage_Catalog_Model_Product_Type_Grouped
{

	/**
	 * Removes required option filter
	 */
	public function getAssociatedProducts($product = null)
	{
		if (!$this->getProduct($product)->hasData($this->_keyAssociatedProducts)) {
			$associatedProducts = array();

			if (!Mage::app()->getStore()->isAdmin()) {
				$this->setSaleableStatus($product);
			}

			$collection = $this->getAssociatedProductCollection($product)
			->addAttributeToSelect('*')
			->setPositionOrder()
			->addStoreFilter($this->getStoreFilter($product))
			->addAttributeToFilter('status', array('in' => $this->getStatusFilters($product)));

			foreach ($collection as $product) {
				$associatedProducts[] = Mage::getModel('catalog/product')->load($product->getID());
			}

			$this->getProduct($product)->setData($this->_keyAssociatedProducts, $associatedProducts);
		}
		return $this->getProduct($product)->getData($this->_keyAssociatedProducts);
	}


    /**
     * Initialize product(s) for add to cart process
     *
     * @param   Varien_Object $buyRequest
     * @param Mage_Catalog_Model_Product $product
     * @return  array || string || false
     */
    public function prepareForCart(Varien_Object $buyRequest, $product = null)
    {
        $product = $this->getProduct($product);
        $productsInfo = $buyRequest->getSuperGroup();
		$productsOptions = $buyRequest->getSuperOptions();
        if (!empty($productsInfo) && is_array($productsInfo)) {
            $products = array();
            $associatedProducts = $this->getAssociatedProducts($product);
            if ($associatedProducts) {
                foreach ($associatedProducts as $subProduct) {
                    if(isset($productsInfo[$subProduct->getId()])) {
                        $qty = $productsInfo[$subProduct->getId()];
                        if (!empty($qty) && is_numeric($qty)) {
							
							//Tinycarts_Debug_Firephp::send(Mage::getModel('catalog/product')->load('168')->debug());
							//Tinycarts_Debug_Firephp::send("aaaaaaa");
							// Mage::helper(‘inchoo_developer’)->debug($subProduct);
							
							if(isset($productsOptions[$subProduct->getId()])){
								$buyRequest->setData("options",$productsOptions[$subProduct->getId()]);	
							}
							else
							{
								$buyRequest->setData("options",null);
							}
							

                            $_result = $subProduct->getTypeInstance(true)
                                ->prepareForCart($buyRequest, $subProduct);
							
                            if (is_string($_result) && !is_array($_result)) {
                                return $_result;
                            }
                            if (!isset($_result[0])) {
                                return Mage::helper('checkout')->__('Cannot add the item to shopping cart.');
                            }

                            $_result[0]->setCartQty($qty);
                            $_result[0]->addCustomOption('product_type', self::TYPE_CODE, $product);
                            $_result[0]->addCustomOption('info_buyRequest',
                                serialize(array(
                                    'super_product_config' => array(
                                        'product_type'  => self::TYPE_CODE,
                                        'product_id'    => $product->getId()
                                    )
                                ))
                            );
                            $products[] = $_result[0];
                        }
                    }
                }
            }
            if (count($products)) {
                return $products;
            }
        }
        return Mage::helper('catalog')->__('Please specify the quantity of product(s).');
    }
}

<?php

/**
 * Class Shopware_Plugins_Frontend_SwagBgTrans_Bootstrap
 *
 * @package Shopware\Plugins\Local\SwagBgTrans
 * @author Stefan Bofirov
 */
class Shopware_Plugins_Frontend_SwagBgTrans_Bootstrap extends Shopware_Components_Plugin_Bootstrap
{

    /**
     * Returns current plugin version
     *
     * @return string
     */
    public function getVersion()
    {
        return '0.0.2';
    }

    /**
     * Returns a nice name for plugin manager list
     *
     * @return string
     */
    public function getLabel()
    {
        return 'Bulgarian Translation';
    }

    /**
     * Returns plugin information for the plugin manager
     *
     * @return array
     */
    public function getInfo()
    {
        return array(
            'version' => $this->getVersion(),
            'label' => $this->getLabel(),
            'description' => $this->getDescription(),
        );
    }

    /**
     * Returns plugin description
     *
     * @return string
     */
    public function getDescription()
    {
        return 'Lorem ipsum';
    }

    /**
     * Install plugin method
     *
     * @return array|bool
     */
    public function install()
    {
        $this->importFrontendTranslations();
        $this->importBackendTranslations();
        $this->addBackendLanguage();

        return array('success' => true, 'invalidateCache' => array('backend', 'config', 'frontend'));
    }

    public function update()
    {
        if (version_compare($this->getVersion(), '0.0.2', '<=')) {
            $sql = file_get_contents($this->Path() . 'Snippets/frontend-0.0.2.sql');
            Shopware()->Db()->exec($sql);
        }

        return true;
    }

    public function uninstall()
    {
        // do not delete bulgarian snippets when remove plugin

//        $sql = "DELETE FROM `s_core_snippets` WHERE `localeID` = 30;";
//        Shopware()->Db()->exec($sql);

        return true;
    }

    public function importFrontendTranslations()
    {
        $sql = file_get_contents($this->Path() . 'Snippets/frontend.sql');
        Shopware()->Db()->exec($sql);
    }

    public function importBackendTranslations()
    {

    }

    public function addBackendLanguage()
    {
        $repository = Shopware()->Models()->getRepository('Shopware\Models\Config\Element');
        $element = $repository->findOneBy(array('name' => 'backendLocales'));

        if (count($element->getValues()) > 0) {
            $values = $element->getValues();
            $value = $values[0]->getValue();
            if (!in_array(30, $value)) {
                $value[] = 30;
                $values[0]->setValue($value);
                Shopware()->Models()->persist($values[0]);
            }
        } else {
            $value = new \Shopware\Models\Config\Value();
            $value->setElement($element);
            $shop = Shopware()->Models()->getRepository('Shopware\Models\Shop\Shop')->find(1);
            $value->setShop($shop);
            $value->setValue(array(1, 2, 30));

            Shopware()->Models()->persist($value);
        }

        Shopware()->Models()->flush();

    }
} 

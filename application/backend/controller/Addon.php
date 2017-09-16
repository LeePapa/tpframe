<?php
/**
 * @link http://www.tpframe.com/
 * @copyright Copyright (c) 2017 TPFrame Software LLC
 * @author 510974211@qq.com
 */

namespace app\backend\controller;
use tpfcore\Core;
/**
 * 插件控制器
 */
class Addon extends AdminBase
{

    /**
     * 执行插件控制器
     */
    public function execute($addon_name = null, $controller_name = null, $action_name = null)
    {

        $class_path = "\\".ADDON_DIR_NAME."\\".$addon_name."\controller\\".$controller_name;

        $controller = new $class_path();

        $controller->$action_name();
    }

    /**
     * 执行插件安装
     */
    public function addonInstall($name = null)
    {

        $strtolower_name = strtolower($name);

        $class_path = "\\".ADDON_DIR_NAME."\\".$strtolower_name."\\".$name;


        Core::loadModel($this->name)->executeSql($strtolower_name, 'install');

        $controller = new $class_path();

        list($status, $message) = $controller->addonInstall();

        $this->jump($status, $message);
    }

    /**
     * 执行插件卸载
     */
    public function addonUninstall($name = null)
    {

        $strtolower_name = strtolower($name);

        $class_path = "\\".ADDON_DIR_NAME."\\".$strtolower_name."\\".$name;

        Core::loadModel($this->name)->executeSql($strtolower_name, 'uninstall');

        $controller = new $class_path();

        list($status, $message) = $controller->addonUninstall();

        $this->jump($status, $message);
    }

    /**
     * 插件列表
     */
    public function addonList()
    {

        $this->setTitle('插件列表');

        return $this->fetch('addon_list',[
            "list"=>Core::loadModel($this->name)->getAddonList()
        ]);
    }

    /**
     * 钩子列表
     */
    public function hookList()
    {

        $this->setTitle('钩子列表');

        return $this->fetch('hook_list',[
            "list"=>Core::loadModel($this->name)->getHookList()
        ]);
    }
}

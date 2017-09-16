<?php
// +----------------------------------------------------------------------
// | Author: yaoyihong <510974211@qq.com>
// +----------------------------------------------------------------------
namespace app\backend\controller;
use \tpfcore\Core;
use \tpfcore\helpers\FileHelper;
use \think\Config;
class Setting extends AdminBase
{
    public function clear()
    {
    	$this->jump(Core::loadModel($this->name)->clearRuntime());
    }
    public function site(){
    	IS_POST && $this->jump(Core::loadModel($this->name)->editSetting($this->param));
    	return $this->fetch("site",[
    		'list'=>\tpfcore\helpers\Json::jsonValueToArray(Core::loadModel($this->name)->getSetting(['sign'=>'site_options'])->toArray()),
            'templetes'=>FileHelper::get_dir(config("default_themes_path"))
    	]);
    }
} 

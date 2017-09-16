<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:31:"./theme/backend/index\main.html";i:1499915023;}*/ ?>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<!-- Set render engine for 360 browser -->
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- HTML5 shim for IE8 support of HTML5 elements -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
			</script>
		<![endif]-->
		<link href="__THEMES__/css/theme.min.css" rel="stylesheet">
		<link href="__THEMES__/css/simplebootadmin.css" rel="stylesheet">
		<link href="__THEMES__/css/default.css" rel="stylesheet" />
		<link href="__THEMES__/css/font-awesome.min.css"
		rel="stylesheet" type="text/css">
		<style>
			.length_3{width: 180px;} form .input-order{margin-bottom: 0px;padding:3px;width:40px;}
			.table-actions{margin-top: 5px; margin-bottom: 5px;padding:0px;} .table-list{margin-bottom:
			0px;}
		</style>
		<!--[if IE 7]>
			<link rel="stylesheet" href="__THEMES__/css/font-awesome-ie7.min.css">
		<![endif]-->
		<script type="text/javascript">
			//全局变量
			var GV = {
				WEB_ROOT:"",
				DIMAUB: "/",
				JS_ROOT: "/theme/backend/assets/js/",
				TOKEN: ""
			};
		</script>
		<!-- Le javascript==================================================-
		-> <!-- Placed at the end of the document so the pages load faster -->
		<script src="__THEMES__/js/jquery.js"></script>
		<script src="__THEMES__/js/wind.js"></script>
		<script src="__THEMES__/js/bootstrap.min.js"></script>
		</script>
	</head>
	<body>
<div class="wrap">
		<div id="home_toptip"></div>
		<h4 class="well">系统通知</h4>
		<div class="home_info">
			<ul id="tpframe_notices">
				<li>暂时没有公告</li>
			</ul>
		</div>
		<h4 class="well">系统信息</h4>
		<div class="home_info">
			<ul>
				<?php if(is_array($server_info) || $server_info instanceof \think\Collection || $server_info instanceof \think\Paginator): $i = 0; $__LIST__ = $server_info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
					<li><em><?php echo $key; ?></em> <span><?php echo $vo; ?></span></li>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
		</div>
		<h4 class="well">开发团队</h4>
		<div class="home_info" id="home_devteam">
			<ul>
				<li><em>TPFrame</em> <a href="http://www.tpframe.com" target="_blank">www.tpframe.com</a></li>
				<li><em>核心开发者</em> <span>刘贤德，张飞，关羽，诸葛孔明，赵子龙</span></li>
				<li><em>团队成员</em> <span>刘贤德，张飞，关羽，诸葛孔明，赵子龙，大乔、小乔</span></li>
				<li><em>联系邮箱</em> <span>510974211@qq.com</span></li>
			</ul>
		</div>
	</div>
	<script src="__PUBLIC__/js/common.js"></script>
	<?php
		$lang_set=defined('LANG_SET')?LANG_SET:'';
		$tpframe_version=defined('THINKCMF_VERSION')?THINKCMF_VERSION:'';
	?>
</body>

</html>
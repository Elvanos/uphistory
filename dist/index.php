<?php 

global $params;
$params['path'] = getcwd();
$params['web_path'] = $_SERVER['SERVER_NAME'].'/uh/dist';

if (!isset($_GET['layout']))
	{
		$params['layout'] = 'homepage';
	}
	else
	{
		$params['layout'] = $_GET['layout'];
	};

include $params['path'].'/php/layout/layout.php';
?>


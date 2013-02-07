<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<title>{$site->title|default:'newznab'} - {$page->meta_title|default:$page->title}</title>
	<link href="{$smarty.const.WWW_TOP}/../templates/bootstrapped/styles/style.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="{$smarty.const.WWW_TOP}/../templates/bootstrapped/styles/admin.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="{$smarty.const.WWW_TOP}/../templates/bootstrapped/styles/bootstrap-responsive.min.css" rel="stylesheet">

	<link rel="shortcut icon" type="image/ico" href="{$smarty.const.WWW_TOP}/../templates/bootstrapped/images/favicon.ico"/>
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/../templates/bootstrapped/scripts/sorttable.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/../templates/bootstrapped/scripts/utils-admin.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/../templates/bootstrapped/scripts/jquery.multifile.js"></script>
	<script type="text/javascript">var WWW_TOP = "{$smarty.const.WWW_TOP}/..";</script>

	{$page->head}
</head>
<body>
<div class="wrap">

<!-- Navbar
================================================== -->
<div class="navbar navbar-fixed-top">
<div class="navbar-inner">
<div class="container">
<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</a>
<a class="brand" href="{$smarty.const.WWW_TOP}{$site->home_link}">{$site->title}</a>
<div class="nav-collapse collapse" id="adminnav">
<p class="navbar-text pull-right">
              Logged in as {$userdata.username}
            </p>
            <ul class="nav">
		<li><a title="Home" href="{$smarty.const.WWW_TOP}/..{$site->home_link}">Home</a></li>
		<li><a title="Admin Home" href="{$smarty.const.WWW_TOP}/">Admin Home</a></li>
		<li><a title="Edit Site" href="{$smarty.const.WWW_TOP}/site-edit.php">Edit Site</a></li>
            </ul>
</div>
</div>
</div>
</div>



	<div class="container" id="adminpage" style="margin-top: 60px;">
		<div class="row">
			<div class="span3">
						<div id="sidebar">
		{$admin_menu}
		</div>
		<!-- end #sidebar --></div>

		<div class="span9">
					<div id="content">
			{$page->content}
		</div>
		<!-- end #content --></div>

	<div id="logo" style="cursor: pointer;">
		<h1><a href="/"></a></h1>
		<p><em></em></p>
	</div>
	<hr />
	
	<div id="header">
		<div id="menu"> 
		</div> 
		<!-- end #menu --> 
	</div>
	
	<div id="page">

		<div id="adpanel">

		</div>




	
		<div style="clear: both;">&nbsp;</div>
			
	</div>
	<!-- end #page -->
<div id="push"></div>
</div>
</div>
</div>
	<div id="searchfooter">
		<center>
		</center>
	</div>
	
	<div id="footer">
	<p>
		{$site->footer}
		<br /><br /><br />Copyright &copy; {$smarty.now|date_format:"%Y"} {$site->title}. All rights reserved.
	</p>
	</div>
	<!-- end #footer -->
	
	{if $site->google_analytics_acc != ''}
	{literal}

	<script type="text/javascript">
	/* <![CDATA[ */	
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', '{/literal}{$site->google_analytics_acc}{literal}']);
	  _gaq.push(['_trackPageview']);
	  _gaq.push(['_trackPageLoadTime']);

	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	/* ]]> */	
	</script>

	{/literal}
	{/if}
	
</body>
</html>

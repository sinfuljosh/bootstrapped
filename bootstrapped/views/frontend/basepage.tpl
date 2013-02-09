<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta name="keywords" content="{$page->meta_keywords}{if $page->meta_keywords != "" && $site->metakeywords != ""},{/if}{$site->metakeywords}" />
	<meta name="description" content="{$page->meta_description}{if $page->meta_description != "" && $site->metadescription != ""} - {/if}{$site->metadescription}" />	
	<meta name="application-name" content="newznab-{$site->version}" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> {* Added for Responsiveness *}
	<title>{$page->meta_title}{if $page->meta_title != "" && $site->metatitle != ""} - {/if}{$site->metatitle}</title>
	{if $loggedin=="true"}	<link rel="alternate" type="application/rss+xml" title="{$site->title} Full Rss Feed" href="{$smarty.const.WWW_TOP}/rss?t=0&amp;dl=1&amp;i={$userdata.ID}&amp;r={$userdata.rsstoken}" />{/if}

	<link href="{$smarty.const.WWW_TOP}/templates/bootstrapped/styles/style.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="{$smarty.const.WWW_TOP}/templates/bootstrapped/styles/jquery.qtip.css" rel="stylesheet" type="text/css" media="screen" />
	{if $site->google_adsense_acc != ''}	<link href="http://www.google.com/cse/api/branding.css" rel="stylesheet" type="text/css" media="screen" />
	{/if}

	<link rel="shortcut icon" type="image/ico" href="{$smarty.const.WWW_TOP}/templates/bootstrapped/images/favicon.ico"/>
	<link rel="search" type="application/opensearchdescription+xml" href="{$smarty.const.WWW_TOP}/opensearch" title="{$site->title|escape}" />

	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/bootstrapped/scripts/jquery.colorbox-min.1.3.32.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/bootstrapped/scripts/jquery.qtip2.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/bootstrapped/scripts/utils.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/bootstrapped/scripts/sorttable.js"></script>

	<script type="text/javascript">
	/* <![CDATA[ */	
	var WWW_TOP = "{$smarty.const.WWW_TOP}";
	var SERVERROOT = "{$serverroot}";
	var UID = "{if $loggedin=="true"}{$userdata.ID}{else}{/if}";
	var RSSTOKEN = "{if $loggedin=="true"}{$userdata.rsstoken}{else}{/if}";
	/* ]]> */		
	</script>

	{************** Bootstrap Styles and Scripts *****************}
	<link href="{$smarty.const.WWW_TOP}/templates/bootstrapped/styles/bootstrapped.css" rel="stylesheet">
	<link href="{$smarty.const.WWW_TOP}/templates/bootstrapped/styles/bootstrap-responsive.min.css" rel="stylesheet">
	<style type="text/css">
	html, body { height: 100%;}
	.wrap {
		min-height: 100%;
		width:auto;
	}
	</style>

	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	{************** End Bootstrap Styles and Scripts *****************}

{$page->head}
</head>
<div class="wrap">
<body data-spy="scroll" data-target=".subnav" data-offset="100" {$page->body}>

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
<div class="nav-collapse pull-right" id="main-menu">
<ul class="nav">

{if $loggedin=="true"}
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Cart <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="{$smarty.const.WWW_TOP}/cart">My Cart</a></li>
<li class="divider"></li>
<li><a href="#">CART_CODE_HERE</a></li>
</ul>
</li>
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">{$userdata.username} <b class="caret"></b></a>
<ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropUser">
<li><a tabindex="-1" href="{$smarty.const.WWW_TOP}/profile">My Profile</a></li>
<li class="divider"></li>
<li class="">
<a href="{$smarty.const.WWW_TOP}/myshows">Edit My Shows</a>
<a href="{$smarty.const.WWW_TOP}/mymovies">Edit My Movies</a>
</li>
{if $sabintegrated}
<li class="divider"></li>
<li class="">                        
<a href="{$smarty.const.WWW_TOP}/queue">SABnzbd Queue</a>
</li>                          
{/if}
<li class="divider"></li>
<li class="">                        
<a href="{$smarty.const.WWW_TOP}/forum">Forum</a>
</li>                                              
{if $isadmin}
<li class="divider"></li>
<li class="">
<a href="{$smarty.const.WWW_TOP}/admin">Site Admin</a>
</li>
{/if}
<li><a tabindex="-1" href="{$smarty.const.WWW_TOP}/logout">Logout</a></li>
</ul>
</li>
{else}
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome <b class="caret"></b></a>
<ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropUser">
<li><a tabindex="-1" href="{$smarty.const.WWW_TOP}/login">Login</a></li>
<li><a tabindex="-1" href="{$smarty.const.WWW_TOP}/register">Register</a></li>              	
</ul>
</li>
{/if}
</ul>
</div>
</div>
</div>
</div>

<div class="container" id="page">


<!-- Header Menu
================================================== -->
<header class="jumbotron subhead" id="overview">
<div class="row">
<div class="span12">
{*     			<a class="logolink" title="{$site->title} Logo" href="{$smarty.const.WWW_TOP}{$site->home_link}"><img class="logoimg" alt="{$site->title} Logo" src="{$smarty.const.WWW_TOP}/templates/default/images/clearlogo.png" /></a> *}
{*<h1>{$site->title}</h1>*}
<p class="lead">{$site->strapline}</p>
</div>
</div>
{if $loggedin=="true"}
<div class="subnav" id="newmenu">
{$header_menu}
</div>
{/if}
</header>


<!-- Main page area -->

<div class="row" id="basepage">
{if $site->menuposition==1}
<div class="span2">

<div class="well sidebar-nav" id="sidemenu">	

{$main_menu}

{$article_menu}

{$useful_menu}

{$recentposts_menu}


{*  Adsense Search
{if $site->google_adsense_acc != '' && $site->google_adsense_search != ''}
{literal}
<li>
<h2>Search for {/literal}{$site->term_plural}{literal}</h2> 
<div style="padding-left:20px;">
<div class="cse-branding-bottom" style="background-color:#FFFFFF;color:#000000">
<div class="cse-branding-form">
<form action="http://www.google.co.uk/cse" id="cse-search-box" target="_blank">
<div>
<input type="hidden" name="cx" value="partner-{/literal}{$site->google_adsense_acc}{literal}:{/literal}{$site->google_adsense_search}{literal}" />
<input type="hidden" name="ie" value="UTF-8" />
<input type="text" name="q" size="10" />
<input type="submit" name="sa" value="Search" />
</div>
</form>
</div>
<div class="cse-branding-logo">
<img src="http://www.google.com/images/poweredby_transparent/poweredby_FFFFFF.gif" alt="Google" />
</div>
<div class="cse-branding-text">
Custom Search
</div>
</div>
</div>
</li>		
{/literal}
{/if}  *}
<ul class="nav nav-list menu_menupic">
<li>
<a title="Sickbeard - The ultimate usenet PVR" href="http://www.sickbeard.com/"><img class="menupic" alt="Sickbeard - The ultimate usenet PVR" src="{$smarty.const.WWW_TOP}/templates/bootstrapped/images/sickbeard.png" /></a>
</li>
<li>
<a title="Sabznbd - A great usenet binary downloader" href="http://www.sabnzbd.org/"><img class="menupic center" alt="Sabznbd - A great usenet binary downloader" src="{$smarty.const.WWW_TOP}/templates/bootstrapped/images/sabnzbd.png" /></a>
</li>
</ul>
</div>

</div>
{/if}

<div {if $site->menuposition==1}class="span10"{/if}{if $site->menuposition==2}class="span12"{/if} id="content">
{$page->content}
</div>
</div>
</div>



<div id="push"></div>
</div>
<!-- FOOTER AREA  -->
<div id="footer">
	<row>
		<div style="clear: both;text-align:right;margin-top:-38px;">
			<a class="w3validator" href="http://validator.w3.org/check?uri=referer">
			<img src="{$smarty.const.WWW_TOP}/templates/bootstrapped/images/valid-xhtml10.png" alt="Valid XHTML 1.0 Transitional" height="31" width="88" />
			</a>
		</div>
	</row>
	<row>
		<p>
			{$site->footer}
			<br />
			<a title="newznab - A usenet indexing web application with community features." href="http://www.newznab.com/">newznab
			</a> all rights reserved {$smarty.now|date_format:"%Y"}. 
			<br/> 
			<a title="Chat about newznab" href="http://www.newznab.com/chat.html">newznab chat
			</a> 
			<br/>
			<a href="{$smarty.const.WWW_TOP}/terms-and-conditions">{$site->title} terms and conditions
			</a>
		</p>
	</row>
</div>

<script src="{$smarty.const.WWW_TOP}/templates/bootstrapped/scripts/bootstrap.min.js"></script>
<script src="{$smarty.const.WWW_TOP}/templates/bootstrapped/scripts/subnav.js"></script>
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

{if $loggedin=="true"}
<input type="hidden" name="UID" value="{$userdata.ID}" />
<input type="hidden" name="RSSTOKEN" value="{$userdata.rsstoken}" />
{/if}

</body>
</html>

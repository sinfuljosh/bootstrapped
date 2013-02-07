{if $menulist|@count > 0} 
<ul class="nav nav-list menu_main">
	<li class="nav-header">Menu</li>
	{foreach from=$menulist item=menu}
	{assign var="var" value=$menu.menueval}	
	{eval var="$var," assign='menuevalresult'}
	{if $menuevalresult|replace:",":"1" == "1"}
	<li><a {if $menu.newwindow =="1"}class="external" target="null"{/if} title="{$menu.tooltip}" href="{$menu.href}">{$menu.title}</a></li>
	{/if}
	{/foreach}
</ul>
{/if}
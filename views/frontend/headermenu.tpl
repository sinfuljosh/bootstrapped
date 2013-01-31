		<ul class="nav nav-pills">
			{foreach from=$parentcatlist item=parentcat}
			{if $parentcat.ID == 1000 && $userdata.consoleview=="1"}
			<li class="dropdown subnavbar-open-right"></">
				<a id="drop1" class="dropdown-toggle" data-toggle="dropdown" href="#">{$parentcat.title} <b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
					<li><a href="{$smarty.const.WWW_TOP}/console">{$parentcat.title}</a></li>
					<li class="divider"></li>
					{foreach from=$parentcat.subcatlist item=subcat}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/console?t={$subcat.ID}">{$subcat.title}</a></li>
					{/foreach}
				</ul>
			</li>
			{elseif $parentcat.ID == 2000 && $userdata.movieview=="1"}
			<li class="dropdown subnavbar-open-right">
				<a id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown" href="#">{$parentcat.title} <b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="drop2">	
					<li><a href="{$smarty.const.WWW_TOP}/movies">{$parentcat.title}</a></li>
					<li class="divider"></li>
					<li><a href="{$smarty.const.WWW_TOP}/upcoming">In Theatres</a></li>
					<li class="divider"></li>
					{foreach from=$parentcat.subcatlist item=subcat}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/movies?t={$subcat.ID}">{$subcat.title}</a></li>
					{/foreach}
				</ul>
			</li>
			{elseif ($parentcat.ID == 3000 && $userdata.musicview=="1")}
			<li class="dropdown subnavbar-open-right">
				<a id="drop3" class="dropdown-toggle" data-toggle="dropdown" href="#">{$parentcat.title} <b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
					<li><a href="{$smarty.const.WWW_TOP}/music">{$parentcat.title}</a></li>
					<li class="divider"></li>
					{foreach from=$parentcat.subcatlist item=subcat}
					{if $subcat.ID == 3030}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/browse?t={$subcat.ID}">{$subcat.title}</a></li>
					{else}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/music?t={$subcat.ID}">{$subcat.title}</a></li>
					{/if}
					{/foreach}
				</ul>
			</li>
			{elseif ($parentcat.ID == 5000)}
			<li class="dropdown subnavbar-open-right">
				<a id="drop{$parentcat.ID}" class="dropdown-toggle" data-toggle="dropdown" href="#">{$parentcat.title} <b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="drop{$parentcat.ID}">
					<li><a href="{$smarty.const.WWW_TOP}/browse?t={$parentcat.ID}">{$parentcat.title}</a></li>
					<li class="divider"></li>
					<li><a href="{$smarty.const.WWW_TOP}/series">TV Series</a></li>
					<li><a href="{$smarty.const.WWW_TOP}/calendar">TV Calendar</a></li>
					<li class="divider"></li>
					{foreach from=$parentcat.subcatlist item=subcat}
					{if ($subcat.ID == 7020 && $userdata.bookview=="1")}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/books">{$subcat.title}</a></li>
					{else}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/browse?t={$subcat.ID}">{$subcat.title}</a></li>
					{/if}
					{/foreach}
				</ul>
			</li>
			{else}
			<li class="dropdown subnavbar-open-right">
				<a id="drop{$parentcat.ID}" class="dropdown-toggle" data-toggle="dropdown" href="#">{$parentcat.title} <b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="drop{$parentcat.ID}">
					<li><a href="{$smarty.const.WWW_TOP}/browse?t={$parentcat.ID}">{$parentcat.title}</a></li>
					<li class="divider"></li>
					{foreach from=$parentcat.subcatlist item=subcat}
					{if ($subcat.ID == 7020 && $userdata.bookview=="1")}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/books">{$subcat.title}</a></li>
					{else}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/browse?t={$subcat.ID}">{$subcat.title}</a></li>
					{/if}
					{/foreach}
				</ul>
			</li>
			{/if}
			{/foreach}
			<li class="dropdown subnavbar-open-right">
				<a id="dropAll" class="dropdown-toggle" data-toggle="dropdown" href="#">All <b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropAll">
					<li><a href="{$smarty.const.WWW_TOP}/browse">All</a></li>
					<li class="divider"></li>
					<li><a title="Browse Groups" href="{$smarty.const.WWW_TOP}/browsegroup">Groups</a></li>
					<li class="divider"></li>
					<li><a href="{$smarty.const.WWW_TOP}/anime">Anime Series</a></li>
					<li><a href="{$smarty.const.WWW_TOP}/series">TV Series</a></li>					
					<li><a href="{$smarty.const.WWW_TOP}/upcoming">In Theatres</a></li>


				</ul>
			</li>
		</ul>

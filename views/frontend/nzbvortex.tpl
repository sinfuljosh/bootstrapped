<h1>{$page->title}</h1>
<div id="vortex-error" style="display: none; background-color: #767A9E; text-align: center; padding: 5px; color: #eee"></div>
<div id="vortex">
</div>

{literal}
<script type="text/javascript">
var timer = 0;
function getOverview()
{
    $.ajax
    ({
        url: WWW_TOP + '/nzbvortex?getOverview&isAjax',
        cache: false
    }).done(function(html)
    {
        $("#vortex").html(html);
        timer = setTimeout(getOverview, 3000);
    }).fail(function(response)
    {
        console.log(response.responseText);
        $('#vortex-error').show();
        $('#vortex-error').html(response.responseText);
        clearTimeout(timer);
    });
}

getOverview();
</script>
{/literal}

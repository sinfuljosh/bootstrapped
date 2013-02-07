 
{if $error != ''}
	<div class="alert alert-error">{$error}</div>
{/if}
<div class="span3">
<form class="form-signin" action="login" method="post">
    	<input type="hidden" name="redirect" value="{$redirect|escape:"htmlall"}" />
        <h2 class="form-signin-heading">Login</h2>
        <input type="text" id="username" name="username" value="{$username}" class="input-block-level" placeholder="Username or Email">
        <input type="password" id="password" name="password" class="input-block-level" placeholder="Password">
        <label class="checkbox">
          <input id="rememberme" {if $rememberme == 1}checked="checked"{/if} name="rememberme" type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-primary" type="submit">Login</button>
      </form>
<br/>
<a href="{$smarty.const.WWW_TOP}/forgottenpassword">Forgotten your password?</a>
</div>



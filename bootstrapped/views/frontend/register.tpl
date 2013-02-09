 {if $error != ''}
	<div class="alert alert-error">{$error}</div>
{/if}

{if $showregister != "0"}
<div class="span4">
	<form class="form-register" method="post" action="register?action=submit">
		        <h2 class="form-signin-heading">Register</h2>
        <input type="text" id="username" name="username" value="{$username}"  autocomplete="off" class="input-block-level" placeholder="Username" required><span class="help-block">Should be at least three characters and start with a letter.</span>
        <input type="password" id="password" name="password" value="{$password}" autocomplete="off" class="input-block-level" placeholder="Password" required><span class="help-block">Should be at least six characters long.</span>
        <input type="password" id="confirmpassword" name="confirmpassword" value="{$confirmpassword}" autocomplete="off" class="input-block-level" placeholder="Confirm Password" required>
<input type="email" id="email" name="email" value="{$email}" autocomplete="off" class="input-block-level" placeholder="Email Address" required>
			{*{if $site->registerrecaptcha == "1"}
			<tr><th><label for="recaptcha">Captcha</label>: <em>*</em></th><td>{$recaptcha}</td></tr>
			{/if}*   +++++ TO DO https://gist.github.com/3812601 *}
                <button class="btn btn-primary" type="submit">Register</button>
		
	</form>
</div>
{/if}
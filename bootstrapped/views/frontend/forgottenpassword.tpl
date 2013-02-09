 


{if $error != ''}
	<div class="alert alert-error">{$error}</div>
{/if}
<div class="span5">
{if $confirmed == '' && $sent == ''}
	        <h2 class="form-signin-heading">Forgotten Password</h2>

	<p>
		Please enter the email address you used to register and we will send an email to reset your password. If you cannot remember your email, or no longer have access to it, please <a href="{$smarty.const.WWW_TOP}/contact-us">contact us</a>.
	</p>

	<form class="form-forgotpass" method="post" action="forgottenpassword?action=submit">
    <input type="email" id="email" autocomplete="off" name="email" value="{$email}" class="input-block-level" placeholder="Email" required>
                <button class="btn btn-primary" type="submit">Request Password Reset</button>

	</form>
{elseif $sent != ''}
	<p>
		A password reset request has been sent to your email.
	</p>
{else}
	<p>
		Your password has been reset and sent to you in an email.
	</p>
{/if}
</div>
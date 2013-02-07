 
			<h2>Getting in touch</h2>

			<p>
				Please send any questions or comments you have in an email to {mailto address=$site->email text=$site->title}.
			</p>

			{$msg}

			{if $msg == ""}
			<h2>Contact form</h2>
			<p>
				Alternatively use our contact form to get in touch.
			</p>
			<br />
    <form class="form-horizontal" method="post" action="contact-us">
    <div class="control-group">
    <label class="control-label" for="username">Your Name</label>
    <div class="controls">
    <input type="text" id="username" name="username" placeholder="Your Name or Username">
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="useremail">Your Email</label>
    <div class="controls">
    <input type="text" id="useremail" name="useremail" placeholder="Email Address">
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="comment">Your Comment</label>
    <div class="controls">
    <textarea rows="10" name="comment"></textarea>
    </div>
    </div>
    <div class="control-group">
    <div class="controls">
    <button type="submit" class="btn">Submit</button>
    </div>
    </div>
    </form>






<!-- 			<form method="post" action="contact-us">
				<table>
					<tr>
						<td width="100px">Your name: </td>
						<td>
							<input id="username" type="text" name="username" value="" />
						</td>
					</tr>
					<tr>
						<td>Your email address: </td>
						<td>
							<input type="text" name="useremail" value="" />
						</td>
					</tr>
					<tr>
						<td>Your comment or review: </td>
						<td>
							<textarea rows="10" cols="40" name="comment"></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" value="Submit" />
						</td>
					</tr>
				</table>
			</form> -->
			{/if}
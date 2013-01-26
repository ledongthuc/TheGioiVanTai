</div>
<div>
<fieldset class="form entry">
	<table width="100%" border="0" style="border-collapse: separate;" class="detail comment" cellpadding="0" cellspacing="0">
		<tbody><tr>
			<td>
				<label for="CommentText">
					Ý kiến phản hồi</label>
			</td>
		</tr>
		<tr>
			<td>
				<textarea rows="2" style="width: 90%" name="CommentText" id="CommentText"></textarea>
				
			</td>
		</tr>
		
		<tr>
			<td style="padding-right: 4px; padding-bottom: 4px">
				<input type="submit" value="Gửi" class="btn btn-m"><span id="adding_loader"></span>
			</td>
		</tr>
		
	</tbody></table>
</fieldset>
<input type="hidden" value="6786" name="ObjectID" id="ObjectID">
<input type="hidden" value="Vehicle" name="ObjectName" id="ObjectName">
<div id="listComments">
	<fieldset class="form view">
		<table border="0" id="rowID3470" style="padding:0px;margin:1px " class="detail" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td>
					<b>@ledongthuc1</b>
					test
				</td>
				<td style="text-align: right">
					<a onclick="Sys.Mvc.AsyncHyperlink.handleClick(this, new Sys.UI.DomEvent(event), { insertionMode: Sys.Mvc.InsertionMode.replace, onBegin: Function.createDelegate(this,  function(){ return true; } ), onSuccess: Function.createDelegate(this,  function(){ $('#rowID'+3470).remove(); } ) });" href="/Comment/Delete/3470">Xóa</a>
					
				</td>
			</tr>
		</tbody></table>
		
		
		<table border="0" id="rowID3471" style="padding:0px;margin:1px " class="detail" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td>
					<b>@ledongthuc1</b>
					san pham rat tot
				</td>
				<td style="text-align: right">
					<a onclick="Sys.Mvc.AsyncHyperlink.handleClick(this, new Sys.UI.DomEvent(event), { insertionMode: Sys.Mvc.InsertionMode.replace, onBegin: Function.createDelegate(this,  function(){ return true; } ), onSuccess: Function.createDelegate(this,  function(){ $('#rowID'+3471).remove(); } ) });" href="/Comment/Delete/3471">Xóa</a>
					
				</td>
			</tr>
		</tbody></table>
	</fieldset>
</div>
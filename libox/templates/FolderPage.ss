<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 
		
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/tdf/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
	<div id="BgContainer">
		<div id="Container">
			<div id="Header">
				$SearchForm
		   		<h1>$SiteConfig.Title</h1>
		    	<p>$SiteConfig.Tagline</p>
			</div>
		
			<div id="Navigation">
				<% include Navigation %>
		  	</div>
	  	
		  	<div class="clear"><!-- --></div>
		
			<div id="Layout">
			  $Layout
<div class="typography">
<% if FolderListing %>
<ul class="dirlist">
<% control FolderListing %> 
<% if isFolder %>
<li class="folder">$Title
<ul>
<% else %>
<li><a href="$URL">$Title</a> - $Size</li>
<% end_if %>
<% if lastItem %>
</ul></li>
<% end_if %>
<% end_control %> 
</ul>
<% end_if %>
</div>
			</div>
		
		   <div class="clear"><!-- --></div>
		</div>
		<div id="Footer">
			<% include Footer %>
		</div> 
	</div>
</body>
</html>

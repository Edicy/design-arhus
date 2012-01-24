{% if site.search.enabled %}
<div class="clear">
<form action="#" method="post" id="search" class="edys-search">
	<p>
  <input type="text" name="" id="onpage_search" class="edys-search-input" placeholder="{{ "search"|lc }}" />
	</p>
	<p>
  <input type="submit" name="" value="" class="search-submit" />
	</p>
</form>
</div>
{% endif %}

<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body id="front" class="content-hyphenate">
<div id="wrap">
  <div id="header">
    <div id="header-inner">
     <div id="header-inner2">
      <div class="wrapper clear">
        {% include "Mainmenu" %}
        {% include "Langmenu" %}
      </div>
      <!-- //wrapper -->
     </div> 
    </div>
  </div>
  <!-- //header -->
  <div id="content-wrap">
    <div class="wrapper">
      <h1 id="site-logo">{% editable site.header %}</h1>
      <div id="intro" class="clear" data-search-indexing-allowed="true">{% content name="slogan" %}</div>
      <div id="content-block" class="clear" data-search-indexing-allowed="true">{% content %}</div>
      <!-- //content-block -->
    </div>
    <!-- //wrapper -->
  </div>
  <!-- //content-wrap -->
  {% include "Footer" %}
  <!-- //footer -->
</div>
<!-- //wrap -->
{% include "JS" %}
</body>
</html>

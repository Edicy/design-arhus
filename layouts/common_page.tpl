<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body>
<div id="wrap" class="content-hyphenate">
  <div id="header">
    <div id="header-inner">
     <div id="header-inner2">
      <div class="wrapper clear">
        <div id="logo">{% editable site.header %}</div>
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
      {% include "mobile-menu" %}
      <div id="heading">
        <h1>{% content name="heading" %}</h1>
      </div>
      <div id="divider" class="clear">
        <div id="content" data-search-indexing-allowed="true">
         {% content %}
        </div>
        <!-- //content -->
        <div id="sidebar">
         {% include "Submenu" %}
         <div data-search-indexing-allowed="true">{% content name="sidebar" %}</div>
        </div>
        <!-- //sidebar -->
      </div>
      <!-- //divider -->
    </div>
    <!-- //wrapper -->
  </div>
  <!-- //content-wrap -->
  {% include "Footer" %}
</div>
<!-- //wrap -->
{% include "JS" %}
</body>
</html>

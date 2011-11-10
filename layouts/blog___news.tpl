<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
{{blog.rss_link}}
</head>
<body>
<div id="wrap">
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
        <div id="content">
         {% if editmode %}<p>{% addbutton class="add-article" %}</p>{% endif %}
         <ul id="bloglist">{% for article in articles %}
           <li>
             <h2><a href="{{article.url}}">{{article.title}}</a> <span class="date">{{article.created_at | format_date:"short"}}</span></h2>
             <p class="meta"><span>{{article.author.name}}</span> / <a href="{{article.url}}#comments">{% case article.comments_count %}{% when 0 %}{{"Write_first_comment" | lc}}{% else %}{{"comments" | lc}} ({{article.comments_count}}){% endcase %}</a></p>
             {{article.excerpt}}
           </li>{% endfor %}
         </ul>
        </div>
        <!-- //content -->
        <div id="sidebar">
         {% include "Submenu" %}
         {% content name="sidebar" %}
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

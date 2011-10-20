<!DOCTYPE html>
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
        <h1 class="article-heading">{% editable article.title %} <span class="date">{{article.created_at | format_date:"short"}}</span></h1>
      </div>
      <div id="divider" class="clear">
        <div id="content">
           <div class="excerpt">
            {% editable article.excerpt %}
            </div>
            {% editable article.body %}
           <div id="comments">
            <h3>{% case article.comments_count %}{% when 0 %}{{"no_comments"|lc}}{% else %}{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{article.comments_count}}</span>{% endcase %}</h3>
            <ul>
            {% for comment in article.comments %}
              <li class="edy-site-blog-comment">
                <p class="comment-author">{{comment.author}} <span class="date">{{comment.created_at | format_date:"short"}}</span>{% removebutton %}</p>
                <p>{{comment.body}}</p>
              </li>{% endfor %}
            </ul>
          </div>
          <!-- //comments -->
          <div id="comment-form">
            <h3>{{"add_a_comment"|lc}}</h3>
            {% commentform %}
            {% unless comment.valid? %}<ul>
            {% for error in comment.errors %}
            <li>{{ error | lc }}</li>
            {% endfor %}
            </ul>{% endunless %}
              <div class="form_field">
                <label for="name">{{"name"|lc}}</label>
                <input type="text" id="name" class="form_field_textfield" value="{{comment.author}}" name="comment[author]" />
              </div>
              <div class="form_field">
                <label for="email">{{"email"|lc}}</label>
                <input type="text" id="email" class="form_field_textfield" value="{{comment.author_email}}" name="comment[author_email]" />
              </div>
              <div class="form_field">
                <label for="comment">{{"comment"|lc}}</label>
                <textarea id="comment" class="form_field_textarea" rows="4" cols="5" name="comment[body]">{{comment.body}}</textarea>
              </div>
              <div class="form_submit">
                <input type="submit" class="submit" value="{{"submit"|lc}}" />
              </div>
              <!-- //form_submit -->
            {% endcommentform %}
          </div>
          <!-- //comment-form -->          
        
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
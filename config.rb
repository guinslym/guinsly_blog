###
# Blog settings
###

# Time.zone = "UTC"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
   blog.prefix = "blog"

   blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
   blog.sources = "{year}-{month}-{day}-{title}.html"
   blog.taglink = "tags/{tag}.html"
   blog.layout = "layout"#the MAIN project layout
   blog.summary_separator = /(READMORE)/
   blog.summary_length = 150
   blog.year_link = "{year}.html"
   blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"
  blog.default_extension = ".erb"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"


  # Enable pagination
   blog.paginate = true
   blog.per_page = 5
   blog.page_link = "page/{num}"
end


activate :deploy do |deploy|
  deploy.method = :sftp
  # host, user, passwword and path *must* be set
  deploy.host = "sftp.example.com"
  deploy.port = 22
  deploy.path = "/srv/www/site"
  # user is optional (no default)
  deploy.user = "tvaughan"
  # password is optional (no default)
  deploy.password = "secret"
  deploy.build_before = true
end


ignore '2015-02-18-why-do-i-volunteer-at-disada?.html.erb'

activate :title, site: 'Blog de Guinsly Mondésir', separator: ' — '


activate :meta_tags
set_meta_tags description: 'Powerful website full of best practices and keywords'

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-62420229-1'
  ga.domain_name = 'guinslym.info'
  ga.development = false
end

page "/feed.xml", layout: false

# silence i18n warning
::I18n.config.enforce_available_locales = false


###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
#activate :livereload

# Methods defined in the helpers block are available in templates
 require "lib/custom_helpers"
 helpers CustomHelpers
 helpers do


 end


activate :directory_indexes


set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
   activate :minify_css

  # Minify Javascript on build
   activate :minify_javascript

  # Enable cache buster
   activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

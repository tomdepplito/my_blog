# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MyBlog::Application.initialize!
Disqus::defaults[:account] = "tomdepplito"

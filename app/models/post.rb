class Post < ActiveRecord::Base
  attr_accessible :rss_url, :title, :type
end

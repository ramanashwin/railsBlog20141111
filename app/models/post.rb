class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :category_id, :title
end

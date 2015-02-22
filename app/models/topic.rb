class Topic < ActiveRecord::Base
  has_many :posts, inverse_of: :topic
end

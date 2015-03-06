class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  scope :visible_to, -> (user) { user ? all : where(public: true) } #if else statement in brackets {if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this}

end

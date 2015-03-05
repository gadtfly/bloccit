require 'rails_helper'

describe User do
  
  include  TestFactories

  describe "#favorited(post)" do
    #I think that this will run when we a post is selected which will run nil
      # if a favorite does not exit for current_user and the current post
    xit "returns 'nil' if the user has not favorited the post" do
    end

    # This one returns a user's favorite there is a favorite entry for
      #current_user? *shrugs*
    xit "returns the appropriate favorite if it exists" do
    end
  end
end
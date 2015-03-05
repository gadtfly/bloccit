class FavoriteMailer < ActionMailer::Base
  default from: "fclunar@gmail.com"

   def new_comment(user, post, comment)
 
     # New Headers
     headers["Message-ID"] = "<comments/#{comment.id}@localhost:3000>"
     headers["In-Reply-To"] = "<post/#{post.id}@localhost:3000>"
     headers["References"] = "<post/#{post.id}@localhost:3000>"
 
     @user = user
     @post = post
     @comment = comment
 
     mail(to: user.email, subject: "New comment on #{post.title}")
   end
end
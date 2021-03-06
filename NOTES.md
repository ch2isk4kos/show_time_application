#Play-By-Play

1. $ rails new showtime

2. $ rails generate model Movie title:string description:text director:string

3. $ rake db:migrate

3. $ rails generate controller Movies

4. create index action in movies_controller.rb

5. create routes in routes.rb

6. add simple_form and bootstrap-sass to Gemfile

7. bundle install

8. restart the server

9. configure simple_form and bootstrap-sass

10. create actions in movies_controller.rb

11. create show action and show view file

12. create edit, update and destroy actions in movies_controller.rb

13. create edit view file

14. add devise to Gemfile

15. configure devise

16. Add Navigation to application.html.erb

17. create Associations (User --< Movies) in models
    - $ rails generate migration add_user_id_to_movies user_id:integer
    - $ rake db:migrate

18. revise movies_controller.rb #new && #create for current_user

19. Authenticate users from editing and deleting in views/movies/show.html.erb

20. create Category model
    - $ rails generate model Category name:string
    - $ rake db:migrate

21. add category_id column to movies table
    - $ rails generate migration add_category_id_to_movies category_id:integer
    - $ rake db:migrate

22. add category Associations (User --< Movies >-- Category)

23. update #new, #create, #edit, #update && #movie_params actions in movies_controller.rb for category functionality

24. add select_form to views/movies/_form.html.erb __

25. update category selector in views/movies/edit.html.erb

#26. add bootstrap dropdown to views/movies/index.html.erb

27. add paperclip to Gemfile

28. $ bundle install

29. configure paperclip
    - add to models/movie.rb
        * has_attached_file :movie_img, styles: { movie_index: "250x300>", movie_show: "325x475>" }, default_url: "/images/:style/missing.png"

        * validates_attachment_content_type :movie_img, content_type: /\Aimage\/.asterisk\z/
    - add to config/environment/development.rb
        * Paperclip.options[:command_path] = "/usr/local/bin/"

30. add movie_img column to movies table
    - $ rails generate paperclip Movie movie_img
    - $ rake db:migrate

31. display images on index page && show page

32. create Review model
    - $ rails generate model Review rating:integer comment:text
    - $ rake db:migrate

33. add user_id to Review model
    - $ rails generate migration add_user_id_to_reviews user_id:integer
    - $ rake db:migrate

34. add movie_id to Review model
    - $ rails generate migration add_movie_id_to_reviews movie_id:integer
    - $ rake db:migrate

35. create Review Associations

36. create Review routes
    - nest resources :reviews inside of resources :movies do

37. create reviews_controller.rb
    - $ rails generate controller Reviews

38. add #new and #create actions in reviews_controller.rb

39. create Review view files

40. add #edit, #update && #destroy in reviews_controller.rb

41. add edit and delete functionality in movies show page

#42. configure jQuery raty

43. add average reviews on the show page

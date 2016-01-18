require 'ffaker'

# create 100 users
100.times do

  # build the user params
  user_params = Hash.new
  user_params[:email] = FFaker::Internet.email
  user_params[:password]  = "123456"
  # save the user
  new_user = User.create(user_params)

  # create 10 articles for each user
  10.times do
    new_article = Article.new
    new_article.title = FFaker::HipsterIpsum.words(rand(8)+2).join(" ")
    new_article.content = FFaker::HipsterIpsum.paragraphs(1+ rand(4)).join("\n")
    # save the article
    new_article.save
    # associate the article with the user
    new_user.articles.push new_article
  end
end

namespace :util do
  desc 'Create demo user'
  task demo_user: :environment do
    User.destroy_all
    user = User.new(first_name: 'Jon', last_name: 'Snow', designation: 'Software Associate', twitter: 'https://twitter.com/LordSnow', facebook: 'https://www.facebook.com/JonSnowWatcherOnTheWall/', instagram: 'https://www.instagram.com/kitharingtonn')
    user.avatar = 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/15/09/jon-snow.jpg'
    ap user if user.save
  end
end

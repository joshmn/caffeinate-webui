users = []

Caffeinate::CampaignSubscription.destroy_all
Caffeinate::Campaign.delete_all
good_food = Caffeinate::Campaign.create!(name: "Good food", slug: "good_food")
bad_food = Caffeinate::Campaign.create!(name: "Bad food", slug: "bad_food")
reviews = Caffeinate::Campaign.create!(name: "Reviews", slug: "reviews")

BadFoodDripper.campaign
GoodFoodDripper.campaign
ReviewsDripper.campaign

10.times do
  company = Company.create!
  users << User.create!(email: "#{SecureRandom.hex}@example.com", company: company)
end

users.each do |user|
  good = good_food.subscribe(user)
  bad = bad_food.subscribe(user)
  review = reviews.subscribe(user)

  if rand(5) == 2
    good.mailings.first.update(sent_at: rand(500).to_i.days.ago)
    bad.mailings.second.skip!
    review.unsubscribe!
  end
end


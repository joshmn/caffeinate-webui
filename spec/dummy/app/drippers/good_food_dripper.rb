# frozen_string_literal: true

class GoodFoodDripper < ::Caffeinate::Dripper::Base
  self.campaign = :good_food

  drip :was_the_food_good, delay: 1.hour, mailer_class: 'GoodFoodDripper'
  drip :tell_me_it_was_tasty, delay: 2.days, mailer_class: 'GoodFoodDripper'
  drip :miley_cyrus, delay: 3.days, mailer_class: 'GoodFoodDripper'
end

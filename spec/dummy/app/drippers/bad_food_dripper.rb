# frozen_string_literal: true

class BadFoodDripper < ::Caffeinate::Dripper::Base
  self.campaign = :bad_food

  drip :was_it_bad, delay: 1.day, mailer_class: 'BadFoodMailer'
  drip :how_bad_was_it, delay: 2.days, mailer_class: 'BadFoodMailer'
  drip :disgusting_or_no, delay: 3.days, mailer_class: 'BadFoodMailer'
end

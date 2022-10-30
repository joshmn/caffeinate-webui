# frozen_string_literal: true

class ReviewsDripper < ::Caffeinate::Dripper::Base
  self.campaign = :reviews

  drip :review_pls, delay: 1.day, mailer_class: 'ReviewsMailer'
  drip :review_pretty_please, delay: 2.days, mailer_class: 'ReviewsMailer'
  drip :review_pretty_please_please, delay: 3.days, mailer_class: 'ReviewsMailer'
end

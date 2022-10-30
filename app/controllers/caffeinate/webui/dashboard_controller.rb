module Caffeinate
  module Webui
    class DashboardController < ApplicationController
      def show
        @stats ||= OpenStruct.new(
          subscribers: ::Caffeinate::CampaignSubscription.count,
          delivered: ::Caffeinate::Mailing.sent.count,
          skipped: ::Caffeinate::Mailing.skipped.count,
          active: ::Caffeinate::Campaign.active.count
        )

        @all_stats = Caffeinate::Mailing.all.sent.group_by_day(:send_at).count
        @upcoming_mailings ||= ::Caffeinate::Mailing.unsent
                                                    .joins(:caffeinate_campaign_subscription)
                                                    .preload(:caffeinate_campaign, caffeinate_campaign_subscription: [:subscriber])
                                                    .merge(::Caffeinate::CampaignSubscription.active)
                                                    .order(send_at: :asc)
                                                    .paginate(per_page: 30, page: params[:page])

        set_page_title "Dashboard"
      end
    end
  end
end

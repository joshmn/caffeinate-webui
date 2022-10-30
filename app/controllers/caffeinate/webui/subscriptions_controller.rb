module Caffeinate
  module Webui
    class SubscriptionsController < ApplicationController
      def index
        @subscriptions = Caffeinate::CampaignSubscription.preload(:caffeinate_campaign, :subscriber)
        if params[:campaign_id]
          @campaign = ::Caffeinate::Campaign.find_by(id: params[:campaign_id])
        end
        if @campaign
          @subscriptions = @subscriptions.where(caffeinate_campaign: { id: @campaign.id })
        end
        @subscriptions = @subscriptions.order(created_at: :desc).paginate(page: params[:page], per_page: 30)
        set_page_title "Subscriptions"
      end

      def show
        @subscription = Caffeinate::CampaignSubscription.find(params[:id])
        set_page_title "Viewing Subscription"
      end
    end
  end
end

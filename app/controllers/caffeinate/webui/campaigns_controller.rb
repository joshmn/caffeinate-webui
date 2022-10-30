module Caffeinate
  module Webui
    class CampaignsController < ApplicationController
      def index
        @campaigns = Caffeinate::Campaign.all
        set_page_title "Campaigns"
      end

      def show
        @campaign = Caffeinate::Campaign.find_by(id: params[:id])
        @subscriptions = @campaign.caffeinate_campaign_subscriptions.preload(:subscriber).paginate(per_page: 30, page: params[:page])
        set_page_title "Viewing #{@campaign.name}"
      end
    end
  end
end

module Caffeinate
  module Webui
    class MailingsController < ApplicationController
      before_action :set_status, only: [:index]

      def index
        @campaigns = ::Caffeinate::Campaign.all
        @mailings = ::Caffeinate::Mailing.preload(:caffeinate_campaign, caffeinate_campaign_subscription: [:subscriber])
        if params[:campaign_id]
          @campaign = ::Caffeinate::Campaign.find_by(id: params[:campaign_id])
        end
        if @campaign
          @mailings = @mailings.joins(:caffeinate_campaign).where(caffeinate_campaign: { id: @campaign.id })
        end
        if @status
          @mailings = @mailings.public_send(@status)
        end
        @mailings = @mailings.paginate(per_page: 30, page: params[:page])
        set_page_title "Mailings"

      end

      def show
        @mailing = ::Caffeinate::Mailing.find_by(id: params[:id])
        set_page_title "Mailing Details"

      end

      private

      def set_status
        if ['sent', 'unsent', 'skipped'].include?(params[:status])
          @status = params[:status]
        end
      end
    end
  end
end

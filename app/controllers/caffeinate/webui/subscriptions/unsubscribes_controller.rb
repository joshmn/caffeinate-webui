class Caffeinate::Webui::Subscriptions::UnsubscribesController < ApplicationController
  def create
    @subscription = ::Caffeinate::CampaignSubscription.find_by(id: params[:subscription_id])
    if @subscription
      begin
        @subscription.unsubscribe!
        flash[:notice] = "Unsubscribed."
      rescue Caffeinate::InvalidState => e
        flash[:notice] = e.message
      end
    end

    redirect_to subscription_path(@subscription)
  end
end

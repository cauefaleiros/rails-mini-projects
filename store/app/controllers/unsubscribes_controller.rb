class UnsubscribesController
  allow_unauthenticated_acess
  before_action :set_subscriber

  def show
    @subscriber&.destroy
    redirect_to root_path, notice: "Unsubscribes sucessfully."
  end

  private
    def set_subscriber
      @subscriber = Subscriber.find_by_token_for(:unsubscribe, params[:token])
    end
end

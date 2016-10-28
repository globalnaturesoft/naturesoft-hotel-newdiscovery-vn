Naturesoft::Hotels::QuickOrdersController.class_eval do
  before_action :set_quick_order, only: []
  
  # POST /quick_orders
  def quick_booking
    @quick_order = QuickOrder.new(quick_order_params)

    if @quick_order.save
      render json: {
        title: "Thành công!",
        text: 'Cảm ơn bạn đã đăng ký thông tin. Chúng tôi sẽ liên hệ lại trong thời gian sớm nhất',
        status: 'success'
      }
      Naturesoft::Hotels::QuickOrderMailer.sending_email_quick_order(@quick_order).deliver_now
    else
      render json: {
        title: "Rất tiếc!",
        text: 'Thông tin chưa được gửi đi. Xin vui lòng kiểm tra thông tin và đăng ký lại',
        status: 'error'
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quick_order
      @quick_order = QuickOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quick_order_params
      params.fetch(:quick_order, {}).permit(:first_name, :last_name, :email, :phone, :message)
    end
end

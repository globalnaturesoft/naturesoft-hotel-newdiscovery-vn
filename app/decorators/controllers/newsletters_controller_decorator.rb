Naturesoft::Newsletters::NewslettersController.class_eval do
  before_action :set_newsletter, only: [:add_newsletter]

  def add_email
    @newsletter = Naturesoft::Newsletters::Newsletter.new(newsletter_params)

    if @newsletter.save
      render json: {
        title: "Đăng ký thành công",
        text: 'Cảm ơn bạn đã đăng ký nhận bản tin.',
        status: 'success'
      }
    else
      render json: {
        title: "Lỗi!",
        text: 'Rất tiếc! Email của bạn không đúng hoặc đã được đăng ký. Vui lòng cung cấp một địa chỉ email hợp lệ.',
        status: 'error'
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Naturesoft::Newsletters::Newsletter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def newsletter_params
      params.fetch(:newsletter, {}).permit(:email)
    end
end
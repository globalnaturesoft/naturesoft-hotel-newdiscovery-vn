module Naturesoft
  module Newsletters
    class NewslettersController < ActionController::Base
      before_action :set_newsletter, only: [:add_newsletter]

      def add_email
        @newsletter = Newsletter.new(newsletter_params)
  
        if @newsletter.save
          render text: 'Đăng ký thành công. Cảm ơn bạn đã đăng ký nhận bản tin.'
        else
          render text: 'Email của bạn đã được đăng ký (hoặc sai định dạng). Vui lòng cung cấp một địa chỉ email hợp lệ.'
        end
      end
  
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_newsletter
          @newsletter = Newsletter.find(params[:id])
        end
  
        # Only allow a trusted parameter "white list" through.
        def newsletter_params
          params.fetch(:newsletter, {}).permit(:email)
        end
    end
  end
end
module Naturesoft
    module HotelNewdiscoveryVn
        class ErrorsController < Naturesoft::FrontendController
            def not_found
                render(:status => 404)
            end
        end
    end
end
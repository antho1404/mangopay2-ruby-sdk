module MangoPay
  class PayIn < Resource
    include MangoPay::HTTPCalls::Fetch
    include MangoPay::HTTPCalls::Refund

    module Card

      class Web < Resource
        include MangoPay::HTTPCalls::Create
        private
        def self.url(*)
          "/v2/#{MangoPay.configuration.client_id}/payins/card/#{CGI.escape(class_name.downcase)}"
        end
      end

      class Direct < Resource
        include MangoPay::HTTPCalls::Create
        private
        def self.url(*)
          "/v2/#{MangoPay.configuration.client_id}/payins/card/#{CGI.escape(class_name.downcase)}"
        end
      end

    end

  end
end

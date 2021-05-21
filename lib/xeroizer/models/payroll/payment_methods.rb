module Xeroizer
  module Record
    module Payroll

      class PaymentMethodsModel < PayrollBaseModel

        set_permissions :read, :write

        def api_url(options = {})
          "employees/#{options.delete(:employee_id)}/paymentMethods"
        end
      end

      class PaymentMethods < PayrollBase

        string          :payment_method
        has_many        :bank_accounts

      end
    end
  end
end

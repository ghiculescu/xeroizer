module Xeroizer
  module Record
    module Payroll

      class AddressModel < PayrollBaseModel

      end

      class Address < PayrollBase
        # UK
        string      :addressLine1
        string      :addressLine2
        string      :addressLine3
        string      :city
        string      :country
        string      :postCode
        class_inheritable_attributes :api_controller_name
        class_inheritable_attributes :permissions
        class_inheritable_attributes :xml_root_name
        class_inheritable_attributes :optional_xml_root_name
        class_inheritable_attributes :xml_node_name

      end

      class HomeAddressModel < AddressModel
        set_xml_node_name 'HomeAddress'
      end

      class HomeAddress < Address
        string      :address_line1
        string      :address_line2
        string      :address_line3
        string      :address_line4
        string      :city
        string      :region
        string      :postal_code
        string      :country
      end

      class MailingAddressModel < AddressModel
        set_xml_node_name 'MailingAddress'
      end

      class MailingAddress < Address
      end

    end
  end
end

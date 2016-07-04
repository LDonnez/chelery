module Admin
  class ContactsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    def index
      render locals: {
        page: Administrate::Page::Show.new(dashboard, Contact.first),
      }
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Contact.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
    private

    def contact_params
      params.require(:contact).permit!
    end
  end
end

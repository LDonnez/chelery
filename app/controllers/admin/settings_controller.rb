module Admin
  class SettingsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:

    def index
      render locals: {
        page: Administrate::Page::Show.new(dashboard, Setting.first),
      }
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Setting.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end

  private

  def photo_params
    params.require(:photo).permit!
  end
end

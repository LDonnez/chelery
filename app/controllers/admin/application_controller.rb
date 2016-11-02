# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_filters.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
   # before_filter :authenticate_admin
    before_action :authenticate_user!
   # def authenticate_admin
   #   # TODO Add authentication logic here.
   # end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
    # Remove this method when FriendlyID gems updates the gem for rails 5 support.
    def find_resource(param)
      if resource_class == Gallery
        resource_class.friendly.find(param)
      else
        resource_class.find(param)
      end
    end
  end
end

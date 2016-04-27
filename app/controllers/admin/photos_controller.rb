module Admin
  class PhotosController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Photo.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
    def create
      title = params[:photo][:title] unless params[:photo][:title].empty?
      respond_to do |format|
        if params[:photos]
          params[:photos].each do |photo|
            @photo = Photo.new(photo: photo, title: title).save
          end
          format.html { redirect_to action: "index" }
          format.json { render json: @photo, status: :created, location: @photo }
        else
          format.html { render action: "new" }
          format.json { render json: @photo.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

  def photo_params
    params.require(:photo).permit({ project_ids: [] }, :title)
  end
end

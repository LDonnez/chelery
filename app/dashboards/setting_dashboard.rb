require "administrate/base_dashboard"

class SettingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    headline: Field::String,
    subline: Field::String,
    header_text: TextareaField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    header_image: Field::ImageField,
    header_image_file_name: Field::String,
    header_content_type: Field::String,
    header_file_size: Field::String,
    header_updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :headline,
    :subline,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :headline,
    :subline,
    :header_text,
    :created_at,
    :updated_at,
    :header_image,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :headline,
    :subline,
    :header_text,
    :header_image,
  ]

  # Overwrite this method to customize how settings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(setting)
  #   "Setting ##{setting.id}"
  # end
end

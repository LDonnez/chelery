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
    title: Field::String,
    headline: Field::String,
    subline: Field::String,
    header_text: TextareaField,
    email: Field::String,
    facebook_url: Field::String,
    twitter_url: Field::String,
    github_url: Field::String,
    instagram_url: Field::String,
    linkedin_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    header_image: ImageField,
    logo: ImageField,
    logo_content_type: Field::String,
    logo_file_size: Field::String,
    logo_file_name: Field::String,
    header_image_file_name: Field::String,
    header_content_type: Field::String,
    header_file_size: Field::String,
    header_updated_at: Field::DateTime,
    enable_galleries: Field::Boolean,
    enable_groups: Field::Boolean,
    enable_rankings: Field::Boolean,
    enable_news: Field::Boolean,
    enable_agendas: Field::Boolean,
    enable_practical_infos: Field::Boolean
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :headline,
    :subline
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :title,
    :headline,
    :subline,
    :header_text,
    :email,
    :facebook_url,
    :twitter_url,
    :github_url,
    :instagram_url,
    :linkedin_url,
    :created_at,
    :updated_at,
    :header_image,
    :logo,
    :enable_galleries,
    :enable_groups,
    :enable_rankings,
    :enable_news,
    :enable_agendas,
    :enable_practical_infos
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :headline,
    :subline,
    :email,
    :facebook_url,
    :twitter_url,
    :github_url,
    :instagram_url,
    :linkedin_url,
    :header_text,
    :header_image,
    :logo,
    :enable_galleries,
    :enable_groups,
    :enable_news,
    :enable_agendas,
    :enable_rankings,
    :enable_practical_infos
  ].freeze

  # Overwrite this method to customize how settings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(setting)
  #   "Setting ##{setting.id}"
  # end
end

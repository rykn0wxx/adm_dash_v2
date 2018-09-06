require "administrate/base_dashboard"

class DimRegionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    dim_languages: Field::HasMany,
    dim_sites: Field::HasMany,
    id: Field::Number,
    region_name: Field::String,
    region_code: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :dim_languages,
    :dim_sites,
    :id,
    :region_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :dim_languages,
    :dim_sites,
    :id,
    :region_name,
    :region_code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :dim_languages,
    :dim_sites,
    :region_name,
    :region_code,
  ].freeze

  # Overwrite this method to customize how dim regions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(dim_region)
  #   "DimRegion ##{dim_region.id}"
  # end
end
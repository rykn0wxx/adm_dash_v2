require "administrate/base_dashboard"

class DimSiteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    dim_region: Field::BelongsTo,
    dim_projects: Field::HasMany,
    id: Field::Number,
    site_name: Field::String,
    site_code: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :dim_region,
    :dim_projects,
    :id,
    :site_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :dim_region,
    :dim_projects,
    :id,
    :site_name,
    :site_code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :dim_region,
    :dim_projects,
    :site_name,
    :site_code,
  ].freeze

  # Overwrite this method to customize how dim sites are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(dim_site)
  #   "DimSite ##{dim_site.id}"
  # end
end

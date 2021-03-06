module Admin
  class DimSitesController < Admin::ApplicationController
		before_action :set_local, :only => [:import, :do_import]

		def import
		  render locals: {
				adm_import: AdmImport.new,
				page: @page,
				resources: @resources
			}
		end

		def do_import
			@adm_import = AdmImport.new(params)
			if @adm_import.save
				redirect_to [namespace, resource_class], notice: "Imported sites successfully."
			else
				render :import
			end
		end

		private
		def set_local
			resource_includes = dashboard.association_includes
			@page = Administrate::Page::Collection.new(dashboard, resource_class.new)
			@resources = scoped_resource.includes(*resource_includes) if resource_includes.any?
		end
  end
end

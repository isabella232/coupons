require 'rails/generators/active_record'

class Coupons::InstallGenerator < ActiveRecord::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :name, type: :string, required: false, default: 'nothing'

  def create_initializer
    template 'initializer.erb', 'config/initializers/coupons.rb'
    migration_template "migration.rb", "db/migrate/setup_coupons.rb"
  end
end

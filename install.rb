# Install hook code here
require 'fileutils'

puts "** Installing chinese_regions Plugin"

puts "** Installing chinese_regions models"
model_src_path = File.join(RAILS_ROOT, '/vendor/plugins/chinese_regions/generators/models/')
model_dest_path = File.join(RAILS_ROOT, '/app/models/')
['region.rb', 'city.rb', 'district.rb'].each do |file|
  FileUtils.cp(File.join(model_src_path, file), File.join(model_dest_path, file))
end

puts "** Installing chinese_regions migrations"
migration_src_path = File.join(RAILS_ROOT, '/vendor/plugins/chinese_regions/generators/migrations/')
migration_dest_path = File.join(RAILS_ROOT, '/db/migrate/')
FileUtils.mkdir(migration_dest_path) unless File.exists?(migration_dest_path)
['create_regions.rb', 'create_cities.rb', 'create_districts.rb'].each do |file|
  FileUtils.cp(File.join(migration_src_path, file), File.join(migration_dest_path, Time.new.getutc.strftime("%Y%m%d%H%M%S") + "_" + file))
  sleep 1
end

puts "** Successfully installed chinese_regions Plugin"

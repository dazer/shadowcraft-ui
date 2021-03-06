require File.join(Rails.root, "lib", "jsmin.rb")

require 'open-uri'
require File.join(Rails.root, "lib", "wow_armory", "document")
require File.join(Rails.root, "lib", "wow_armory", "item")
require File.join(Rails.root, "lib", "wow_armory", "character")
require File.join(Rails.root, "lib", "wow_armory", "talents")

STAT_MAP = {}
map = YAML::load(open(File.join(Rails.root, "app", "xml", "stat_map.yml")).read).each_with_index do |v, i|
  STAT_MAP[v] = i
end
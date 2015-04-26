require "rspec"
require "i18n-spec"

def all_locale_yml_files
  @all_locale_yml_files ||= Dir[File.join(locale_yml_files_dir, "translations/*.yml")]
end

def all_non_english_locale_yml_files
  @all_non_english_locale_yml_files ||= all_locale_yml_files - [english_locale_yml_file]
end

def english_locale_yml_file
  @english_locale_yml_file ||= File.join(locale_yml_files_dir, "translations/en.yml")
end

private

def locale_yml_files_dir
  @locale_yml_files_dir ||= File.join(File.dirname(__FILE__), "..")
end

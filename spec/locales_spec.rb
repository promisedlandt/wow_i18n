require "spec_helper"

all_locale_yml_files.each do |locale_file|
  describe "file validity" do
    it_behaves_like "a valid locale file", locale_file
  end
end

all_non_english_locale_yml_files.each do |locale_file|
  describe locale_file do
    it { is_expected.to be_a_complete_translation_of english_locale_yml_file }
  end
end

require "wow_i18n/version"

module WowI18n
  class << self
    def import(*requested_locales)
      locales = Array(requested_locales).compact

      pattern = locales.empty? ? "*" : "{#{ locales.join "," }}"

      files = Dir[File.join(File.dirname(__FILE__), "..", "translations/#{ pattern }.yml")]
      I18n.load_path.concat(files)
    end
  end
end

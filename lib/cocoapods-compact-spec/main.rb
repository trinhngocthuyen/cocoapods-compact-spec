require_relative "dsl"

module Pod
  class Specification
    alias original_initialize initialize

    def initialize(*args, &block)
      original_initialize(*args, &block)
      dsl_config = Pod::CompactSpecConfig.instance.dsl_config
      dsl_default = dsl_config[:default] || {}
      default = lambda do |key, value|
        send("#{key}=", dsl_default[key] || value) if attributes_hash[key].nil?
      end

      dummy_link = "https://github.com/dummy/link"
      default.call(:version, "0.0.1")
      default.call(:summary, name)
      default.call(:description, summary)
      default.call(:homepage, dummy_link)
      default.call(:license, "MIT")
      default.call(:authors, "dummy@gmail.com")
      default.call(:source, { :git => dummy_link, :tag => version })
      default.call(:source_files, "Sources/**/*")
      default.call(:platforms, { :ios => "10.0" })
      dsl_config[:extra]&.call(self)
    end
  end
end

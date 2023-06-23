require_relative "config"

module Pod
  class Podfile
    module DSL
      def config_compact_spec(options)
        Pod::CompactSpecConfig.instance.dsl_config = options
      end
    end
  end
end

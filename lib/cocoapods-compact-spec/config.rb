module Pod
  class CompactSpecConfig
    attr_accessor :dsl_config

    def initialize
      @dsl_config = {}
    end

    def self.instance
      @instance ||= CompactSpecConfig.new
    end
  end
end

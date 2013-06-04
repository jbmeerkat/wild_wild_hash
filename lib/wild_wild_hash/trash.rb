module WildWildHash

  class Trash

    def initialize(args)
      self.class.options.each do |option|
        if option[:from]
          attr_name = option[:name]
          alias_name = option[:from]
          value = args[alias_name]
          value = option[:with].call(value) if option[:with]
        else
          attr_name = option[:name]
          value = args[attr_name]
          value = option[:transform_with].call(value) if option[:transform_with]
        end

        self.class.class_eval do
          attr_accessor attr_name
        end

        send "#{attr_name}=", value
      end
    end

    private
    def self.property(name, options={})
      @options ||= []
      options[:name] = name
      @options << options
    end

    def self.options
      @options
    end

  end

end

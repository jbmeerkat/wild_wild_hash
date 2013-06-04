module WildWildHash
  class Dash

    def initialize(attributes={})
      attributes = self.class.property_default.merge attributes
      attributes.each do |key, value|
        send("#{key}=", value)
      end
    end

    def [](key)
      send(key)
    end

    def []=(key, value)
      send("#{key}=", value)
    end

    def self.property(name, options={})
      @options ||= {}
      [:default, :required].each do |type|
        @options[type] ||= {}
        if options[type]
          @options[type][name] = options[type]
        end
      end
      define_method name do
        instance_variable_get(:"@#{name}")
      end
      define_method "#{name}=" do |value|
        if value.nil? && self.class.property_required[name]
          raise ArgumentError.new('require property')
        end
        instance_variable_set(:"@#{name}", value)
      end
      nil
    end

    def self.property_default
      @options[:default]
    end

    def self.property_required
      @options[:required]
    end

  end
end

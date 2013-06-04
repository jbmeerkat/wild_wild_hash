module WildWildHash
  class Mash < Hash

    def method_missing(method_name, *arguments, &block)
      key = method_name.to_s.chomp("=").chomp("?").intern

      define_singleton_method key do
        self[key]
      end

      setter_name = "#{key.to_s}=".intern
      define_singleton_method setter_name do |val|
        self[key] = val
      end

      checker_name = "#{key.to_s}?".intern
      define_singleton_method checker_name do
        key? key
      end

      send method_name, *arguments
    end

    def respond_to?(method)
      super || key?(method)
    end

  end
end
module WildWildHash
  module Extensions

    module MethodAccess

      def method_missing(method_name, *arguments, &block)
        key = method_name.to_s.chomp("=").chomp("?").intern
        define_getter key, key

        setter_name = "#{key.to_s}=".intern
        define_setter setter_name, key

        checker_name = "#{key.to_s}?".intern
        define_checker checker_name, key

        send method_name, *arguments
      end

      def respond_to_missing?(method, include_private = false)
        true
      end

      private
      def define_getter(name, key, &block)
        define_singleton_method name do
          self[key]
        end
      end

      def define_setter(name, key, &block)
        define_singleton_method name do |val|
          self[key] = val
        end
      end

      def define_checker(name, key, &block)
        define_singleton_method name do
          key? key
        end
      end

    end

  end
end

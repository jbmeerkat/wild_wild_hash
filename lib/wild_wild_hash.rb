require "wild_wild_hash/version"

module WildWildHash
  autoload :Mash, 'wild_wild_hash/mash'

  module Extensions
    autoload :MethodAccess, 'wild_wild_hash/extensions/method_access'
  end

end

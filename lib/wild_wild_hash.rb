require "wild_wild_hash/version"

module WildWildHash
  autoload :Mash, 'wild_wild_hash/mash'
  autoload :Dash, 'wild_wild_hash/dash'
  autoload :Trash, 'wild_wild_hash/trash'

  module Extensions
    autoload :MethodAccess, 'wild_wild_hash/extensions/method_access'
  end
end

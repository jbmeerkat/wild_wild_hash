class Person < WildWildHash::Dash
  property :name, required: true
  property :email
  property :occupation, default: 'Rubist'
end

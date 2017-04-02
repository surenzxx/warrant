class Person
  include Mongoid::Document
  field :name, type: String
  field :zip, type: String
  field :date, type: String
  field :plate, type: String
end

class Criminal
  include Mongoid::Document
  field :name, type: String
  field :zip, type: String
  field :date, type: String
  field :plate, type: String
  def self.search(search)
    if search
        find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
        find(:all)
    end
  end
end

Spree::Product.class_eval do
  has_many :downloadables, :as => :viewable, :order => :position, :dependent => :destroy
end


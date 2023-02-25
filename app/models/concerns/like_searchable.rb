module LikeSearchable
  extend ActiveSupport::Concern

  included do
    scope :like, -> (key, value) do 
      self.where(self.arel_table[key].maches("%#{value}%"))
    end
  end
end
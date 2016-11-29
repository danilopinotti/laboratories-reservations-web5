class Period < ActiveRecord::Base
  has_many :begin_reserve, foreign_key: :begin_at_id, class_name: :Reserve
  has_many :end_reserve, foreign_key: :end_at_id, class_name: :Reserve
end

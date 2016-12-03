class Period < ActiveRecord::Base
  has_many :begin_reserve, foreign_key: :begin_at_id, class_name: :Reserve
  has_many :end_reserve, foreign_key: :end_at_id, class_name: :Reserve

  def begin_at_formated
    self.begin_at.strftime("%H:%m")
  end

  def end_at_formated
    self.end_at.strftime("%H:%m")
  end
end

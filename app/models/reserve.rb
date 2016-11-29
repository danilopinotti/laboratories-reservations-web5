class Reserve < ActiveRecord::Base
  belongs_to :laboratory
  belongs_to :user
  belongs_to :begin_at, class_name: :Period
  belongs_to :end_at, class_name: :Period
end

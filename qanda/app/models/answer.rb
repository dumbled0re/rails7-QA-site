class Answer < ApplicationRecord
  # questionモデルと紐付けている
  belongs_to :question
end

class Question < ApplicationRecord
  # has_manyで1対多の関係を表現している(answersテーブル), dependent: :destroyで親テーブルのレコードが削除された場合に子テーブルのレコードも削除される
  has_many :answers, dependent: :destroy
  # presenceで未入力チェックが行われる
  validates :title, presence: true
  validates :name, presence: true
  # lengthで文字数制限が行われる
  validates :content, presence: true, length: { maximum: 5 }
end

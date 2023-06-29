class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :name
      t.text :content
      # questionモデルと紐付けている、null: falseで空の値を許可しない、foreign_key: trueで外部キーを設定している(親テーブルが存在しない場合は子テーブルに保存できない)
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end

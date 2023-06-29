class AnswersController < ApplicationController
  # 回答の登録
  def create
    # p "params: #{params}"
    @question = Question.find(params[:question_id])
    @question.answers.create(answers_params)
    redirect_to question_path(@question)
  end

  # 回答の削除
  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    # status: :see_otherは303のステータスコードを返す(新規リソースに移動)
    redirect_to @question, status: :see_other
  end

  private
  def answers_params
    params.require(:answer).permit(:name, :content)
  end
end

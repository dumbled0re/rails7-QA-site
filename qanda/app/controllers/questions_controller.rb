class QuestionsController < ApplicationController
  # 質問一覧表示
  def index
    @question = Question.all
    p @question
  end

  # 質問詳細ページ表示(get: リダイレクト先)
  def show
    # p params[:id]
    @question = Question.find(params[:id])
    # p @question
  end

  # 質問の作成(get)
  def new
    # Questionモデルを作成
    @question = Question.new
  end

  # 質問の登録(post: newからpostするとcreateが呼ばれる)
  def create
    @question = Question.new(question_params)
    # 保存に成功した場合
    if @question.save
      # パスを指定しなくてもよしなにrailsがしてくれる
      redirect_to @question
    else
      # 保存に失敗した場合(422はバリデーションエラー: Unprocessable Entity)
      render :new, status: :unprocessable_entity
    end
  end

  # 質問の編集(get)
  def edit
    @question = Question.find(params[:id])
  end

  # 質問の更新(editからpostするとupdateが呼ばれる)
  def update
    @question = Question.find(params[:id])
    # updateメソッドが呼ばれる
    if @question.update(question_params)
      redirect_to @question
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # 質問の削除
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private
  # データの改ざん防止
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
end
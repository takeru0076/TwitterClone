class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    # @postに関連付けられたCommentモデルの新しいインスタンス（オブジェクト）を作成
    @comment = @post.comments.build(comment_params)
    # コメントの所有者を現在ログインしているユーザーに設定する
    @comment.user = current_user

    @comment.save
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

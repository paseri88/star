class ChatsController < ApplicationController
    before_action :authenticate_user!

  def create
    post = Post.find(params[:post_id])
    chat = post.chats.build(chat_params) #buildを使い、contentとtweet_idの二つを同時に代入
    chat.user_id = current_user.id
    if chat.save
      flash[:success] = "コメントしました"
      redirect_back(fallback_location: root_path)
    else
      flash[:success] = "コメントできませんでした"
      redirect_back(fallback_location: root_path)
    end
  end

  private

    def chat_params
      params.require(:chat).permit(:content)
    end
end

# tweer => post
# comments => chats
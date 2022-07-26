class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def study
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
      end
    end
  
    def sport
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
      end
    end
  
    def job
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
      end
    end

    def art
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
      end
    end
  
    def bed
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
      end
    end
  
    def other
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
      end
    end

    def home
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
      end
    end 

    def bot
    end
    
    def index
        if params[:search] == nil
          @posts= Post.all
        elsif params[:search] == ''
          @posts= Post.all
        else
          #部分検索
          @posts = Post.where("people LIKE ? ",'%' + params[:search] + '%')
        end
    end

    def new
       @post = Post.new
      end
      def create
        post = Post.new(post_params)
        post.user_id = current_user.id
        if post.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      def show
        @post = Post.find(params[:id])
        @chats = @post.chats
        @chat = Chat.new
      end
      def edit
        @post = Post.find(params[:id])
      end
      def update
        post = Post.find(params[:id])
        if post.update(post_params)
          redirect_to :action => "show", :id => post.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to request.referer
      end
    
      private
      def post_params
        params.require(:post).permit(:people, :target, :category)
      end
end

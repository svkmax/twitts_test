class TweetsController < ApplicationController
  def index
    @page = 0
  end

  def search
    @page = params[:page].to_i
    @tweets = current_user.twitter.search(params[:search_text], result_type: "recent")
    @tweets = @tweets.attrs[:statuses][(@page*5)..(@page*5+4)]
    @search_text = params[:search_text]
    render :index
  end
end

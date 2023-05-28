class TweetsController < ApplicationController
    def create
        @tweet = Tweet.new(tweet_params.merge(user: current_user))

        if @tweet.save
            flash[:notice] = "Tweet saved successfully"
            redirect_to dashboard_path
        else
            flash[:notice] = "Tweet did not saved successfully"
            redirect_to dashboard_path
        end
    end

    private

    def tweet_params
        params.require(:tweet).permit(:body)
    end
end

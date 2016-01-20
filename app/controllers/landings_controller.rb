class LandingsController < ApplicationController

  def show
    reverse_rants = Post.all.reverse
    if reverse_rants.length > 4
      @recent_rants = reverse_rants
    else
      @recent_rants = reverse_rants[0,5]
    end

  end

end

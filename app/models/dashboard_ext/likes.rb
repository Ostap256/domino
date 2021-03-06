module DashboardExt
  module Likes

    def like!(user)
      if user.can_change_mood?(self)
        self.likes += 1
        update_mood(user, self.likers)
        self.save!
      else
        :cannot
      end
    end

    def dislike!(user)
      if user.can_change_mood?(self)
        self.likes -= 1
        update_mood user, self.dislikers
        self.save!
      else
        :cannot
      end
    end

    def update_mood(user, mood)
      mood << user.id if mood
    end

    def popover_dislikers
      self.dislikers.first(10).map { |u_id| User.find_by_id u_id }
    end

    def popover_likers
      self.likers.first(10).map { |u_id| User.find_by_id u_id }
    end

    def likes_class
      return 'likes' if self.likes == 0
      self.likes > 0 ? 'good-likes' : 'bad-likes'
    end

  end
end
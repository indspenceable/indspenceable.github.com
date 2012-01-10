---
layout: post
title: Heroku Migration Issue
---

Just ran into a rather silly problem. I'm using Heroku to host my [leaderboard app](leaderboard.indspenceable.com), I needed to add a column:
    def change
      add_column :matches, :user_id, :integer
    end
When I ran this migration on Heroku, there were no errors; when I opened the console, however, it seemed as though the column had not been successfully added. Eventually, I found [this post](http://stackoverflow.com/questions/5171696/rails-3-migration-not-working-on-heroku) suggesting to try doing:
    $ heroku reset
which worked for me. I'm not sure what the rule is for when you need to reset after a migration on Heroku, but if you're having problems it's worth a shot.
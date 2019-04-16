class UserSerializer < ActiveModel::Serializer
  attributes :username, :id, :games

  def games
    self.object.games.map do |game|
        {score: game.score,
        longest_word: game.longest_word,
        time: game.time}
    end

  end

end

module Users
  class Enlist
    def self.call(game)
      new(game).call
    end

    def initialize(game)
      @game = game
    end

    def call
      Player.create!(nickname: nickname)
    end

    attr_reader :game

    private

    def nickname
      "Player #{game.players.count+1}"
    end
  end
end
require_relative 'player'
class Game

  def attack(player)
    player.reduce_hp(Player::DEFAULT_DAMAGE)
  end
end

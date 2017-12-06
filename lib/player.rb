class Player

  DEFAULT_HP = 100

  attr_reader :name
  attr_accessor :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def reduce_hp(amount=10)
    self.hp -= amount
  end
end

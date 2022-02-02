class Janken
  attr_accessor :hand

  def initialize(hand)
    @hand = hand
  end

  def battle(other)
    puts '#########'
    if other.hand == 'g'
      if hand == 'g'
        puts 'you draw'
      elsif hand == 'c'
        puts 'you lose'
      elsif hand == 'p'
        puts 'you win'
      end
    end

    if other.hand == 'c'
      if hand == 'g'
        puts 'you win'
      elsif hand == 'c'
        puts 'you draw'
      elsif hand == 'p'
        puts 'you lose'
      end
    end

    if other.hand == 'p'
      if hand == 'g'
        puts 'you lose'
      elsif hand == 'c'
        puts 'you win'
      elsif hand == 'p'
        puts 'you draw'
      end
    end
  end
end

# ハンド作成
you = Janken.new('g')
other = Janken.new('p')
p you.hand
p other.hand
# 勝ち負け判断
you.battle(other)

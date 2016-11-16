class Array
  define_method(:queen_attack?) do |enemy|
    queenX = self[0].to_i
    queenY = self[1].to_i
    enemyX = enemy[0].to_i
    enemyY = enemy[1].to_i

    if queenY == enemyY # Horizontal
      true
    elsif queenX == enemyX
      true
    elsif queenX.-(enemyX) == queenY.-(enemyY)  # Diagonally
      true
    else
      false
    end
  end
end

# Metodos para todo (no dejar codigo en el "aire")
# Revisar indentacion
# Naming: nombres completos de variables y en ingles
# Menos comentarios mas metodos :)
PLAYER_ONE = 0
PLAYER_TWO = 1

def main()
  game = initialize_game()
  while !game_should_end(game)
    game = turn(game, PLAYER_ONE)
    break if game_should_end(game)
    game = turn(game, PLAYER_TWO) 
  end
  # congrats_winner(game[:winner])
end

def initialize_game()
  players = [initialize_player(PLAYER_ONE, "x"), initialize_player(PLAYER_TWO, "o")]
  return { board: initialize_board, players: players, winner: nil }
end

def initialize_player(number, symbol)
  print "Nombre del jugador #{number + 1}: "
  return { name: gets.chomp, symbol: symbol }
end

def initialize_board
  [
    [" "," "," "," ", " "],
    [" "," "," "," ", " "],
    [" "," "," "," ", " "],
    [" "," "," "," ", " "]
  ]
end

def turn(game, current_player)
  player = game[:players][current_player]
  print_board(game[:board])
  play = get_play(player)
  # if validate_play(game, play)
  #   Esto es un bucle? que pasa si la jugada es invalida?
  #   game = save_play(game, play, player)
  #   game = validate_winner(game, play)
  # end
  game
end

def print_board(board)
  puts "Tablero actual"
  print_header(board[0].length)
  board.each do |row|
    row.each do |tile|
      print "[#{tile}]"
    end
    puts
  end
  puts
end

def print_header(length)
  header = ""
  for i in 1..length
    header += " #{i} "
  end
  puts header
end

def get_play(player)
  print "#{player[:name]}, seleccione la columna que desea jugar: "
	gets.chomp.to_i
end

def game_should_end(game)
  # Revisar si el game parameter tiene un winner
  # Revisar si el tablero esta completamente lleno (empate?)
  return true
end

main()
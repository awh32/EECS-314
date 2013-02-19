# Mastermind -- A game of sequences

# Main text of the program
		.text
main:
		la		$a0, welcome_msg	# load the addr of welcome_msg into $a0
		li		$v0, 4				# 4 is the print_string syscall.
		syscall
		
		#Ask player 1 for a 4-digit sequence that player 2 will guess
		la		$a0, player1_prompt	# load the addr of player1_prompt into $a0
		li		$v0, 4				# 4 is the print_string syscall.
		syscall

		#Ask player 2 to guess the sequence
		la		$a0, player2_prompt	# load the addr of player2_prompt into $a0
		li		$v0, 4				# 4 is the print_string syscall.
		syscall
		
		li		$v0, 10				# 10 is the exit syscall
		syscall						# execute syscall

# Data for the program:
		.data
welcome_msg:		.asciiz "Are you a Mastermind?!\n"
player1_prompt:		.asciiz "Player 1, enter a 4-digit sequence:\n"
player2_prompt:		.asciiz "Player 2, guess the 4-digit sequence!\n"

	
# end of Mastermind
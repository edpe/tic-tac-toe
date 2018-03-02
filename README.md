# Tic-Tac-Toe

The rules of tic-tac-toe are as follows:

There are two players in the game (X and O)
Players take turns (until the game is over)
A player can claim a field if it is not already taken
A turn ends when a player claims a field
A player wins if they claim all the fields in a row, column or diagonal
A game is over if a player wins
A game is over when all fields are taken

I have decided to break this down into two MVP versions:

## V1 - Players decide who wins

There are two players in the game (X and O)
Players take turns until the game is over
A player can claim a field if it is not already taken
A turn ends when a player claims a field
A game is over when all fields are taken

## V2 - Game decides who wins

A player wins if they claim all the fields in a row, column or diagonal
A game is over if a player wins

## Interaction

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line.

The user will interact with the game as follows:

The game uses a 3x3 grid and players choose their position using the numbers 0 - 9 as follows:

|1|2|3|
|4|5|6|
|7|8|9|

```
game = Game.new('X') #player X starts
game.play(4) #player X fills the centre square

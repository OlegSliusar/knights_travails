# Knight's Travails

A [knight](https://en.wikipedia.org/wiki/Knight_(chess)) in chess can move to any square on the standard 8x8 chess board from any other square on the board, given enough turns ([see this animation](https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Knight%27s_tour_anim_2.gif/250px-Knight%27s_tour_anim_2.gif)).

Its basic move is two steps forward and one step to the side. It can face any direction.

## What it does

The `knight_moves()` function takes array as an input, where `knight_moves([row, column],[row, column])`, and returns the shortest path from one location to another.
For example:
- `knight_moves([0,0],[1,2]) #=> [[0,0],[1,2]]`
- `knight_moves([0,0],[3,3]) #=> [[0,0],[1,2],[3,3]]`
- `knight_moves([3,3],[0,0]) #=> [[3,3], [2,1], [0,0]]`
- `knight_moves([0,0],[7,7]) #=> [[0,0], [1,2], [0,4], [1,6], [3,7], [5,6], [7,7]]`

Coordinates on the board are:

![chessboard](http://image.prntscr.com/image/bea0e9f379844ea2b48fcf1b863a0e4a.png)

## How to test it

Run `ruby test.rb` from the project directory to test it out. (You need to have Ruby installed on your local machine and project repository cloned using git, or downloaded as `.zip` file)

The test script output will be like this:
```
You go from [3, 3] to [4, 3]...
You made it in 3 moves. Here's your path:
[3, 3]
[1, 4]
[3, 5]
[4, 3]

```

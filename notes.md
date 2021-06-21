# Math Game

## Planning

### Nouns / Classes Description
- Player
  - Track player lives
  - Allow player to answer question and end turn
- Game
  - Track whose turn it is (state)
  - Determine a winner (behaviour)
  - Track if game is ongoing or over (state)
  - Start and end game (behaviour)
- Question
  - Determine questions and answers (state)
  - Determine if an answer is correct (behaviour)
  
### Game Class Details
#### State (variables)
- Players (1 & 2)
- Turn (whose turn it is)
- Question object for generating questions and validating answers
- Game mode: play vs over
- Winner
 
#### Methods
- Start game (game loop)
- Resolve current round / question
- Game Over?
- Next player / question
- End game (menu or exit program completely)

### Question Class Details
#### State (variable)
- Current question
- Current answer

#### Methods
- Generate question and answer and update state
- Check if provided answer is correct or not (correct? answer -> bool)

### Player
#### State (variables)
- Lives remaining
- Name

#### Methods
- Decrement lives
- Reset lives (for new game)
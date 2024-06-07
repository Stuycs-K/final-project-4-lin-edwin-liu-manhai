 boolean playerTurn = true;
  ArrayList<Pokemon> team1 = new ArrayList<Pokemon>();
  ArrayList<Pokemon> team2 = new ArrayList<Pokemon>();
  pokemonCharmander Charmander = new pokemonCharmander();
  pokemonSquirtle Squirtle = new pokemonSquirtle();
  pokemonBulbasaur Bulbasaur = new pokemonBulbasaur();
  pokemonEevee Eevee = new pokemonEevee();
  pokemonPikachu Pikachu = new pokemonPikachu();
  pokemonMewtwo Mewtwo = new pokemonMewtwo();
  Trainer player = new Trainer("Sasuke", team1);
  Trainer gymLeader = new Trainer("Itachi", team2);
  final int OVERWORLD = 0;
  final int BATTLE = 1;
  int gameState = OVERWORLD;
  boolean battleOver = false;
  String battleMessage;
  final int TILE_SIZE = 32;
  final int MAP_WIDTH = 20;
  final int MAP_HEIGHT = 15;
  int playerX = 9;
  int playerY = 12;
  int trainerX = 9;
  int trainerY = 2;
  final int playerturn = 0;
  final int playerresult = 1;
  final int opponentturn = 2;
  final int opponentresult = 3;
  int battleState = playerturn;
  String moveResultMessage = "";
  String moveResult = "";
 
  int[][] map = {
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  {0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1},
  };
 
 
  public void drawOverworld(){
    final int TILE_SIZE = 32;
    final int MAP_WIDTH = 20;
    final int MAP_HEIGHT = 15;
    gameState = OVERWORLD;
    for (int y = 0; y < MAP_HEIGHT; y++) {
      for (int x = 0; x < MAP_WIDTH; x++) {
        drawTile(map[y][x], x * TILE_SIZE, y * TILE_SIZE);
      }
    }
 
    fill(255, 0, 0);
    rect(playerX * TILE_SIZE, playerY * TILE_SIZE, TILE_SIZE, TILE_SIZE);
    rect(trainerX * TILE_SIZE, trainerY * TILE_SIZE, TILE_SIZE, TILE_SIZE);
  }

  public void drawTile(int tileType, int x, int y) {
    if (tileType == 0) {
      PImage tree = loadImage("Tree.png");
      tree.resize(32,32);
      image(tree,x,y);
    }
    
    else if (tileType == 1) {
      PImage tile = loadImage("Tile.png");
      tile.resize(32,32);
      image(tile,x,y);
    }
  }
 
  boolean checkTrainerProximity() {
  int dx = abs(playerX - trainerX);
  int dy = abs(playerY - trainerY);
  return (dx + dy == 1);
  }

 
  public void drawBattle(Trainer opponent, Trainer player){
    textSize(20);
    if (player.getTeamNumber() == 0 || opponent.getTeamNumber() == 0) {
      battleOver = true;
      if (player.getTeamNumber() == 0) {
        battleMessage = "You lost the battle!";
        text(battleMessage, 300,300);
      } else {
        fill(0);
        battleMessage = "You won the battle!";
        text(battleMessage, 300,300);
      }
      text(battleMessage, 50, 410);
    } else {
      fill(0);
    text(opponent.getPokemon().getName(), 400 , 100);
    text("HP: " + opponent.getPokemon().getHP(), 400, 130);
    text(player.getPokemon().getName(), 100 , 300);
    text("HP: " + player.getPokemon().getHP(), 100, 330);
    drawHealthBar(player.getPokemon(), 100, 350);
    drawHealthBar(opponent.getPokemon(), 400, 150);
   fill(255);
   rect(0,380,640,100);
   fill(0);
    textSize(16);
     if (battleState == 0) {
    text("1. " + player.getPokemon().getMove1(), 50, 410);
    text("2. " + player.getPokemon().getMove2(), 50, 430);
    text("3. " + player.getPokemon().getMove3(), 350, 410);
    text("4. " + player.getPokemon().getMove4(), 350, 430);
    } else if (battleState == 1 || battleState == 3) {
       if (opponent.getPokemon().getHP() <= 0){
        moveResult = opponent.getPokemon().getName() + " fainted.";
      opponent.removeTeam();
      text(moveResult, 50, 440);
    }
    if (player.getPokemon().getHP() <= 0){
      moveResult = player.getPokemon().getName() + " fainted.";
      player.removeTeam();
      text(moveResult, 50, 440);
    }
        text(moveResultMessage, 50, 410);
    }
  }
  }
 
  public void drawHealthBar(Pokemon pokemon, int x, int y) {
    fill(0);
    rect(x, y, 100, 10);
    float healthPercentage = (float) pokemon.getHP() / pokemon.getMaxHP();
    if (healthPercentage > 0.5){
    fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    rect(x, y, healthPercentage * 100, 10);
}

  void opponentTurn() {
    int move = int(random(1, 5));
    Pokemon pokemon = gymLeader.getPokemon();
    if (move == 1) {
      moveResultMessage = pokemon.move1(player.getPokemon());
    } else if (move == 2) {
      moveResultMessage = pokemon.move2(player.getPokemon());
    } else if (move == 3) {
      moveResultMessage = pokemon.move3();
    } else if (move == 4) {
      moveResultMessage = pokemon.move4();
    }
  }
 
  void keyPressed() {
    if (gameState == OVERWORLD) {
      if (keyCode == LEFT) {
        if (playerX > 0) playerX--;
      }
      else if (keyCode == RIGHT) {
        if (playerX < MAP_WIDTH - 1) playerX++;
      }
      else if (keyCode == UP) {
        if (playerY > 0) playerY--;
      }
      else if (keyCode == DOWN) {
        if (playerY < MAP_HEIGHT - 1) playerY++;
      }
    } else if (gameState == BATTLE) {
    if (battleState == 0 && battleOver == false) {
            if (key == '1') {
                moveResultMessage = player.getPokemon().move1(gymLeader.getPokemon());
                battleState = 1;
            } else if (key == '2') {
                moveResultMessage = player.getPokemon().move2(gymLeader.getPokemon());
                battleState = 1;
            } else if (key == '3') {
                moveResultMessage = player.getPokemon().move3();
                battleState = 1;
            } else if (key == '4') {
                moveResultMessage = player.getPokemon().move4();
                battleState = 1;
            }
        } else if (battleState == 1) {
            battleState = 2;
        } else if (battleState == 2) {
            opponentTurn();
            battleState = 3;
        } else if (battleState == 3) {
            battleState = 0;
        }
    }
  }
  
  void setup(){
    size(640, 480);
    player.addTeam(Charmander);
    player.addTeam(Bulbasaur);
    player.addTeam(Squirtle);
    gymLeader.addTeam(Pikachu);
  }
 
  void draw() {
  background(255);
 
  if (gameState == OVERWORLD) {
    drawOverworld();
    if (checkTrainerProximity()) {
      gameState = BATTLE;
    }
  } else if (gameState == BATTLE) {
    drawBattle(gymLeader,player);
  }
 
}

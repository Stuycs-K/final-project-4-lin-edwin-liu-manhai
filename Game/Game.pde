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
 
  int[][] map = {
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  {0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2},
  };
 
  public void textBox(int row, int col, int width, int height, String text){
    rect(col,row,width,height);
    text(text, col+20, row+20);
  }
 
  public void colorByPercent(float percentage){
    fill(255 * percentage, 255 * (1 - percentage), 0);
  }
 
  public void drawOverworld(){
    final int TILE_SIZE = 32;
    final int MAP_WIDTH = 20;
    final int MAP_HEIGHT = 15;
    gameState = OVERWORLD;
   
    //drawScreen();

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
      fill(34, 139, 34);
    }
    else if (tileType == 1) {
      fill(0, 0, 255);
    }
    else if (tileType == 2) {
      fill(139, 69, 19);
    }
    rect(x, y, TILE_SIZE, TILE_SIZE);
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
      } else {
        battleMessage = "You won the battle!";
      }
    } else {
      text(player.getPokemon().getName(), 150 , 150);
    text("HP: " + player.getPokemon().getHP(), 150, 200);

    text(opponent.getPokemon().getName(), 300 , 150);
    text("HP: " + opponent.getPokemon().getHP(), 300, 200);
   
    textSize(16);
    text("1.Move 1", 50 , 300);
    text("2.Move 2", 50 , 350);
    text("3.Move 3", 50 , 400);
    text("4.Move 4", 50 , 450);
      if (opponent.getPokemon().getHP() <= 0){
      opponent.removeTeam();
    }
    if (player.getPokemon().getHP() <= 0){
      player.removeTeam();
    }
  }
  }
 
 
  public void quit(){
    fill(0);
    textSize(30);
    String message = "You have embraced cowardice!";
    textBox(50,50,300,300,message);
  }
 
 
  void opponentTurn() {
    int move = int(random(1, 5));
    String damage = "";
    Pokemon pokemon = gymLeader.getPokemon();
    if (move == 1) {
      damage = pokemon.move1(player.getPokemon());
    } else if (move == 2) {
      damage = pokemon.move2(player.getPokemon());
    } else if (move == 3) {
      damage = pokemon.move3();
    } else if (move == 4) {
      damage = pokemon.move4();
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
    }
    if (playerTurn && player.getTeamNumber() != 0 && gymLeader.getTeamNumber() != 0) {
      if (key == '1') {
        player.getPokemon().move1(gymLeader.getPokemon());
      } else if (key == '2') {
        player.getPokemon().move2(gymLeader.getPokemon());
      } else if (key == '3') {
        player.getPokemon().move3();
      } else if (key == '4') {
        player.getPokemon().move4();
      }
      else if (key == 'q'){
        quit();
      }
      playerTurn = false;
      opponentTurn();
      playerTurn = true;
    }
  }
  void setup(){
    size(640, 480);
    player.addTeam(Charmander);
    player.addTeam(Bulbasaur);
    player.addTeam(Squirtle);
    gymLeader.addTeam(Mewtwo);
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
  println(frameRate);
 
}

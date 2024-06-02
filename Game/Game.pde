class Game{
  boolean playerTurn = true;
  ArrayList<Pokemon> team1 = new ArrayList<Pokemon>(4);
  ArrayList<Pokemon> team2 = new ArrayList<Pokemon>(4);
  Trainer player = new Trainer("Sasuke", PVector(300,300), team1);
  Trainer gymLeader = new Trainer("Itachi", PVector(300,0), team2);
  final int OVERWORLD = 0;
  final int BATTLE = 1;
  int gameState;
  boolean battleOver = false;
  String battleMessage;
  final int TILE_SIZE = 32;
  final int MAP_WIDTH = 20;
  final int MAP_HEIGHT = 15;
  int playerX = 5;
  int playerY = 5;
  
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

    for (int y = 0; y < MAP_HEIGHT; y++) {
      for (int x = 0; x < MAP_WIDTH; x++) {
        drawTile(map[y][x], x * TILE_SIZE, y * TILE_SIZE);
      }
    }
  
    fill(255, 0, 0);
    rect(playerX * TILE_SIZE, playerY * TILE_SIZE, TILE_SIZE, TILE_SIZE);
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

  
  //public void switchOverworld(){
  //}
  
  public void drawBattle(Trainer opponent, Trainer player){
    fill(0);
    textSize(20);
    text(player.getPokemon().name, 50, 100);
    text("HP: " + player.getPokemon().getHP(), 50, 130);

    text(opponent.getPokemon().name, 550, 100);
    text("HP: " + opponent.getPokemon().getHP(), 550, 130);

    textSize(18);
    text("Let's get it rumbling!", 50, 300, 700, 200);

    if (!battleOver) {
      textSize(16);
      textBox(50,50,300,300,"1. Move 1");
      textBox(50,50,300,350,"2. Move 2");
      textBox(50,50,350,300,"3. Move 3");
      textBox(50,50,350,350,"4. Move 4");
    }
    
    if (player.getPokemon().getHP() <= 0 || opponent.getPokemon().getHP() <= 0) {
      battleOver = true;
      if (player.getPokemon().getHP() <= 0) {
        battleMessage = "You lost the battle!";
      } else {
        battleMessage = "You won the battle!";
      }
    }
  }
  
  //public void switchBattle(){
  //}
  
  //public Trainer createRandomTrainer(){
  //}
  
  
  public void quit(){
    textSize(30);
    String message = "You have embraced cowardice!";
    textBox(messsage,50,50,300,300);
  }
  
  public void clearArea(int height, int weight, int row, int col){
  }
  
  public void run(int opponentTeam, int playerTeam){
    
  }
  
  public void drawBackground(){
    background(255);    
  }
  
  public void drawScreen(){
    drawBackground();
    textBox(50, 50, 300, 100, "Welcome to Epic Battle!");
  }
  
  void opponentTurn() {
    int move = int(random(1, 5));
    int damage = 0;
    if (move == 1) {
      gymLeader.getPokemon().move1();
      damage = gymLeader.getPokemon().move1();
    } else if (move == 2) {
      gymLeader.getPokemon().move2();
      damage = gymLeader.getPokemon().move2();
    } else if (move == 3) {
      gymLeader.getPokemon().move3();
      damage = gymLeader.getPokemon().move3();
    } else if (move == 4) {
      gymLeader.getPokemon().move4();
      damage = gymLeader.getPokemon().move4();
    }
    battleMessage = gymLeader.getPokemon().getName() + " dealt " + damage + " damage!";
    textBox(100,100,100,100,battleMessage);
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
    if (playerTurn) {
      if (key == '1') {
        player.getPokemon().move1();
      } else if (key == '2') {
        player.getPokemon().move2();
      } else if (key == '3') {
        player.getPokemon().move3();
      } else if (key == '4') {
        player.getPokemon().move4();
      }
      playerTurn = false;
      delay(1000);
      opponentTurn();
      playerTurn = true;
    }
  }
  
  
  public void setup(){
    size(640, 480);
  }
  
  void draw() {
    background(255);
    if (gameState == OVERWORLD) {
      drawOverworld();
    }
  }
  
}
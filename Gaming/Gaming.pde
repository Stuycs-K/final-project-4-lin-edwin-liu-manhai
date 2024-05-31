class Game{
  boolean playerTurn = true;
  ArrayList<Pokemon> team = new ArrayList<Pokemon>(4);
  Trainer player;
  Trainer gymLeader;
  final int OVERWORLD = 0;
  final int BATTLE = 1;
  int gameState = BATTLE;
  boolean battleOver = false;
  String battleMessage;
  
  public void TextBox(int row, int col, int width, int height, String text){
    rect(col,row,width,height);
    text(text, col+20, row+20);
  }
  
  public void colorByPercent(float percentage){
    fill(255 * percentage, 255 * (1 - percentage), 0);
  }
  
  //public void drawOverworld(){
  //}
  
  //public void switchOverworld(){
  //}
  
  public void drawBattle(Trainer opponent, Trainer player){
    fill(0);
    textSize(20);
    text(player.getPokemon().name, 50, 100);
    text("HP: " + player.getPokemon().getHP(), 50, 130);
  
    text(gymLeader.getPokemon().name, 550, 100);
    text("HP: " + gymLeader.getPokemon().getHP(), 550, 130);
  
    textSize(18);
    text("Let's get it rumbling!", 50, 300, 700, 200);
  
    if (!battleOver) {
      textSize(16);
      text("1. Move 1", 50, 400);
      text("2. Move 2", 50, 430);
      text("3. Move 3", 50, 460);
      text("4. Move 4", 50, 490);
    }
  
  // Check for Battle Over
    if (player.getPokemon().getHP() <= 0 || gymLeader.getPokemon().getHP() <= 0) {
      battleOver = true;
      if (player.getPokemon().getHP() <= 0) {
        battleMessage = "You lost the battle!";
      } else {
        battleMessage = "You won the battle!";
      }
    }
  }

  public void drawBackground(){
    background(200);    
  }
  
  public void drawScreen(){
    drawBackground();
    TextBox(50, 50, 300, 100, "Welcome to Epic Battle!");
  }
  
  public void setup(){
    drawScreen();
  }
  
  void opponentTurn() {
    int move = int(random(1, 5));
    int damage = 0;
    if (move == 1) {
      gymLeader.getPokemon().move1(gymLeader.get.Pokemon());
      damage = gymLeader.getPokemon().move1();
    } else if (move == 2) {
      gymLeader.getPokemon().move2(gymLeader.get.Pokemon());
      damage = gymLeader.getPokemon().move2();
    } else if (move == 3) {
      gymLeader.getPokemon().move3(gymLeader.get.Pokemon());
      damage = gymLeader.getPokemon().move3();
    } else if (move == 4) {
      gymLeader.getPokemon().move4();
      damage = gymLeader.getPokemon().move4();
    }
    battleMessage = gymLeader.getPokemon().getName() + " dealt " + damage + " damage!";
    TextBox(100,100,100,100,battleMessage);
  }

  
  void keyPressed() {
    if (key == 'W'){
      player.move(getPosition().add(PVector(0,-10)));
    }
    if (key == 'A'){
      player.move(getPosition().add(PVector(-10,0)));
    }
    if (key == 'S'){
      player.move(getPosition().add(PVector(0,10)));
    }
    if (key == 'D'){
      player.move(getPosition().add(PVector(10,0)));
    }
    if (playerTurn) {
      if (key == '1') {
        player.getPokemon().move1(gymLeader.get.Pokemon());
      } else if (key == '2') {
        player.getPokemon().move2(gymLeader.get.Pokemon());
      } else if (key == '3') {
        player.getPokemon().move3(gymLeader.get.Pokemon());
      } else if (key == '4') {
        player.getPokemon().move4();
      }
      playerTurn = false;
      delay(1000);
      opponentTurn();
      playerTurn = true;
    }
  }
  
}

  

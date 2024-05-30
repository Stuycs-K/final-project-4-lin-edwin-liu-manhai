class Game{
  boolean playerTurn = true;
  int Pokemon = 0; 
  Trainer player;
  Trainer gymLeader;
  final int OVERWORLD = 0;
  final int BATTLE = 1;
  int gameState = BATTLE;
  boolean battleOver = false;
  
  public void drawText(String message, int startRow, int startCol){
    fill(0);
    text(message, startCol, startRow);
  }
  
  public void TextBox(int row, int col, int width, int height, String text){
    rect(col,row,width,height);
    drawText(text, col+20, row+20);
  }
  
  public void colorByPercent(float percentage){
    fill(255 * percentage, 255 * (1 - percentage), 0);
  }
  
  //public void drawOverworld(){
  //}
  
  //public void switchOverworld(){
  //}
  
  //public void drawBattle(Trainer opponent, Trainer player){
  //}
  
  //public void switchBattle(){
  //}
  
  //public Trainer createRandomTrainer(){
  //}
  
  //public Pokemon getRandomEnemyAttack(Trainer opponent, Trainer player){
  //}
  
  //public void quit(){
  //}
  
  public void clearArea(int height, int weight, int row, int col){
  }
  
  public void run(int opponentTeam, int playerTeam){
    
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
    battleMessage = opponentPokemon.name + " dealt " + damage + " damage!";
    Textbox(100,100,100,100,battleMessage);
  }

  
  void keyPressed() {
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
  
}

  

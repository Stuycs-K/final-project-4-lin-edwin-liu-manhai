public class Game{
  public void drawText(String message, int startRow, int startCol, int x, int y){
    text.go(startRow, startCol);
    text(message,x,y);
  }
  
  public void TextBox(int row, int col, int width, int height, String text){
  }
  
  public String colorByPercent(int hp, int maxHP){
  }
  
  public void drawOverworld(){
  }
  
  public void switchOverworld(){
  }
  
  public void drawBattle(Trainer opponent, Trainer player){
  }
  
  public void switchBattle(){
  }
  
  public Trainer createRandomTrainer(){
  }
  
  public Pokemon getRandomEnemyAttack(Trainer opponent, Trainer player){
  }
  
  public void quit(){
  }
  
  public void clearArea(int height, int weight, int row, int col){
  }
  
  public void run(int opponentTeam, int playerTeam){
  }
  
}

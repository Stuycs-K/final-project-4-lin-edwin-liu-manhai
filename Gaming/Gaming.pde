public class Game{
  public void drawText(String message, int startRow, int startCol){
    fill(0);
    text(message, startCol, startRow);
  }
  
  public void TextBox(int row, int col, int width, int height, String text){
    rect(col,row,width,height);
    drawText(text, col+20, row+20);
  }
  
  public String colorByPercent(float percentage){
    fill(255 * percentage, 255 * (1 - percentage), 0);
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
  
  public void drawBackground(){
    background(200);    
  }
  
  public void drawScreen(){
    size(1000,1000);
  }
  
}

public class Game{
  public void drawText(String message, int startRow, int startCol, int x, int y){
    text.go(startRow, startCol);
    text(message,x,y);
  }
  
  public void TextBox(int row, int col, int width, int height, String text){
  }
  
  public String colorByPercent(int hp, int maxHP){
    String output = "%2s" + hp+""+"/"+"%2s" + maxHP+"";
    double percent=hp/((double) maxHP);
    if (percent<0.25) {
      output.color(RED);
    }
    else if (percent<0.75) {
      output.color(YELLOW);
    }
    return output;
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
    
  }
  
  public void drawScreen(){
    size(1000,1000);
  }
  
}

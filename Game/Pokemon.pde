import java.util.Random;
public abstract class Pokemon{
  String name;
  String type;
  int HP;
  int maxHP;
  int attack;
  int defense;
  int speed;
  
  public abstract String move1(Pokemon opponent){
  };
  
  public abstract String move2(Pokemon opponent){
  };
  
  public abstract String move3(Pokemon opponent){
  };
  
  public abstract String move4(){
  };
  
  public void applyDamage(int amount){
  }
  
  public String getName(){
  }
  
  public int getHp(){
  }
  
  public int getMaxHP(){
  }
  
  public int getAttack(){
  }
  
  public int getDefense(){
  }
  
  public int getSpeed(){
  }
  
  public void setHP(){
  }
  
  public void setMaxHP(){
  }
  
  public void setAttack(){
  }
  
  public void setDefense(){
  }
  
  public void setSpeed(){
  }
  
  
}

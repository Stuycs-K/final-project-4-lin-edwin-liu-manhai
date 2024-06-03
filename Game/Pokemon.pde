public class Pokemon{
  String type;
  int HP;
  int maxHP;
  int attack;
  int defense;
  int speed;
  
  public Pokemon(String t, int h, int a, int d, int s){
    type = t;
    HP = h;
    maxHP = h;
    attack = a;
    defense = d;
    speed = s;
  }
  
  public void applyDamage(int amount){
    this.HP -= amount;
  }
  
  public int getHp(){
    return HP;
  }
  
  public int getMaxHP(){
    return maxHP;
  }
  
  public int getAttack(){
    return attack;
  }
  
  public int getDefense(){
    return defense;
  }
  
  public int getSpeed(){
    return speed;
  }
  
  public void setHP(int health){
    HP = health;
    if (HP > maxHP){
      HP = maxHP;
    }
  }
  
  public void setMaxHP(int health){
    maxHP = health;
  }
  
  public void setAttack(int atk){
    attack = atk;
  }
  
  public void setDefense(int def){
    defense = def;
  }
  
  public void setSpeed(int spd){
    speed = spd;
  }
  
}

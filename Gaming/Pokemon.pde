//import java.util.Random;
class Pokemon{
  String type;
  int HP;
  int maxHP;
  int attack;
  int defense;
  int speed;
  
  public Pokemon(String type, int HP, int maxHP,int attack, int defense, int speed){
    this.type = type;
    this.HP = HP;
    this. maxHP = maxHP;
    this.attack = attack;
    this.defense = defense;
    this.speed = speed;
  }
  
  
  public String move1(Pokemon opponent){
    return "Move 1";
  }
  
  public String move2(Pokemon opponent){
    return "Move 2";
  }
  
  public String move3(Pokemon opponent){
    return "Move 3";
  }
  
  public String move4(){
    return "Move 4";
  }
  
  public void applyDamage(int amount){
    this.HP -= amount;
  }
  
  public String getType(){
    return type;
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

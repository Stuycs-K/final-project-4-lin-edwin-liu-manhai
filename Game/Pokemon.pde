abstract class Pokemon{
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
  
  void applyDamage(int amount){
    this.HP -= amount;
  }
  
  public int getHP(){
    return HP;
  }
  
  public String getType(){
    return type;
  }
  
  public int getMaxHP(){
    return maxHP;
  }
  
  int getAttack(){
    return attack;
  }
  
  int getDefense(){
    return defense;
  }
  
  int getSpeed(){
    return speed;
  }
  
  void setHP(int health){
    HP = health;
    if (HP > maxHP){
      HP = maxHP;
    }
  }
  
  void setMaxHP(int health){
    maxHP = health;
  }
  
  void setAttack(int atk){
    attack = atk;
  }
  
  void setDefense(int def){
    defense = def;
  }
  
  void setSpeed(int spd){
    speed = spd;
  }
  
  abstract String move1(Pokemon opponent);
  abstract String move2(Pokemon opponent);
  abstract String move3();
  abstract String move4();
  abstract String name();
  
}

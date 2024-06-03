class Pokemon{
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
  
  int getHp(){
    return HP;
  }
  
  int getMaxHP(){
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
  
}

public class Pokemon{
  String name;
  String type;
  int HP;
  int maxHP;
  int attack;
  int defense;
  int speed;
  
  Pokemon(String name, String type, int HP, int attack, int defense, int speed) {
    this.name = name;
    this.type = type;
    this.HP = HP;
    this.attack = attack;
    this.defense = defense;
    this.speed = speed;
  }

  
  public String move1(Pokemon opponent){
    
  }
  
  public String move2(Pokemon opponent){
  }
  
  public String move3(Pokemon opponent){
  }
  
  public String move4(){
  }
  
  public void applyDamge(int amount){
    HP -= damage;
  }
  
  public String getName(){
    return name;
  }
  
  public int getHp(){
    return HP;
  }
  
  public int getMaxHP(){
    return MaxHP;
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
  
  public void setHP(int HP){
    this.HP = HP;
  }
  
  public void setMaxHP(int MaxHP){
    this.MaxHP = MaxHP;
  }
  
  public void setAttack(int attack){
    this.attack = attack;
  }
  
  public void setDefense(int defense){
    this.defense = defense;
  }
  
  public void setSpeed(int Speed){
    this.speed = Speed;
  }
  
  
}

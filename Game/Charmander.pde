public class Charmander extends Pokemon{
  boolean sun;
  public Charmander(){
    super(fire, 39, 60, 50, 65);
  }
  
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/other.getDefense() + 1);
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Scratch.";
  }

  public String move2(Pokemon opponent){
    int damage = 4;
    if (opponent.getType() == grass) {
      damage = 8;
    } else 
    if (opponent.getType() == water || opponent.getType() == fire) {
      damage = 2;
    }
    if (sun){
      damage*1.5;}
    opponent.applyDamage(damage*this.getAttack()/other.getDefense() + 1);
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Ember.";
  }

  public String move3(){
    this.attack *= 1.5;
    this.speed *= 1.5;
    return this + "used Dragon Dance. Charmander's attack and speed rose.";
  }

  public String move4(){
    sun = true;
    return this + "uses Sunny Day. It started to rain.";
  }
}

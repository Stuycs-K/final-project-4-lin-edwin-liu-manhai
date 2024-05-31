public class Charmander extends Pokemon{
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/other.getDefense());
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
    opponent.applyDamage(damage*this.getAttack()/other.getDefense());
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Ember.";
  }

  public String move3(){
    Growl
  }

  public String move4(){
    Sunny Day
  }
}

public class Pikachu extends Pokemon{
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/other.getDefense());
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Quick Attack.";
  }

  public String move2(Pokemon opponent){
    int damage = 4;
    if (opponent.getType() == water) {
      damage = 8;
    } else 
    if (opponent.getType() == grass || opponent.getType() == electric) {
      damage = 2;
    }
    opponent.applyDamage(damage*this.getAttack()/other.getDefense());
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Thunderbolt.";
  }

  public String move3(Pokemon opponent){
    Tail Whip
  }

  public String move4(){
    Agility
  }
}

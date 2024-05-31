public class Squirtle extends Pokemon{
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/other.getDefense());
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Pound.";
  }

  public String move2(Pokemon opponent){
    int damage = 4;
    if (opponent.getType() == fire) {
      damage = 8;
    } else 
    if (opponent.getType() == water || opponent.getType() == grass) {
      damage = 2;
    }
    opponent.applyDamage(damage*this.getAttack()/other.getDefense());
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Water Gun.";
  }

  public String move3(Pokemon opponent){
    Withdraw
  }

  public String move4(){
    Rain Dance
  }
}

public class Eevee extends Pokemon{
  public Eevee(){
    super("normal", 65, 65, 85, 75);
  }
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/other.getDefense() + 1);
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Tackle.";
  }

  public String move2(Pokemon opponent){
    opponent.applyDamage(8*this.getAttack()/other.getDefense() + 1);
    this.applyDamage(2*this.getAttack()/other.getDefense());
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Double-Edge. Eevee took recoil damage.";
  }

  public String move3(){
    this.attack *= 1.5;
    this.defense *= 1.5;
    return this + "used Calm Mind. Eevee's attack and defense rose.";
  }

  public String move4(){
    hp += (maxHP/2);
    return this + "used Recover. Eevee's was healed.";
  }
}

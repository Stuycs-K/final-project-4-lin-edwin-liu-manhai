class pokemonEevee extends Pokemon{
  public pokemonEevee(){
    super("normal", 65, 65, 85, 75);
  }
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ (4*this.getAttack()/opponent.getDefense() + 1) +
    " points of damage with Tackle.";
  }

  public String move2(Pokemon opponent){
    opponent.applyDamage(8*this.getAttack()/opponent.getDefense() + 1);
    this.applyDamage(2*this.getAttack()/opponent.getDefense());
    return this + " attacked "+ opponent + " and dealt "+ (8*this.getAttack()/opponent.getDefense() + 1) +
    " points of damage with Double-Edge. Eevee took recoil damage.";
  }

  public String move3(){
    this.attack *= 1.5;
    this.defense *= 1.5;
    return this + "used Calm Mind. Eevee's attack and defense rose.";
  }

  public String move4(){
    HP += (maxHP/2);
    return this + "used Recover. Eevee's was healed.";
  }
}

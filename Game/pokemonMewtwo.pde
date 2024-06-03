class pokemonMewtwo extends Pokemon{
  public pokemonMewtwo(){
    super("psychic", 106, 154, 90, 130);
  }
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ (4*this.getAttack()/opponent.getDefense() + 1) +
    " points of damage with Confusion.";
  }

  public String move2(Pokemon opponent){
    opponent.applyDamage(8*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ (8*this.getAttack()/opponent.getDefense() + 1) +
    " points of damage with Psystrike.";
  }

  public String move3(){
    this.defense += 50;
    return this + "used Amnesia. Mewtwo's defense rose.";
  }

  public String move4(){
    this.attack += 50;
    return this + "used Nasty Plot. Mewtwo's attack rose.";
  }
   public String name(){
    return "Mewtwo";
  }
}

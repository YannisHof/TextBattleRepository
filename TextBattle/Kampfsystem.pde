class Kampfsystem {

  public void bewege(Spieler spieler, Richtung richtung) {
    if (richtung == Richtung.OBEN) {
      if (spieler.get_pos_y()+1 < fieldSizeY)
        if (Material.BODEN ==spielbrett.gitter[spieler.get_pos_x()][spieler.get_pos_y()+1].m)
          spieler.set_pos_y(spieler.get_pos_y()+1);
    }
    if (richtung == Richtung.UNTEN) {
      if (spieler.get_pos_y()-1 >=0 )
        if (Material.BODEN ==spielbrett.gitter[spieler.get_pos_x()][spieler.get_pos_y()-1].m)
          spieler.set_pos_y(spieler.get_pos_y()-1);
    }
    if (richtung == Richtung.LINKS) {
      if (spieler.get_pos_x()-1  >=0)
        if (Material.BODEN ==spielbrett.gitter[spieler.get_pos_x()-1][spieler.get_pos_y()].m)
          spieler.set_pos_x(spieler.get_pos_x()-1);
    }
    if (richtung == Richtung.RECHTS) {
      if (spieler.get_pos_x()+1 < fieldSizeX)
        if (Material.BODEN ==spielbrett.gitter[spieler.get_pos_x()+1][spieler.get_pos_y()].m)
          spieler.set_pos_x(spieler.get_pos_x()+1);
    }
  }

  public void angriff(Spieler spieler, Richtung richtung, String angriff) {

    if (richtung == Richtung.OBEN) {
      for (int i= 0; i < anzSpieler; i++) {
        if (spieler.get_pos_y()+1 == spielbrett.spieler[i].get_pos_y() && spieler.get_pos_x() == spielbrett.spieler[i].get_pos_x()) {
          spielbrett.spieler[i].set_leben(spielbrett.spieler[i].get_leben()-round(random(1,3)));
          
        }
      }
    }
    
    if (richtung == Richtung.UNTEN) {
      for (int i= 0; i < anzSpieler; i++) {
        if (spieler.get_pos_y()-1 == spielbrett.spieler[i].get_pos_y() && spieler.get_pos_x() == spielbrett.spieler[i].get_pos_x()) {
          spielbrett.spieler[i].set_leben(spielbrett.spieler[i].get_leben()-round(random(1,3)));
          
        }
      }
    }
    
    if (richtung == Richtung.RECHTS) {
      for (int i= 0; i < anzSpieler; i++) {
        if (spieler.get_pos_x()+1 == spielbrett.spieler[i].get_pos_x() && spieler.get_pos_y() == spielbrett.spieler[i].get_pos_y()) {
          spielbrett.spieler[i].set_leben(spielbrett.spieler[i].get_leben()-round(random(1,3)));
          
        }
      }
    }
    
    if (richtung == Richtung.LINKS) {
      for (int i= 0; i < anzSpieler; i++) {
        if (spieler.get_pos_x()-1 == spielbrett.spieler[i].get_pos_x() && spieler.get_pos_y() == spielbrett.spieler[i].get_pos_y()) {
          spielbrett.spieler[i].set_leben(spielbrett.spieler[i].get_leben()-round(random(1,3)));
          
        }
      }
    }
    
  }
  
}

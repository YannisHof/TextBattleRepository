class Kampfsystem {
  import java.util.Random;

  public static void bewegen(Spieler spieler, Richtung richtung) {
    if (richtung = Richtung.OBEN) {
      if (spieler.get_y()+1 < fieldSizeY)
        if (Material.BODEN ==spielbrett.gitter[spieler.get_x()][spieler.get_y()+1].m)
          Spieler.set_y(spieler.get_y()++);
    }
    if (richtung = Richtung.UNTEN) {
      if (spieler.get_y()-1 >=0 )
        if (Material.BODEN ==spielbrett.gitter[spieler.get_x()][spieler.get_y()-1].m)
          Spieler.set_y(spieler.get_y()--);
    }
    if (richtung = Richtung.LINKS) {
      if (spieler.get_x()-1  >=0)
        if (Material.BODEN ==spielbrett.gitter[spieler.get_x()-1][spieler.get_y()].m)
          Spieler.set_x(spieler.get_x()--);
    }
    if (richtung = Richtung.RECHTS) {
      if (spieler.get_x()+1 < fieldSizeX)
        if (Material.BODEN ==spielbrett.gitter[spieler.get_x()+1][spieler.get_y()].m)
          Spieler.set_x(spieler.get_x()++);
    }
  }

  public static void angriff(Spieler spieler, Richtung richtung, String angriff) {

    if (richtung == Richtung.OBEN) {
      for (int i= 0; i < spieler.length; i++) {
        if (spieler.get_y()+1 == spieler[i].get_y() && spieler.get_x() == spieler[i].get_x()) {
          int schaden =rand.nextInt((3 - 0) + 1) + 0;
          spieler(i).setLeben(getLeben()-1);
        }
      }
    }
    
    if (richtung == Richtung.UNTEN) {
      for (int i= 0; i < spieler.length; i++) {
        if (spieler.get_y()-1 == spieler[i].get_y() && spieler.get_x() == spieler[i].get_x()) {
          int schaden =rand.nextInt((3 - 0) + 1) + 0;
          spieler(i).setLeben(getLeben()-1);
        }
      }
    }
    
    if (richtung == Richtung.RECHTS) {
      for (int i= 0; i < spieler.length; i++) {
        if (spieler.get_x()+1 == spieler[i].get_x() && spieler.get_y() == spieler[i].get_y()) {
          int schaden =rand.nextInt((3 - 0) + 1) + 0;
          spieler(i).setLeben(getLeben()-1);
        }
      }
    }
    
    if (richtung == Richtung.LINKS) {
      for (int i= 0; i < spieler.length; i++) {
        if (spieler.get_x()-1 == spieler[i].get_x() && spieler.get_y() == spieler[i].get_y()) {
          int schaden =rand.nextInt((3 - 0) + 1) + 0;
          spieler(i).setLeben(getLeben()-1);
        }
      }
    }
    
  }
  
}

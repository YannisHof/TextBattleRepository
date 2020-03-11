




void spielbrettAusgeben()
{
  println("SPIELBRETT:\n");
  boolean isPlayer = false;
  for(int i = 0; i < fieldSizeX; i++)
  {
    for(int j = 0; j < fieldSizeY; j++)
    {
      for(int s = 0; s < anzSpieler; s++)
      {
        if((spielbrett.spieler[s].get_pos_x() == i)&&(spielbrett.spieler[s].get_pos_y() == j))
        {
          print(" > P"+s+"< ");
          isPlayer = true;
        }
      }
      if(isPlayer);
      else if(spielbrett.gitter[i][j].m == Material.BODEN) print("  `~´  ");
      else print(" [=|=] ");
      isPlayer = false;
    }
    println("\n");
  }
  println("\n");
}


void eingabeAnzeigen()
{
  println("Aktuelle Eingabe: >>"+eingabesystem.aktuelleEingabe+"|");
}

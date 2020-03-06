class Spielbrett
{
  Zelle[][] gitter;
  Spieler[] spieler;
  
  Spielbrett()
  {
    gitter = new Zelle[fieldSizeX][fieldSizeY];
    for(int i = 0; i < fieldSizeX; i++)
    {
      for(int j = 0; j < fieldSizeY; j++)
      {
        gitter[i][j] = new Zelle(Material.BODEN);
      }
    }
    spieler = new Spieler[anzSpieler];
    for(int s = 0; s < anzSpieler; s++)
      {
       spieler[s] = new Spieler();
      }
  }
}

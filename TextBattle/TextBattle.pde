
static final int fieldSizeX = 16, fieldSizeY = 16;
static final int anzSpieler = 2;
static Eingabesystem eingabesystem;
static Spielbrett spielbrett;

void setup()
{
  spielbrett = new Spielbrett();
  
  spielbrett.spieler[0].posx = round(random(fieldSizeX-1));//das spielbrett nach etwas aussehen lassen...
  spielbrett.spieler[0].posy = round(random(fieldSizeY-1));
  spielbrett.spieler[1].posx = round(random(fieldSizeX-1));
  spielbrett.spieler[1].posy = round(random(fieldSizeY-1));
  for(int i = 0; i < 10; i++)
  {
    spielbrett.gitter[round(random(fieldSizeX-1))][round(random(fieldSizeY-1))].m = Material.HINDERNIS;
  }
  spielbrettAusgeben();
  
  
  
  eingabesystem = new Eingabesystem();
  
  eingabesystem.aktuelleEingabe = "Eine Eingabe";//eine Eingabe simulieren
  eingabeAnzeigen();
}

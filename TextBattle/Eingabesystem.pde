

class Eingabesystem
{

  private Aktion[] aktionsListe;
  public int anzAktionen;
  public String aktuelleEingabe;
  public Eingabesystem()
  {
    aktionsListe = new Aktion[maxAktionen];
    anzAktionen = 0;
    aktuelleEingabe = "";
  }
  void uebersetzer(String eingabe) {
    if (maxAktionen <= anzAktionen) return;
    String[] strs = eingabe.split(" ");
    int aktionsArt = 0;
    if (strs.length>0) {
      switch(strs[0]) {
      case "angriff":
        aktionsArt = 1;
        break;

      case "bewege":
        aktionsArt = 2;
        break;

      default:
        aktionsArt = 0;
        break;
      }
    }
    if (strs.length>1) {
      switch(strs[1]) {
      case "oben":
        switch (aktionsArt) {
        case 0:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        case 1:
          aktionsListe[anzAktionen] = Aktion.ANGRIFFOBEN;
          anzAktionen++;
          break;
        case 2:
          aktionsListe[anzAktionen] = Aktion.BEWEGEOBEN;
          anzAktionen++;
          break;
        default:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        }
        break;
      case "unten":
        switch (aktionsArt) {
        case 0:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        case 1:
          aktionsListe[anzAktionen] = Aktion.ANGRIFFUNTEN;
          anzAktionen++;
          break;
        case 2:
          aktionsListe[anzAktionen] = Aktion.BEWEGEUNTEN;
          anzAktionen++;
          break;
        default:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        }
        break;
      case "rechts":
        switch (aktionsArt) {
        case 0:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        case 1:
          aktionsListe[anzAktionen] = Aktion.ANGRIFFRECHTS;
          anzAktionen++;
          break;
        case 2:
          aktionsListe[anzAktionen] = Aktion.BEWGERECHTS;
          anzAktionen++;
          break;
        default:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        }
        break;
      case "links":
        switch (aktionsArt) {
        case 0:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        case 1:
          aktionsListe[anzAktionen] = Aktion.ANGRIFFLINKS;
          anzAktionen++;
          break;
        case 2:
          aktionsListe[anzAktionen] = Aktion.BEWEGELINKS;
          anzAktionen++;
          break;
        default:
          aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
          anzAktionen++;
          break;
        }
        break;
      default:
        aktionsListe[anzAktionen] = Aktion.TIPPFEHLER;
        anzAktionen++;
        break;
      }
    }
  }
}
void keyPressed() {
  if (key != CODED && key != BACKSPACE && key != RETURN && key != ENTER) 
  {
    eingabesystem.aktuelleEingabe += key;
    print("\n\n\n\n\n");
    eingabeAnzeigen();
  }

  //println (e.text1);
  if (key==BACKSPACE) {
    if (eingabesystem.aktuelleEingabe.length()>0) {
      eingabesystem.aktuelleEingabe = eingabesystem.aktuelleEingabe.substring(0, eingabesystem.aktuelleEingabe.length()-1);
      print("\n\n\n\n\n");
      eingabeAnzeigen();
    }
  } else if (key==RETURN || key==ENTER) {
    eingabesystem.uebersetzer(eingabesystem.aktuelleEingabe);
    eingabesystem.aktuelleEingabe="";
    print("\n\n\n\n\n");
    eingabeAnzeigen();
  }
}

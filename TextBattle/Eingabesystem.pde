

class Eingabesystem
{

  private Aktion[] aktionsListe;  
  public Eingabesystem()
  {
    aktionsListe = new Aktion[maxAktionen];
  }
  public String aktuelleEingabe="";
  void uebersetzer(String eingabe) {
    String[] strs = eingabe.split(" ");
    int aktionsArt;
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
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        case 1:
          aktionsListe[aktionsListe.length()] = Aktion.ANGRIFFOBEN;
          break;
        case 2:
          aktionsListe[aktionsListe.length()] = Aktion.BEWGEOBEN;
          break;
        default:
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        }
      case "unten":
        switch (aktionsArt) {
        case 0:
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        case 1:
          aktionsListe[aktionsListe.length()] = Aktion.ANGRIFFUNTEN;
          break;
        case 2:
          aktionsListe[aktionsListe.length()] = Aktion.BEWGEUNTEN;
          break;
        default:
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        }
      case "rechts":
        switch (aktionsArt) {
        case 0:
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        case 1:
          aktionsListe[aktionsListe.length()] = Aktion.ANGRIFFRECHTS;
          break;
        case 2:
          aktionsListe[aktionsListe.length()] = Aktion.BEWGERECHTS;
          break;
        default:
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        }
      case "links":
        switch (aktionsArt) {
        case 0:
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        case 1:
          aktionsListe[aktionsListe.length()] = Aktion.ANGRIFFLINKS;
          break;
        case 2:
          aktionsListe[aktionsListe.length()] = Aktion.BEWGELINKS;
          break;
        default:
          aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
          break;
        }
      default:
        aktionsListe[aktionsListe.length()] = Aktion.TIPPFEHLER;
        break;
      }
    }
  }
}
void keyPressed() {
  if (key != CODED) 
  {
    eingabesystem.aktuelleEingabe += key;
    eingabeAnzeigen();
  }

  //println (e.text1);
  if (key==BACKSPACE) {
    if (eingabesystem.aktuelleEingabe.length()>0) {
      eingabesystem.aktuelleEingabe = eingabesystem.aktuelleEingabe.substring(0, eingabesystem.aktuelleEingabe.length()-2);
    }
  } else if (key==RETURN || key==ENTER) {
    uebersetzer(aktuelleEingabe);
    eingabesystem.aktuelleEingabe="";
  }
}

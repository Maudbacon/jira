Feature: modifier une categorie

Scenario Outline: le magasinier modifie une categorie_SN
   
Given le magasinier est sur l_interface categorie
When le magasiner modifie la <categorie> par <nouvelle categorie>
Then le systeme Nozama modifie la <categorie> par <nouvelle categorie>

Examples:
    | categorie | nouvelle categorie |
    | jeux video | jeux video et consoles |

Scenario: le magasinier tente de modifier une categorie_SE
   
Given le magasinier se trouve sur l_interface categorie
When le magasiner selectionne la categorie "jeux video" 
But le systeme Nozama ne propose pas l_option modifier 
Then le systeme Nozama ne peux pas modifier la categorie "jeux video"


#auteur: Abir
#reviseur:Gwen
#validation PO:
#date: 


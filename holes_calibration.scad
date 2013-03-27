// Dimensions en mm
hauteur = 5;
epaisseur=3;
offset = 2; // pour bien transpercer
nombre_trous = 10;
diametre_min = 1;

longueur=nombre_trous*(nombre_trous+1)/2;

$fn=40; //resolution

for (diametre = [diametre_min:nombre_trous]){
translate([((diametre+epaisseur)*(diametre+epaisseur+1)/2-diametre/2), 0, 0])
difference(){
cylinder(h=hauteur,r=(diametre/2)+epaisseur);
cylinder(h=hauteur+offset,r=diametre/2);
}
}
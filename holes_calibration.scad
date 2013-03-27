// Dimensions en mm
hauteur = 11;
nombre_trous = 10;

$fn=100; //resolution

difference(){
cube([110,hauteur,hauteur], center=true);
for (x = [1:nombre_trous]){
translate([(x-5.5)*10, 0, 0])
cylinder(h=20,r=x/2,center = true);
}
}
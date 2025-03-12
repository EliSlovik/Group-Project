//Aidan Slovik
  PImage ny, blankTemp;
  County[] counties = new County[62];
void setup() {
  Table table;
  table = loadTable("file.csv", "header");
  int i = 0;
  imageMode(CORNER);
  size(1920,1080);
  textSize(20);

  for (TableRow row : table.rows()) {
    int id = row.getInt("id");
    String county = row.getString("county");
    int pop = row.getInt("population");
    float popDensity = row.getFloat("population density");
    int child = row.getInt("0-19");
    int youngAdult = row.getInt("20-34");
    int adult = row.getInt("35-64");
    int retired = row.getInt("over 65");
    
    County temp = new County(id, county, pop, popDensity, child, youngAdult, adult, retired);
    counties[i] = temp;
    i++;
  }
  
  //for (int j = 0; j < counties.length; j++) {
  //  println(counties[j]);
  //}
}

void draw() {
 background(100);
 ny = loadImage("NY Temp.png"); 
 blankTemp = loadImage("Blank.png"); 
 image(blankTemp, 0, 0);
 //image(ny, 0, 0);
 int rv = int(red(ny.get(mouseX,mouseY)));
 if(rv<63) {
   text(counties[rv-1].toString(),600,100);
 } else {
   text(-1,0,0);
 }
}

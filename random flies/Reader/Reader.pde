//Aidan Slovik
  PImage ny;
  County[] counties = new County[62];
void setup() {
  Table table;
  table = loadTable("file.csv", "header");
  int i = 0;
  imageMode(CORNER);
  size(1920,1080);

  for (TableRow row : table.rows()) {
    int id = row.getInt("id");
    String county = row.getString("county");
    int pop = row.getInt("population");
    float popDensity = row.getFloat("population density");
    County temp = new County(id, county, pop, popDensity);
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
 image(ny, 0, 0);
 int rv = int(red(ny.get(mouseX,mouseY)));
 if(rv<62) {
   text(counties[rv].getPop(),100,100);
 } else {
   text(-1,0,0);
 }
}

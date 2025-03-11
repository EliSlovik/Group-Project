//Aidan Slovik

void setup() {
  Table table;
  table = loadTable("file.csv", "header");
  int i = 0;
  County[] counties = new County[62];

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

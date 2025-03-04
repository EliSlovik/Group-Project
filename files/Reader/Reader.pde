//Aidan Slovik

void setup() {
Table table;
  table = loadTable("file.csv", "header");

  for (TableRow row : table.rows()) {

    int id = row.getInt("id");
    String county = row.getString("county");
    int pop = row.getInt("population");
    float popDensity = row.getFloat("population density");
    County utah = new County(id, county, pop, popDensity);
    println(utah);
  }

}

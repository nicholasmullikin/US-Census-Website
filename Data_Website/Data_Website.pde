int statenumber [] = new int [73];
int Whitepop2010 [] = new int [73];
int Blackpop2010 [] = new int [73];
int AmericanIndianpop2010 [] = new int [73];
int Asianpop2010 [] = new int [73];
int NativeHawaiianpop2010 [] = new int [73];
int SomeOtherRacepop2010 [] = new int [73];
int largestpop2010 [] = new int [73];

int statenumber2000 [] = new int [73];
int Whitepop2000 [] = new int [73];
int Blackpop2000 [] = new int [73];
int AmericanIndianpop2000 [] = new int [73];
int Asianpop2000 [] = new int [73];
int NativeHawaiianpop2000 [] = new int [73];
int SomeOtherRacepop2000 [] = new int [73];
int largestpop2000 [] = new int [73];

int Whitepopnat2010 = 0;
int Blackpopnat2010 = 0;
int AmericanIndianpopnat2010 = 0;
int Asianpopnat2010 = 0;
int NativeHawaiianpopnat2010 = 0;
int SomeOtherRacepopnat2010 = 0;

int Whitepopnat2000 = 0;
int Blackpopnat2000 = 0;
int AmericanIndianpopnat2000 = 0;
int Asianpopnat2000 = 0;
int NativeHawaiianpopnat2000 = 0;
int SomeOtherRacepopnat2000 = 0;





String state [] = new String [73];


void setup() {
  JSONArray json2010;
  json2010 = loadJSONArray("http://api.census.gov/data/2010/sf1?key=e8a63d6bac96233cd5c3cf2de348ed9882285b0a&get=STATE,P0030002,P0030003,P0030004,P0030005,P0030006,P0030007,NAME&for=state:*");
                                                                                                              //    white   black    A Indian  Asain    HI        Other race
  JSONArray json2000;
  json2000 = loadJSONArray("http://api.census.gov/data/2000/sf1?key=e8a63d6bac96233cd5c3cf2de348ed9882285b0a&get=STATE,P003003,P003004,P003005,P003006,P003007,P003008,NAME&for=state:*");
  /////////////////////////////////////////////////////////////////////////                                             white  blac  A. Indian  Asian  Pacific Other


 for (int i = 1; i <json2010.size(); i++) {
 statenumber [i] = json2010.getJSONArray(i).getInt(0)  ;
 Whitepop2010 [i] = json2010.getJSONArray(i).getInt(1)  ;
 Whitepopnat2010 += Whitepop2010 [i];
 
 Blackpop2010 [i] = json2010.getJSONArray(i).getInt(2)  ;
 Blackpopnat2010 += Blackpop2010[i];
 
 AmericanIndianpop2010 [i] =json2010.getJSONArray(i).getInt(3)  ;
 AmericanIndianpopnat2010 += AmericanIndianpop2010 [i];
 
 Asianpop2010 [i] =  json2010.getJSONArray(i).getInt(4)  ;
 Asianpopnat2010 += Asianpop2010 [i];
 
 NativeHawaiianpop2010 [i] =  json2010.getJSONArray(i).getInt(5)  ;
 NativeHawaiianpopnat2010 += NativeHawaiianpop2010 [i];
 
 SomeOtherRacepop2010 [i] = json2010.getJSONArray(i).getInt(6)  ;
 SomeOtherRacepopnat2010 += SomeOtherRacepop2010 [i];
 
 state [i] = json2010.getJSONArray(i).getString(7);
 //largestpop2010[i] = largest(json2010.getJSONArray(i).getInt(1), json2010.getJSONArray(i).getInt(2), json2010.getJSONArray(i).getInt(3), json2010.getJSONArray(i).getInt(4), json2010.getJSONArray(i).getInt(5));
//println(json2010.getJSONArray(i).getInt(0)+" "+json2010.getJSONArray(i).getInt(1)+" "+json2010.getJSONArray(i).getString(2)+" "+json2010.getJSONArray(i).getString(3)+" "+json2010.getJSONArray(i).getString(4)+" "+json2010.getJSONArray(i).getString(5)+" "+json2010.getJSONArray(i).getString(6)+" "+json2010.getJSONArray(i).getString(7));
//print(largestpop2010[i]);
//println(" "+state[i]);
 }
 



 for (int i = 1; i <json2000.size(); i++) {
 statenumber2000 [i] = json2000.getJSONArray(i).getInt(0)  ;
 Whitepop2000 [i] = json2000.getJSONArray(i).getInt(1)  ;
 Whitepopnat2000 += Whitepop2000 [i];
 
 Blackpop2000 [i] = json2000.getJSONArray(i).getInt(2)  ;
 Blackpopnat2010 += Blackpop2000[i];

 AmericanIndianpop2000 [i] =json2000.getJSONArray(i).getInt(3)  ;
 AmericanIndianpopnat2000 += AmericanIndianpop2000 [i];

 Asianpop2000 [i] =  json2000.getJSONArray(i).getInt(4)  ;
 Asianpopnat2000 += Asianpop2000 [i];
 
 NativeHawaiianpop2000 [i] =  json2000.getJSONArray(i).getInt(5)  ;
 NativeHawaiianpopnat2000 += NativeHawaiianpop2000 [i];

 SomeOtherRacepop2000 [i] = json2000.getJSONArray(i).getInt(6)  ;
 SomeOtherRacepopnat2000 += SomeOtherRacepop2000 [i];
 }
 
 Whitepopnat2010 /= 50;
Blackpopnat2010 /= 50;
AmericanIndianpopnat2010 /= 50;
Asianpopnat2010 /= 50;
NativeHawaiianpopnat2010 /= 50;
SomeOtherRacepopnat2010 /= 50;
Whitepopnat2000 /= 50;
Blackpopnat2000 /= 50;
AmericanIndianpopnat2000 /= 50;
Asianpopnat2000 /= 50;
NativeHawaiianpopnat2000 /= 50;
SomeOtherRacepopnat2000 /= 50;
 
 
// 
// for (int i = 1; i <json2000.size(); i++) {
// statenumber2000 [i] = json2010.getJSONArray(i).getInt(0)  ;
// Whitepop2010 [i] = json2010.getJSONArray(i).getInt(1)  ;
// Whitepopnat2010 += Whitepop2010 [i];
// 
// Blackpop2010 [i] = json2010.getJSONArray(i).getInt(2)  ;
// Blackpopnat2010 += Blackpop2010[i];
//
// AmericanIndianpop2010 [i] =json2010.getJSONArray(i).getInt(3)  ;
// AmericanIndianpopnat2010 += AmericanIndianpop2010 [i];
//
// Asianpop2010 [i] =  json2010.getJSONArray(i).getInt(4)  ;
// Asianpopnat2010 += Asianpop2010 [i];
//
// SomeOtherRacepop2010 [i] = json2010.getJSONArray(i).getInt(5)  ;
// SomeOtherRacepopnat2010 += SomeOtherRacepop2010 [i];
// }
 
 
 
 
 
 for(int i = 1; i < json2000.size(); i++){
 if (state[i] == null)
 {
  i++; 
 }
 if (state[i] == null)
 {
  i++; 
 }
 PrintWriter output;
 output = createWriter("website/"+ state [i]+".html");
 //output.println(json2000.getJSONArray(i).getInt(0)+" "+json2000.getJSONArray(i).getInt(1)+" "+json2000.getJSONArray(i).getString(2)+" "+json2000.getJSONArray(i).getString(3)+" "+json2000.getJSONArray(i).getString(4)+" "+json2000.getJSONArray(i).getString(5)+" "+json2000.getJSONArray(i).getString(6)+" "+json2000.getJSONArray(i).getString(7));
 output.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">");
output.println("<html xmlns=\"http://www.w3.org/1999/xhtml\">");
output.println("<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />");
output.println("<title>Untitled Document</title>");
output.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"Untitled-3.css\" />");
output.println("");
output.println("</head>");
output.println("");
output.println("<body>");
output.println("");
output.println("<div class=\"container\">");
output.println("  <div class=\"content\">");
output.println("    <h1><a href=\"http://www.en.wikipedia.com/wiki/"+state[i]+"\">");
output.println("<p>");
output.println("  <!DOCTYPE html>");
output.println("  <html>");
output.println("      <body>");
output.println("      <center>");
output.println("      <svg height=\"\" width=\"500\">");
output.println("        <defs>");
output.println("          <linearGradient id=\"grad1\" x1=\"0%\" y1=\"0%\" x2=\"100%\" y2=\"0%\">");
output.println("            <stop offset=\"0%\" style=\"stop-color:rgb(255,0,0);stop-opacity:1\" />");
output.println("            <stop offset=\"50%\" style=\"stop-color:rgb(255,255,255);stop-opacity:1\" />");
output.println("            <stop offset=\"100%\" style=\"stop-color:rgb(0,0,255);stop-opacity:1\" />");
output.println("          </linearGradient>");
output.println("        </defs>");
output.println("        <ellipse cx=\"270\" cy=\"80\" rx=\"140\" ry=\"70\" fill=\"url(#grad1)\" />");
output.println("        <text fill=\"#ffffff\" font-size=\"35\" font-family=\"Verdana\" x=\"150\" y=\"86\">"+state[i]+"</text>");
output.println("        Sorry, your browser does not support inline SVG.");
output.println("  </svg></center>");
output.println("  </p>");
output.println("");
output.println("");
output.println("");
output.println("");
output.println("");
output.println("</a></h1>");
output.println("");
output.println(" <p>&nbsp;</p>");
output.println("<p>&nbsp;</p>");
output.println("     <center> <img src=\"usa-wikipedia.svg\" width=\"291\" height=\"205\" /></center>");
output.println("");
output.print(" <p>This is the data from the 2010 and 2000 census. It compares the difference in population in (State Name) between each race. From 2000 to 2010"); 

if (Whitepop2010[i] < Whitepop2000[i])
{
  output.print("the White population in "+state[i]+" has decreased, ");
}
else
{
  output.print("the White population in "+state[i]+" has increased, ");
}


if (Blackpop2010[i] < Blackpop2000[i])
{
  output.print("the Black population has decreased, ");
}
else
{
  output.print("the Black population has increased, ");
}


if (AmericanIndianpop2010[i] < AmericanIndianpop2000[i])
{
  output.print("the American Indian population has decreased, ");
}
else
{
  output.print("the American Indian population has increased, ");
}


if (Asianpop2010[i] < Asianpop2000[i])
{
  output.print("the Asian population has decreased, ");
}
else
{
  output.print("the Asian population has increased, ");
}


if (NativeHawaiianpop2010[i] < NativeHawaiianpop2000[i])
{
  output.print("the NativeHawaiian population has decreased, ");
}
else
{
  output.print("the NativeHawaiian population has increased, ");
}


if (SomeOtherRacepop2010[i] < SomeOtherRacepop2000[i])
{
  output.println("the some other race population has decreased.");
}
else
{
  output.println("the some other race population has increased.");
}
//output.print("the White population in (State Name) has (Logic),"
//output.print("the Black population has (Logic),"
//output.print("the American Indian population has (Logic),"
//output.print("the Asian population has (Logic),"
//output.print("and the other race population has (Logic). "

output.println("    </p>");
output.println("    <p>&nbsp;</p>");
output.println("<center><svg width=\"1000\" height=\"400\">");
output.println("");
output.println("");
output.println("<text x=\"045\" y=\"26\" fill=\"Black\"font-size=\"20\" >2000</text>");
output.println("");
output.println("<text x=\"210\" y=\"26\" fill=\"Black\"font-size=\"20\" >2010</text>");
output.println("");
output.println("<text x=\"445\" y=\"26\" fill=\"Black\"font-size=\"20\" >2000</text>");
output.println("");
output.println("<text x=\"615\" y=\"26\" fill=\"Black\"font-size=\"20\" >2010</text>");
output.println("");
output.println("<text x=\"495\" y=\"16\" fill=\"Black\"font-size=\"16\" >National Average</text>");
output.println("<text x=\"140\" y=\"16\" fill=\"Black\"font-size=\"16\" >State</text>");

output.println("");
output.println("");
/*
for (int j = 0; j < 6; j++)
{
output.println("<rect x=\" "+j*25 +"\" y=\"40\" width=\"10\" height=\"150\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />"); 
}

for (int j = 0; j < 6; j++)
{
 output.println("<rect x=\" "+((j*25) +180)+"\" y=\"40\" width=\"10\" height=\"150\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />"); 
}

for (int j = 0; j < 6; j++)
{
 output.println("<rect x=\" "+((j*25) +430)+"\" y=\"40\" width=\"10\" height=\"150\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />"); 
}

for (int j = 0; j < 6; j++)
{
 output.println("<rect x=\" "+((j*25) +620)+"\" y=\"40\" width=\"10\" height=\"150\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />"); 
}
*/






output.println("<rect x=\"0\" y=\"40\" width=\"10\" height=\""+Whitepop2000[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"25\" y=\"40\" width=\"10\" height=\""+Blackpop2000[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"50\" y=\"40\" width=\"10\" height=\""+AmericanIndianpop2000[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"75\" y=\"40\" width=\"10\" height=\""+Asianpop2000[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"100\" y=\"40\" width=\"10\" height=\""+NativeHawaiianpop2000[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"125\" y=\"40\" width=\"10\" height=\""+SomeOtherRacepop2000[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"180\" y=\"40\" width=\"10\" height=\""+Whitepop2010[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"205\" y=\"40\" width=\"10\" height=\""+Blackpop2010[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"230\" y=\"40\" width=\"10\" height=\""+AmericanIndianpop2010[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"255\" y=\"40\" width=\"10\" height=\""+Asianpop2010[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"280\" y=\"40\" width=\"10\" height=\""+NativeHawaiianpop2010[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"305\" y=\"40\" width=\"10\" height=\""+SomeOtherRacepop2010[i]/15000+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
//output.println("<text x=\"0\" y=\"-15\" fill=\"red\" transform=\"rotate(90 20,20)\">I love SVG</text>");
output.println("");
output.println("");
output.println("");
output.println("");
output.println("<rect x=\"430\" y=\"40\" width=\"10\" height=\""+Whitepopnat2000/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"455\" y=\"40\" width=\"10\" height=\""+Blackpopnat2000/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"480\" y=\"40\" width=\"10\" height=\""+AmericanIndianpopnat2000/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"505\" y=\"40\" width=\"10\" height=\""+Asianpopnat2000/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"530\" y=\"40\" width=\"10\" height=\""+NativeHawaiianpopnat2000/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"555\" y=\"40\" width=\"10\" height=\""+SomeOtherRacepopnat2000/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"620\" y=\"40\" width=\"10\" height=\""+Whitepopnat2010/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"645\" y=\"40\" width=\"10\" height=\""+Blackpopnat2010/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"670\" y=\"40\" width=\"10\" height=\""+AmericanIndianpopnat2010/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"695\" y=\"40\" width=\"10\" height=\""+Asianpopnat2010/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"720\" y=\"40\" width=\"10\" height=\""+NativeHawaiianpopnat2010/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");
output.println("<rect x=\"745\" y=\"40\" width=\"10\" height=\""+SomeOtherRacepopnat2010/(15000)+"\"");
output.println("style=\"fill:blue;stroke:pink;stroke-width:0;opacity:0.5\" />");














output.println("</svg></center>");
output.println("    <p>&nbsp;</p>");
output.println("    <h2>&nbsp; </h2>");
output.println("    <p></p>");
output.println("    <p></p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.println("    <p>&nbsp;</p>");
output.print("    <p> <a href=\""+state[i-1]+".html\"> Back </a>  </p> ");  
output.println("    <p>  <div align=\"right\"> <a href=\""+state[i+1]+".html\"> Foward </a> </div> </p> "); 

output.println("    <!-- end .content --></div>");
output.println("  <!-- end .container --></div>");
output.println("");
output.println("");
output.println("</body>");
output.println("</html>");
output.flush();
 
 
 }
 
 
}
int largest(int a,int b,int c,int d,int e)
{
if (a > b && a > c && a > d && a > e)
{
 return 1; 
}
else if (b > c && b > d && b > e)
{
 return 2; 
}
else if (c > d && c > e)
{
 return 3; 
}
else if (d > 4)
{
 return 4; 
}
else {
return 5;
}
}

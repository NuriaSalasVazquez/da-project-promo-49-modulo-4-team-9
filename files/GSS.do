
#delimit ;

infix

BALLOT    1 - 2
WRKSTAT    3 - 6
INDUSTRY    7 - 10
AGE    11 - 15
SEX    16 - 20
RINCOME    21 - 25
HAPPY    26 - 29
HAPMAR    30 - 34
HAPCOHAB    35 - 39
JOBLOSE    40 - 44
SATJOB    45 - 49
FEJOBAFF    50 - 54
DISCAFFM    55 - 59
DISCAFFW    60 - 64
FEHIRE    65 - 69
PROMTEFR    70 - 74
WKHARSEX    75 - 79
WKHAROTH    80 - 84
SATJOB1    85 - 89
SEXHAR    90 - 94
HAPPY7    95 - 99
HAPUNHAP    100 - 104
UNHAPPY    105 - 109
HLTHDEP    110 - 114
ID_    115 - 119
YEAR    120 - 124
using GSS.dat;


label variable BALLOT   "ballot used for interview";
label variable WRKSTAT   "labor force status";
label variable INDUSTRY   "R's industry code (1970)";
label variable AGE   "age of respondent";
label variable SEX   "respondents sex";
label variable RINCOME   "respondents income";
label variable HAPPY   "general happiness";
label variable HAPMAR   "happiness of marriage";
label variable HAPCOHAB   "happiness of relt with partner";
label variable JOBLOSE   "is r likely to lose job";
label variable SATJOB   "work satisfaction";
label variable FEJOBAFF   "for or against preferential hiring of women";
label variable DISCAFFM   "a man won't get a job or promotion";
label variable DISCAFFW   "a woman won't get a job or promotion";
label variable FEHIRE   "should hire and promote women";
label variable PROMTEFR   "promotions are handled fairly";
label variable WKHARSEX   "r sexually harassed on the job last 12 months";
label variable WKHAROTH   "r threatened on the job last 12 months";
label variable SATJOB1   "job satisfaction in general";
label variable SEXHAR   "r experienced sexual harassment";
label variable HAPPY7   "how happy r is";
label variable HAPUNHAP   "happy or unhappy with life today";
label variable UNHAPPY   "how often r was unhappy or depressed in past 4 weeks";
label variable HLTHDEP   "FELT UNHAPPY OR DEPRESSED IN LAST 4 WEEKS";
label variable ID_   "Respondent id number";
label variable YEAR   "GSS year for this respondent";


label define  GSP001X
1      "Working full time"
2      "Working part time"
3      "With a job, but not at work because of temporary illness, vacation, strike"
4      "Unemployed, laid off, looking for work"
5      "Retired"
6      "In school"
7      "Keeping house"
8      "Other"
-99      ".n:  No answer"
-80      ".x:  Not available in this release"
-100      ".i:  Inapplicable"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
 ;
label define  GSP002X
0      "0"
17      "Agricultural production"
18      "Agricultural services, except horticultural"
19      "Horticultural services"
27      "Forestry"
28      "Fisheries"
47      "Metal mining"
48      "Coal mining"
49      "Crude petroleum and natural gas extractions"
57      "Nonmetallic mining and quarrying, except fuel"
67      "General building contractors"
68      "General contractors, except building"
69      "Special trade contractors"
77      "Not specified construction"
107      "Logging"
108      "Sawmills, planing mills, and  mill work"
109      "Miscellaneous wood products"
118      "Furniture fixtures"
119      "Glass and glass products"
127      "Cement concrete, gypsum, and  plaster products"
128      "Structural clay products"
137      "Pottery and related products"
138      "Miscellaneous nonmetallic mineral and stone products"
139      "Blast furnaces, steel works, rolling and finishing mills"
147      "Other primary iron and steel industries"
148      "Primary aluminum industries"
149      "Other primary nonferrous industries"
157      "Cutlery, hand tools, and other hardware"
158      "Fabricated structural metal products"
159      "Screw machine products"
167      "Metal stamping"
168      "Miscellaneous fabricated metal products"
169      "Not specified metal industries"
177      "Engines and turbines"
178      "Farm machinery and equipment"
179      "Construction and material handling machines"
187      "Metalworking machinery"
188      "Office and accounting machines"
189      "Electronic computing equipment"
197      "Machinery, except electrical, n.e.c."
198      "Not specified machinery"
199      "Household appliances"
207      "Radio, T.V., and communication equipment"
208      "Electrical machinery, equipment, and supplies, n.e.c."
209      "Not specified electrical machinery, equipment, and supplies"
219      "Motor vehicles and motor vehicle equipment"
227      "Aircraft and parts"
228      "Ship and boat building and repairing"
229      "Railroad locomotives and equipment"
237      "Mobile dwellings and campers"
238      "Cycles and miscellaneous transportation equipment"
239      "Scientific and controlling instruments"
247      "Optical and health services supplies"
248      "Photographic equipment and supplies"
249      "Watches, clocks, and clockwork-operated devices"
257      "Not specified professional equipment"
258      "Ordinance"
259      "Miscellaneous manufacturing industries"
268      "Meat products"
269      "Dairy products"
278      "Canning and preserving fruits, vegetables, and sea foods"
279      "Grain-mill products"
287      "Bakery products"
288      "Confectionery and related products"
289      "Beverage industries"
297      "Miscellaneous food preparation and kindred products"
298      "Not specified food industries"
299      "Tobacco manufactures"
307      "Knitting mills"
308      "Dyeing and finishing textiles, except wool and knit goods"
309      "Floor coverings, except hard surface"
317      "Yarn, thread, and fabric mills"
318      "Miscellaneous textile mill products"
319      "Apparel and accessories"
327      "Miscellaneous fabricated textile products"
328      "Pulp, paper and paperboard mills"
329      "Miscellaneous paper and pulp products"
337      "Paperboard containers and boxes"
338      "Newspaper publishing and printing"
339      "Printing, publishing, and allied industries, except newspapers"
347      "Industrial chemicals"
348      "Plastics, synthetics and resins, except fibers"
349      "Synthetic fibers"
357      "Drugs and medicines"
358      "Soaps and cosmetics"
359      "Paints, varnishes, and related products"
367      "Agricultural chemicals"
368      "Miscellaneous chemicals"
369      "Not specified chemicals and allied products"
377      "Petroleum refining"
378      "Miscellaneous petroleum and coal products"
379      "Rubber products"
387      "Miscellaneous plastic products"
388      "Tanned, curried, and finished leather"
389      "Footwear, except rubber"
397      "Leather products, except footwear"
398      "Not specified manufacturing industries"
407      "Railroads and railway express"
408      "Street railways and bus lines"
409      "Taxicab service"
417      "Trucking service"
418      "Warehousing and storage"
419      "Water transportation"
427      "Air transportation"
428      "Pipe lines, except natural gas"
429      "Services incidental to transportation"
447      "Radio broadcasting and television"
448      "Telephone (wire and radio)"
449      "Telegraph and miscellaneous communication services"
467      "Electric light and power"
468      "Electric-gas utilities"
469      "Gas and steam supply systems"
477      "Water supply"
478      "Sanitary services"
479      "Other and not specified utilities"
507      "Motor vehicles and equipment"
508      "Drugs, chemicals, and allied products"
509      "Dry goods and apparel"
527      "Food and related products"
528      "Farm products-raw materials"
529      "Electrical goods"
537      "Hardware, plumbing, and heating supplies"
538      "Not specified electrical and hardware products"
539      "Machinery equipment and supplies"
557      "Metals and minerals, n.e.c."
558      "Petroleum products"
559      "Scrap and waste materials"
567      "Alcoholic beverages"
568      "Paper and its products"
569      "Lumber and construction materials"
587      "Wholesalers, n.e.c."
588      "Not specified wholesale trade"
607      "Lumber and building material retailing"
608      "Hardware and farm equipment stores"
609      "Department and mail order establishments"
617      "Limited price variety stores"
618      "Vending machine operators"
619      "Direct selling establishments"
627      "Misc. general merchandise stores"
628      "Grocery stores"
629      "Dairy product stores"
637      "Retail bakeries"
638      "Food stores, n.e.c."
639      "Motor vehicle dealers"
647      "Tire, battery, and accessory dealers"
648      "Gasoline service stations"
649      "Miscellaneous vehicle dealers"
657      "Apparel and accessories stores, except shoe stores"
658      "Shoe stores"
667      "Furniture and home furnishing stores"
668      "Household appliances, TV, and radio stores"
669      "Eating and drinking places"
677      "Drug stores"
678      "Liquor stores"
679      "Farm and garden supply stores"
687      "Jewelry stores"
688      "Fuel and ice dealers"
689      "Retail florists"
697      "Miscellaneous retail stores"
698      "Not specified retail trade"
707      "Banking"
708      "Credit agencies"
709      "Security, commodity brokerage, and investment companies"
717      "Insurance"
718      "Real estate, incl. real estate-insurance-law offices"
727      "Advertising"
728      "Services to dwellings and other buildings"
729      "Commercial research, development, and testing labs"
737      "Employment and temporary help agencies"
738      "Business management and consulting services"
739      "Computer programming services"
747      "Detective and protective services"
748      "Business services, n.e.c."
749      "Automobile services, except repair"
757      "Automobile repair and related services"
758      "Electrical repair shops"
759      "Miscellaneous repair services"
769      "Private households"
777      "Hotels and motels"
778      "Lodging places, except hotels and motels"
779      "Laundering, cleaning, and other garment services"
787      "Beauty shops"
788      "Barber shops"
789      "Shoe repair shops"
797      "Dressmaking shops"
798      "Miscellaneous personal services"
807      "Theaters and motion pictures"
808      "Bowling alleys, billiard and pool parlors"
809      "Miscellaneous entertainment and recreation services"
828      "Offices of physicians"
829      "Offices of dentists"
837      "Offices of chiropractors"
838      "Hospitals"
839      "Convalescent institutions"
847      "Offices of health practitioners,n.e.c."
848      "Health services, n.e.c."
849      "Legal services"
857      "Elementary and secondary schools"
858      "Colleges and universities"
859      "Libraries"
867      "Educational services, n.e.c."
868      "Not specified educational services"
869      "Museums, art galleries, and zoos"
877      "Religious organizations"
878      "Welfare services"
879      "Residential welfare facilities"
887      "Nonprofit membership organizations"
888      "Engineering and architectural services"
889      "Accounting, auditing, and bookkeeping services"
897      "Miscellaneous professional and related services"
907      "Postal service"
917      "Federal public administration"
927      "State public administration"
937      "Local public administration"
999      "999"
 ;
label define  GSP003X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
89      "89 or older"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
 ;
label define  GSP004X
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
2      "FEMALE"
1      "MALE"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
 ;
label define  GSP005X
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-90      ".r:  Refused"
13      "Refused"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
98      "DK"
12      "$25000 OR MORE"
11      "$20000 - 24999"
10      "$15000 - 19999"
9      "$10000 - 14999"
8      "$8000 TO 9999"
7      "$7000 TO 7999"
6      "$6000 TO 6999"
5      "$5000 TO 5999"
4      "$4000 TO 4999"
3      "$3000 TO 3999"
2      "$1000 TO 2999"
1      "LT $1000"
-100      ".i:  Inapplicable"
-80      ".x:  Not available in this release"
 ;
label define  GSP006X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Very happy"
2      "Pretty happy"
3      "Not too happy"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP007X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
3      "NOT TOO HAPPY"
2      "PRETTY HAPPY"
1      "VERY HAPPY"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP008X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
3      "Not too happy"
2      "Pretty happy"
1      "Very happy"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP009X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Very likely"
2      "Fairly likely"
3      "Not too likely"
4      "Not likely"
5      "Leaving labor force"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-80      ".x:  Not available in this release"
 ;
label define  GSP010X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Very satisfied"
2      "Moderately satisfied"
3      "A little dissatisfied"
4      "Very dissatisfied"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-80      ".x:  Not available in this release"
 ;
label define  GSP011X
1      "Strongly favor"
2      "Not strongly favor"
3      "Not strongly oppose"
4      "Strongly oppose"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
 ;
label define  GSP012X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
4      "VERY UNLIKELY"
3      "SOMEWHAT UNLIKELY"
2      "SOMEWHAT LIKELY"
1      "VERY LIKELY"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP013X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
4      "VERY UNLIKELY"
3      "SOMEWHAT UNLIKELY"
2      "SOMEWHAT LIKELY"
1      "VERY LIKELY"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-70      ".y:  Not available in this year"
 ;
label define  GSP014X
5      "STRONGLY DISAGREE"
4      "DISAGREE"
3      "NEITHER AGREE NOR DISAGREE"
2      "AGREE"
1      "STRONGLY AGREE"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
 ;
label define  GSP015X
4      "Not at all true"
3      "Not too true"
2      "Somewhat true"
1      "Very true"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
 ;
label define  GSP016X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
2      "NO"
1      "YES"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
 ;
label define  GSP017X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
2      "NO"
1      "YES"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
 ;
label define  GSP018X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
4      "Not at all satisfied"
3      "Not too satisfied"
2      "Somewhat satisfied"
1      "Very satisfied"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
 ;
label define  GSP019X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
3      "NEVER HAVE WORKED"
2      "NO"
1      "YES"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
 ;
label define  GSP020X
-100      ".i:  Inapplicable"
-40      ".m:  DK, NA, IAP"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-60      ".j:  I do not have a job"
-70      ".y:  Not available in this year"
-80      ".x:  Not available in this release"
-90      ".r:  Refused"
-93      ".f:  Missing Birthdate Information"
-94      ".q:  Not imputable"
-95      ".u:  Uncodable"
-96      ".z:  Variable-specific reserve code"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-99      ".n:  No answer"
1      "COMPLETELY HAPPY"
2      "VERY HAPPY"
3      "FAIRLY HAPPY"
4      "NEITHER HAPPY NOR UNHAPPY"
5      "FAIRLY UNHAPPY"
6      "VERY UNHAPPY"
7      "COMPLETELY UNHAPPY"
 ;
label define  GSP021X
-100      ".i:  Inapplicable"
-40      ".m:  DK, NA, IAP"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-60      ".j:  I do not have a job"
-70      ".y:  Not available in this year"
-80      ".x:  Not available in this release"
-90      ".r:  Refused"
-93      ".f:  Missing Birthdate Information"
-94      ".q:  Not imputable"
-95      ".u:  Uncodable"
-96      ".z:  Variable-specific reserve code"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-99      ".n:  No answer"
1      "Very happy"
2      "Fairly happy"
3      "Not very happy"
4      "Not at all happy"
 ;
label define  GSP022X
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Ballot a"
2      "Ballot b"
3      "Ballot c"
4      "Ballot d"
-100      ".i:  Inapplicable"
 ;
label define  GSP023X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
5      "Very often"
4      "Often"
3      "Sometimes"
2      "Rarely"
1      "Never"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
 ;
label define  GSP024X
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-94      ".q:  Not imputable"
-93      ".f:  Missing Birthdate Information"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Never"
2      "Seldom"
3      "Sometimes"
4      "Often"
5      "Very often"
 ;


label values WRKSTAT   GSP001X;
label values INDUSTRY   GSP002X;
label values AGE   GSP003X;
label values SEX   GSP004X;
label values RINCOME   GSP005X;
label values HAPPY   GSP006X;
label values HAPMAR   GSP007X;
label values HAPCOHAB   GSP008X;
label values JOBLOSE   GSP009X;
label values SATJOB   GSP010X;
label values FEJOBAFF   GSP011X;
label values DISCAFFM   GSP012X;
label values DISCAFFW   GSP013X;
label values FEHIRE   GSP014X;
label values PROMTEFR   GSP015X;
label values WKHARSEX   GSP016X;
label values WKHAROTH   GSP017X;
label values SATJOB1   GSP018X;
label values SEXHAR   GSP019X;
label values HAPPY7   GSP020X;
label values HAPUNHAP   GSP021X;
label values BALLOT   GSP022X;
label values UNHAPPY   GSP023X;
label values HLTHDEP   GSP024X;

recode * (-100=.i)(-99=.n)(-98=.d)(-97=.s)(-96=.z)(-95=.u)(-90=.r)(-80=.x)(-70=.y)(-60=.j)(-50=.p)(-40=.m);

/*

Descriptions of missing codes (for more information, please refer to the Codebook)

.i: Inapplicable (IAP)

.n: No answer (NA)

.d: Don't know (DK)

.s: Skipped on web

.z: See Codebook for more information.

.u: Uncodeable

.r: Refused

.x: Not available in this release

.y: Not available in this year

.j: I don't have a job

.p: Not applicable/not imputable

.m: DK, NA, IAP

*/ 

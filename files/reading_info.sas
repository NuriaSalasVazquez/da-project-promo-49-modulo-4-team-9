/*
   NOTE: You need to edit the `libname` command to specify the path to the directory
   where the data file is located. For example: "C:\ipums_directory".
   Edit the `filename` command similarly to include the full path (the directory and the data file name).
*/

libname IPUMS ".";
filename ASCIIDAT "atus_00004.dat";

proc format cntlout = IPUMS.atus_00004_f;

value PERNUM_f
  01 = "1"
  02 = "2"
  03 = "3"
  04 = "4"
  05 = "5"
  06 = "6"
  07 = "7"
  08 = "8"
  09 = "9"
  10 = "10"
  11 = "11"
  12 = "12"
  13 = "13"
  14 = "14"
  15 = "15"
  16 = "16"
;

value LINENO_f
  001 = "1"
  002 = "2"
  003 = "3"
  004 = "4"
  005 = "5"
  006 = "6"
  007 = "7"
  008 = "8"
  009 = "9"
  010 = "10"
  011 = "11"
  012 = "12"
  013 = "13"
  014 = "14"
  015 = "15"
  016 = "16"
  017 = "17"
  018 = "18"
  019 = "19"
  999 = "NIU (Not in universe)"
;

value SEX_f
  01 = "Male"
  02 = "Female"
  99 = "NIU (Not in universe)"
;

value MARST_f
  01 = "Married - spouse present"
  02 = "Married - spouse absent"
  03 = "Widowed"
  04 = "Divorced"
  05 = "Separated"
  06 = "Never married"
  99 = "NIU (Not in universe)"
;

value EDUC_f
  010 = "Less than 1st grade"
  011 = "1st, 2nd, 3rd, or 4th grade"
  012 = "5th or 6th grade"
  013 = "7th or 8th grade"
  014 = "9th grade"
  015 = "10th grade"
  016 = "11th grade"
  017 = "12th grade - no diploma"
  020 = "High school graduate - GED"
  021 = "High school graduate - diploma"
  030 = "Some college but no degree"
  031 = "Associate degree - occupational vocational"
  032 = "Associate degree - academic program"
  040 = "Bachelor's degree (BA, AB, BS, etc.)"
  041 = "Master's degree (MA, MS, MEng, MEd, MSW, etc.)"
  042 = "Professional school degree (MD, DDS, DVM, etc.)"
  043 = "Doctoral degree (PhD, EdD, etc.)"
  999 = "NIU (Not in universe)"
;

value EDUCYRS_f
  100 = "Grades 1-12"
  101 = "Less than first grade"
  102 = "First through fourth grade"
  105 = "Fifth through sixth grade"
  107 = "Seventh through eighth grade"
  109 = "Ninth grade"
  110 = "Tenth grade"
  111 = "Eleventh grade"
  112 = "Twelfth grade"
  200 = "College"
  213 = "College--one year"
  214 = "College--two years"
  215 = "College--three years"
  216 = "College--four years"
  217 = "Bachelor's degree"
  300 = "Advanced degree"
  316 = "Master's degree"
  317 = "Master's degree--one year program"
  318 = "Master's degree--two year program"
  319 = "Master's degree--three+ year program"
  320 = "Professional degree"
  321 = "Doctoral degree"
  999 = "NIU (Not in universe)"
;

value SCHLCOLL_f
  01 = "Not enrolled"
  02 = "High school part time"
  03 = "High school full time"
  04 = "College/university part time"
  05 = "College/university full time"
  96 = "Refused"
  99 = "NIU (Not in universe)"
;

value EMPSTAT_f
  01 = "Employed - at work"
  02 = "Employed - absent"
  03 = "Unemployed - on layoff"
  04 = "Unemployed - looking"
  05 = "Not in labor force"
  99 = "NIU (Not in universe)"
;

value MULTJOBS_f
  00 = "No"
  01 = "Yes"
  99 = "NIU (Not in universe)"
;

value CLWKR_f
  01 = "Government, federal"
  02 = "Government, state"
  03 = "Government, local"
  04 = "Private, for profit"
  05 = "Private, nonprofit"
  06 = "Self-employed, incorporated"
  07 = "Self-employed, unincorporated"
  08 = "Without pay"
  99 = "NIU (Not in universe)"
;

value OCC2_f
  0110 = "Management occupations"
  0111 = "Business and financial operations occupations"
  0120 = "Computer and mathematical science occupations"
  0121 = "Architecture and engineering occupations"
  0122 = "Life, physical, and social science occupations"
  0123 = "Community and social service occupations"
  0124 = "Legal occupations"
  0125 = "Education, training, and library occupations"
  0126 = "Arts, design, entertainment, sports, and media occupations"
  0127 = "Healthcare practitioner and technical occupations"
  0130 = "Healthcare support occupations"
  0131 = "Protective service occupations"
  0132 = "Food preparation and serving related occupations"
  0133 = "Building and grounds cleaning and maintenance occupations"
  0134 = "Personal care and service occupations"
  0140 = "Sales and related occupations"
  0150 = "Office and administrative support occupations"
  0160 = "Farming, fishing, and forestry occupations"
  0170 = "Construction and extraction occupations"
  0180 = "Installation, maintenance, and repair occupations"
  0190 = "Production occupations"
  0200 = "Transportation and material moving occupations"
  9999 = "NIU (Not in universe)"
;

value IND2_f
  0100 = "Agriculture"
  0101 = "Forestry, logging, fishing, hunting, and trapping"
  0110 = "Mining"
  0120 = "Construction"
  0130 = "Nonmetallic mineral product manufacturing"
  0131 = "Primary metals and fabricated metal products"
  0132 = "Machinery manufacturing"
  0133 = "Computer and electronic product mfg"
  0134 = "Electrical equipment, appliance mfg"
  0135 = "Transportation equipment manufacturing"
  0136 = "Wood product manufacturing"
  0137 = "Furniture and fixtures manufacturing"
  0138 = "Miscellaneous and not specified mfg"
  0140 = "Food manufacturing"
  0141 = "Beverage and tobacco product mfg"
  0142 = "Textile, apparel, and leather manufacturing"
  0143 = "Paper manufacturing and printing"
  0144 = "Petroleum and coal products manufacturing"
  0145 = "Chemical manufacturing"
  0146 = "Plastics and rubber products manufacturing"
  0150 = "Wholesale trade"
  0160 = "Retail trade"
  0170 = "Transportation and warehousing"
  0180 = "Utilities"
  0190 = "Publishing industries (except internet)"
  0191 = "Motion picture and sound recording industries"
  0192 = "Broadcasting (except internet)"
  0193 = "Internet publishing and broadcasting"
  0194 = "Telecommunications"
  0195 = "Internet svc providers and data processing svcs"
  0196 = "Other information services"
  0200 = "Finance"
  0201 = "Insurance"
  0210 = "Real estate"
  0211 = "Rental and leasing services"
  0220 = "Professional, scientific, and technical services"
  0230 = "Management of companies and enterprises"
  0231 = "Administrative and support services"
  0232 = "Waste management and remediation services"
  0240 = "Educational services"
  0250 = "Hospitals"
  0251 = "Health care services, except hospitals"
  0252 = "Social assistance"
  0260 = "Arts, entertainment, and recreation"
  0270 = "Traveler accommodation"
  0271 = "Food services and drinking places"
  0280 = "Private households"
  0290 = "Repair and maintenance"
  0291 = "Personal and laundry services"
  0292 = "Membership associations and organizations"
  0300 = "Public administration"
  9999 = "NIU (Not in universe)"
;

value FAMBUS_WRK_f
  00 = "No"
  01 = "Yes"
  97 = "Don't know"
  99 = "NIU (Not in universe)"
;

value FULLPART_f
  01 = "Full time"
  02 = "Part time"
  99 = "NIU (Not in universe)"
;

value KIDUND18_f
  00 = "No"
  01 = "Yes"
  99 = "NIU (Not in universe)"
;

run;

data IPUMS.atus_00004;
infile ASCIIDAT pad missover lrecl=149;

input
  YEAR             1-5
  CASEID           6-19
  SERIAL           20-26
  PERNUM           27-28
  LINENO           29-31
  WT06             32-48
  WT20             49-63 .6
  AGE              64-66
  SEX              67-68
  MARST            69-70
  EDUC             71-73
  EDUCYRS          74-76
  SCHLCOLL         77-78
  EMPSTAT          79-80
  MULTJOBS         81-82
  CLWKR            83-84
  OCC2             85-88
  IND2             89-92
  FAMBUS_WRK       93-94
  FULLPART         95-96
  UHRSWORKT        97-100
  EARNWEEK         101-107 .2
  KIDUND18         108-109
  Cuidados         110-113
  Deporte          114-117
  Educacion        118-121
  Espiritualidad   122-125
  Hogar            126-129
  Personal         130-133
  Socializar       134-137
  Trabajo          138-141
  Viajando         142-145
  Voluntariado     146-149
;

label
  YEAR           = "Survey year"
  CASEID         = "ATUS Case ID"
  SERIAL         = "Household serial number"
  PERNUM         = "Person number (general)"
  LINENO         = "Person line number"
  WT06           = "Person weight, 2006 methodology"
  WT20           = "Person weight, 2020 methodology"
  AGE            = "Age"
  SEX            = "Sex"
  MARST          = "Marital status"
  EDUC           = "Highest level of school completed"
  EDUCYRS        = "Years of education"
  SCHLCOLL       = "Enrollment in school or college"
  EMPSTAT        = "Labor force status"
  MULTJOBS       = "Has more than one job"
  CLWKR          = "Class of worker, main job"
  OCC2           = "General occupation category, main job"
  IND2           = "General industry classification, main job"
  FAMBUS_WRK     = "Did unpaid work for family business during past 7 days"
  FULLPART       = "Full time/part time employment status"
  UHRSWORKT      = "Hours usually worked per week"
  EARNWEEK       = "Weekly earnings"
  KIDUND18       = "Own child under 18 in household"
  Cuidados       = "ACT: Caring for and helping household members"
  Deporte        = "ACT: Sports, exercise, and recreation"
  Educacion      = "ACT: Educational activities"
  Espiritualidad = "ACT: Religious and spiritual activities"
  Hogar          = "ACT: Household activities"
  Personal       = "ACT: Personal care"
  Socializar     = "ACT: Socializing, relaxing, and leisure"
  Trabajo        = "ACT: Working and Work-related Activities"
  Viajando       = "ACT: Traveling"
  Voluntariado   = "ACT: Volunteer activities"
;

format
  PERNUM          PERNUM_f.
  LINENO          LINENO_f.
  SEX             SEX_f.
  MARST           MARST_f.
  EDUC            EDUC_f.
  EDUCYRS         EDUCYRS_f.
  SCHLCOLL        SCHLCOLL_f.
  EMPSTAT         EMPSTAT_f.
  MULTJOBS        MULTJOBS_f.
  CLWKR           CLWKR_f.
  OCC2            OCC2_f.
  IND2            IND2_f.
  FAMBUS_WRK      FAMBUS_WRK_f.
  FULLPART        FULLPART_f.
  KIDUND18        KIDUND18_f.
;

format
  CASEID          14.
  WT06            17.
  WT20            16.6
;

run;

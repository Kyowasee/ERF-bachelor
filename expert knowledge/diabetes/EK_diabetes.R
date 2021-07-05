################################################################################
#                                                                              #
#     Expert Knowledge on the Risk Factors and Diagnosis of Diabetes           # 
#                                                                              #
################################################################################

# 1. Factual Domain Knowledge
# 2. Heuristic Expert Knowledge

#===============================================================================
#                        1. FACTUAL DOMAIN KNOWLEDGE
#===============================================================================

# 1.1. Rules extracted from the 'Diabetes Risk Test' within the
#      'Standards of Medical Care in Diabetes - 2019' 
#      published by the American Diabetes Association

fdk_rules1 <-  c("Age<=39 & BP<=80 & BMI<25",
                "Age>=40 & Age<=49 & BP<=80 & BMI<25", 
                "Age>=50 & Age<=59 & BP<=80 & BMI<25", 
                "Age>=60 & BP<=80 & BMI<25", 
                "Age<=39 & BP>=81 & BMI<25", 
                "Age>=40 & Age<=49 & BP>=81 & BMI<25", 
                "Age>=50 & Age<=59 & BP>=81 & BMI<25", 
                "Age>=60 & BP>=81 & BMI<25", 
                "Age<=39 & BP<=80 & BMI>=25 & BMI<=30",
                "Age>=40 & Age<=49 & BP<=80 & BMI>=25 & BMI<=30", 
                "Age>=50 & Age<=59 & BP<=80 & BMI>=25 & BMI<=30", 
                "Age>=60 & BP<=80 & BMI>=25 & BMI<=30", 
                "Age<=39 & BP>=81 & BMI>=25 & BMI<=30", 
                "Age>=40 & Age<=49 & BP>=81 & BMI>=25 & BMI<=30", 
                "Age>=50 & Age<=59 & BP>=81 & BMI>=25 & BMI<=30", 
                "Age<=39 & BP<=80 & BMI>=31 & BMI<=40", 
                "Age>=40 & Age<=49 & BP<=80 & BMI>=31 & BMI<=40", 
                "Age>=50 & Age<=59 & BP<=80 & BMI>=31 & BMI<=40", 
                "Age<=39 & BP>=81 & BMI>=31 & BMI<=40", 
                "Age>=40 & Age<=49 & BP>=81 & BMI>=31 & BMI<=40", 
                "Age<=39 & BP<=80 & BMI>40", 
                "Age>=40 & Age<=49 & BP<=80 & BMI>40",
                "Age>=60 & BP>=81 & BMI>=25 & BMI<=30",
                "Age>=60 & BP<=80 & BMI>=31 & BMI<=40",
                "Age>=50 & Age<=59 & BP>=81 & BMI>=31 & BMI<=40",
                "Age>=60 & BP>=81 & BMI>=31 & BMI<=40", 
                "Age>=50 & Age<=59 & BP<=80 & BMI>40", 
                "Age>=60 & BP<=80 & BMI>40", 
                "Age<=39 & BP>=81 & BMI>40", 
                "Age>=40 & Age<=49 & BP>=81 & BMI>40", 
                "Age>=50 & Age<=59 & BP>=81 & BMI>40", 
                "Age>=60 & BP>=81 & BMI>40")


# 1.2. Rules Extracted from Chapter 3, Therapeutic Goals of the
#      Nationale Versorgungs-Leitlinie Diabetes Mellitus Typ 2

fdk_rules2 <- c("Glucose<=100", 
               "Glucose>100 & Glucose<=110", 
               "Glucose>110",
               "BP<=85",
               "BP>85 & BP<=90",
               "BP>90",
               "BMI<=24",
               "BMI>24 & BMI<=26", 
               "BMI>26", 
               "Glucose>110 & BP>90",
               "Glucose>110 & BMI>26",
               "BP>90 & BMI>26",
               "Glucose>110 & BP>90 & BMI>26")


# Linear terms extracted from both guidelines

fdk_linear <- c("BP", "Glucose", "Age", "BMI", "DPF")

#1.3 Rules extracted from the Performance of a predictive model to identify undiagnosed diabetes
#in a health care setting. (Rotterdam)
fdk_rules3 <- c("Age<55 & BMI<23 & BP<65", #(minor)
              "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP<65", #(minor)
              "Age>=60 & Age<75 & BMI>25 & BP<65",  #(mid)
              "Age>=75 & BMI<25 & BP<65 & BMI>30", #(strong)
              "Age<55& BMI<23 & BP<65", #(minor)
              "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP<65",  #(minor)
              "Age>=60 & Age<75 & BMI>25 & BP<65", #(mid)
              "Age>=75 & BMI<25 & BP<65 & BMI>30", #(very strong) 
              "Age<55& BMI<23 & BP>=65 & BP<80 ", #(minor)
              "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP>=65 & BP<80",  #(mid)
              "Age>=60 & Age<75 & BMI>25 & BP>=65 & BP <80", #(strong)
              "Age>=75 & BMI<25 & BMI>30 & BP>=65 & BP <80", #(very strong)
              "Age<55 & BMI<23 & BP<65",#(minor)
              "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP<65",  #(mid)
              "Age>=60 & Age<75 & BMI>25 & BP<65", #(strong)
              "Age>=75 & BMI<25 & BP<65 &BMI>30", #(very strong) 
              "Age<30 & BMI>=25 & BP>=80", #(strong)
              "Age>=30 & Age<44 & BMI>=25 & BP>= 80", #(strong)
              "Age>=45 & Age<59 & BMI>=25 & BP>= 80",  #(very strong)
              "Age>=59 & BMI>=25 & BP>=80")

#1.4 Rules extracted from the Derivation and validation of diabetes risk score for urban Asian Indians
fdk_rules4 <- c("Age<30 & BMI<25", #(minor) (INDIA)
                "Age>=30 & Age<44 & BMI<25",  #(minor)
                "Age>=45 & Age<59 & BMI<25",  #(minor)
                "Age>=59 & BMI<25",  #(mid)
                "Age<30 & BMI>=25", #(strong)
                "Age>=30 & Age<44 & BMI>=25",  #(strong)
                "Age>=45 & Age<59 & BMI>=25",  #(very strong)
                "Age>=59 & BMI>=25" )

#1.5 Rules extracted from the Original Article: EpidemiologyA simple Chinese risk score
#for undiagnosed diabetes (CHINA)
fdk_rules5 <- c("Age<35 & BMI<23 & BP<69", #(minor)
                "Age<35 & BMI>=23 & BMI<25 & BP<69", #(minor)
                "Age<35 & BMI>=23 & BMI<25 & BP>=69 & BP<80", #(minor)
                "Age>=35 & Age<45 & BMI<23 & BP<69", #(minor)
                "Age>=35 & Age<45 & BMI>=23 & BMI<25 & BP<69", #(minor)
                "Age>=35 & Age<45 & BMI>=23 & BMI<25 & BP>=69 & BP<80", #(minor)
                "Age<35 & BMI>=25 & BMI<28 & BP<90", #(strong)
                "Age>=35 & Age<45 & BMI>=25 & BMI<28 & BP<69", #(strong)
                "Age>=45 & Age<55 & BMI>=25 & BMI<28 & BP>=69 & BP<80",  #(strong)
                "Age>=55 & Age<65 & BMI>=25 & BMI<28 & BP>=69 & BP<80",  #(strong)
                "Age>=55 & Age<65 & BMI>=28 & BMI<30 & BP>=69 & BP<80",  #( very strong)
                "Age>=55 & Age<65 & BMI>=28 & BMI<30 & BP>=80 & BP<90",  #( very strong)
                "Age>=55 & Age<65 & BMI>=28 & BMI<30 & BP>90",   #( very strong)
                "Age>=65 & BMI>=30 & BP>=90")

# Rules extracted from Prevalence of diabetes, pre-diabetes and associated risk factors: 
#second National Diabetes Survey of Pakistan (NDSP), 2016–2017 (Pakistan)
fdk_rules6 <- c("Age>=20 & Age<40 & BMI<20 & BP<90 & Glucose <200", #(minor)
                "Age>= 40 & Age<60 & BMI<20 & BP<90 & Glucose <200", #(minor)
                "Age>= 60 & BMI<25 & BMI<20 & BP<90 & Glucose <200", #(minor)
                "Age>=20 & Age<40 & BMI<20 & BP>90 & Glucose <200", #(minor)
                "Age>= 40 & Age<60 & BMI<20 & BP>90 & Glucose <200", #(minor)
                "Age>= 60 & BMI<25 & BMI<20 & BP>90 & Glucose <200", #(minor)
                "Age>=20 & Age<40 & BMI<20 & BP<90 & Glucose >200", #(mid)
                "Age>= 40 & Age<60 & BMI<20 & BP<90 & Glucose >200", #(mid)
                "Age>= 60 & BMI<25 & BMI<20 & BP<90 & Glucose >200", #(mid)
                "Age>=20 & Age<40 & BMI>=20 & BMI<26 & BP>90 & Glucose <200", #(mid)
                "Age>= 40 & Age<60 & BMI>=20 & BMI<26 & BP>90 & Glucose <200", #(mid)
                "Age>= 60 & BMI<25 & BMI>=20 & BMI<26 & BP>90 & Glucose <200", #(mid)
                "Age>=20 & Age<40 & BMI>=20 & BMI<26 & BP>90 & Glucose >200", #(strong)
                "Age>= 40 & Age<60 & BMI>=20 & BMI<26 & BP>90 & Glucose >200", #(strong)
                "Age>= 60 & BMI<25 & BMI>=20 & BMI<26 & BP>90 & Glucose >200", #(strong)
                "Age>=20 & Age<40 & BMI>=30 & BP>90 & Glucose >200", #(very strong)
                "Age>= 40 & Age<60 & BMI>=30 & BP>90 & Glucose >200", #very strong)
                "Age>= 60 & BMI<25 & BMI>=30 & BP>90 & Glucose >200", #(very strong)
                "Age>=20 & Age<40 & BMI>=30 & BP<90 & Glucose >200", #(very strong)
                "Age>= 40 & Age<60 & BMI>=30 & BP<90 & Glucose >200", #(very strong)
                "Age>= 60 & BMI<25 & BMI>=30 & BP<90 & Glucose >200")

#Development and Validation of a Patient Self-assessment Score for
#Diabetes Risk (ADA)
fdk_rules7 <-c("Age<40 & BMI<25 & BP<80", #(minor)
               "Age>=40 & Age<49 & BMI<25 & BP<80", #(minor)
               "Age>=49 & Age<59 & BMI<25 & BP<80", #(minor)
               "Age>=59 & BMI<25 & BP<80", #(minor)
               "Age<40 &  BMI<25 & BP>80", #(mid)
               "Age>=40 & Age<49 & BMI<25 & BP>80", #(strong)
               "Age>=49 & Age<59 & BMI<25 & BMI<30 & BP>80", #(strong)
               "Age>=59 & BMI<25 & BP>80", #(mid)
               "Age<40 & BMI>=25 & BMI<30 & BP<80", #(strong)
               "Age>=40 & Age<49 &  BMI>=25 & BMI <30 & BP<80", #(strong)
               "Age>=49 & Age<59 &  BMI>=25 & BMI <30 & BP<80", #(strong)
               "Age>=59 & BMI>=25 & BMI<30 & BP<80", #(strong)
               "Age<40 & BMI>=25 & BMI<30 & BP>80", #(very strong)
               "Age>=40 & Age<49 &  BMI>=25 & BMI<30 & BP>80", #( very strong)
               "Age>=49 & Age<59 &  BMI>=25 & BMI<30 & BP>80", #(very strong)
               "Age>=59 &  BMI>=25 & BMI<30 & BP>80", #( very strong)
               "Age<40 & BMI>=30 & BP>80", #( very strong)
               "Age>=40 & Age<49 & BMI>=30 & BP>80", #( very strong)
               "Age>=49 & Age<59 &  BMI>=30 & BP>80", #(very strong)
               "Age>=59 & BMI>=30 & BP>80")

#Rules extracted from Screening for type 2 Diabetess (Cambridge)
fdk_rules8 <-c("Age<25 & Glucose<200", #(minor)
               "Age>=25 & Age<34 & Glucose<200", #(minor)
               "Age>=34 & Age<64 & Glucose<200",  #(mid)
               "Age>=65 & Glucose<200",  #(mid)
               "Age<25 & Glucose>=200", #( strong)
               "Age>=25 & Age<34 & Glucose>=200", #(very strong)
               "Age>=34 & Age<64 & Glucose>=200",  #(very strong)
               "Age>=65 & Glucose>=200")

#RULES COMBINED FROM ALL GUIDELINES 
fdk_rules9 <- c("Age<55 & BMI<23 & BP<65", 
                "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP<65", 
                "Age>=60 & Age<75 & BMI>25 & BP<65",  
                "Age>=75 & BMI<25 & BP<65 & BMI>30",
                "Age<55& BMI<23 & BP<65",
                "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP<65",  
                "Age>=60 & Age<75 & BMI>25 & BP<65", 
                "Age>=75 & BMI<25 & BP<65 & BMI>30",  
                "Age<55& BMI<23 & BP>=65 & BP<80 ", 
                "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP>=65 & BP<80",  
                "Age>=60 & Age<75 & BMI>25 & BP>=65 & BP <80", 
                "Age>=75 & BMI<25 & BMI>30 & BP>=65 & BP <80", 
                "Age<55 & BMI<23 & BP<65", 
                "Age>=55 & Age<60 & BMI>=23 & BMI<25 & BP<65",  
                "Age>=60 & Age<75 & BMI>25 & BP<65",
                "Age>=75 & BMI<25 & BP<65 &BMI>30",  
                "Age<30 & BMI>=25 & BP>=80", 
                "Age>=30 & Age<44 & BMI>=25 & BP>= 80", 
                "Age>=45 & Age<59 & BMI>=25 & BP>= 80",  
                "Age>=59 & BMI>=25 & BP>=80",
                "Age<30 & BMI<25", #(minor) (INDIA)
                "Age>=30 & Age<44 & BMI<25",  #(minor)
                "Age>=45 & Age<59 & BMI<25",  #(minor)
                "Age>=59 & BMI<25",  #(mid)
                "Age<30 & BMI>=25", #(strong)
                "Age>=30 & Age<44 & BMI>=25",  #(strong)
                "Age>=45 & Age<59 & BMI>=25",  #(very strong)
                "Age>=59 & BMI>=25",
                "Age<35 & BMI<23 & BP<69", #(minor)
                "Age<35 & BMI>=23 & BMI<25 & BP<69", #(minor)
                "Age<35 & BMI>=23 & BMI<25 & BP>=69 & BP<80", #(minor)
                "Age>=35 & Age<45 & BMI<23 & BP<69", #(minor)
                "Age>=35 & Age<45 & BMI>=23 & BMI<25 & BP<69", #(minor)
                "Age>=35 & Age<45 & BMI>=23 & BMI<25 & BP>=69 & BP<80", #(minor)
                "Age<35 & BMI>=25 & BMI<28 & BP<90", #(strong)
                "Age>=35 & Age<45 & BMI>=25 & BMI<28 & BP<69", #(strong)
                "Age>=45 & Age<55 & BMI>=25 & BMI<28 & BP>=69 & BP<80",  #(strong)
                "Age>=55 & Age<65 & BMI>=25 & BMI<28 & BP>=69 & BP<80",  #(strong)
                "Age>=55 & Age<65 & BMI>=28 & BMI<30 & BP>=69 & BP<80",  #( very strong)
                "Age>=55 & Age<65 & BMI>=28 & BMI<30 & BP>=80 & BP<90",  #( very strong)
                "Age>=55 & Age<65 & BMI>=28 & BMI<30 & BP>90",   #( very strong)
                "Age>=65 & BMI>=30 & BP>=90",
                "Age>=20 & Age<40 & BMI<20 & BP<90 & Glucose <200", #(minor)
                "Age>= 40 & Age<60 & BMI<20 & BP<90 & Glucose <200", #(minor)
                "Age>= 60 & BMI<25 & BMI<20 & BP<90 & Glucose <200", #(minor)
                "Age>=20 & Age<40 & BMI<20 & BP>90 & Glucose <200", #(minor)
                "Age>= 40 & Age<60 & BMI<20 & BP>90 & Glucose <200", #(minor)
                "Age>= 60 & BMI<25 & BMI<20 & BP>90 & Glucose <200", #(minor)
                "Age>=20 & Age<40 & BMI<20 & BP<90 & Glucose >200", #(mid)
                "Age>= 40 & Age<60 & BMI<20 & BP<90 & Glucose >200", #(mid)
                "Age>= 60 & BMI<25 & BMI<20 & BP<90 & Glucose >200", #(mid)
                "Age>=20 & Age<40 & BMI>=20 & BMI<26 & BP>90 & Glucose <200", #(mid)
                "Age>= 40 & Age<60 & BMI>=20 & BMI<26 & BP>90 & Glucose <200", #(mid)
                "Age>= 60 & BMI<25 & BMI>=20 & BMI<26 & BP>90 & Glucose <200", #(mid)
                "Age>=20 & Age<40 & BMI>=20 & BMI<26 & BP>90 & Glucose >200", #(strong)
                "Age>= 40 & Age<60 & BMI>=20 & BMI<26 & BP>90 & Glucose >200", #(strong)
                "Age>= 60 & BMI<25 & BMI>=20 & BMI<26 & BP>90 & Glucose >200", #(strong)
                "Age>=20 & Age<40 & BMI>=30 & BP>90 & Glucose >200", #(very strong)
                "Age>= 40 & Age<60 & BMI>=30 & BP>90 & Glucose >200", #very strong)
                "Age>= 60 & BMI<25 & BMI>=30 & BP>90 & Glucose >200", #(very strong)
                "Age>=20 & Age<40 & BMI>=30 & BP<90 & Glucose >200", #(very strong)
                "Age>= 40 & Age<60 & BMI>=30 & BP<90 & Glucose >200", #(very strong)
                "Age>= 60 & BMI<25 & BMI>=30 & BP<90 & Glucose >200",
                "Age<40 & BMI<25 & BP<80", #(minor)
               "Age>=40 & Age<49 & BMI<25 & BP<80", #(minor)
               "Age>=49 & Age<59 & BMI<25 & BP<80", #(minor)
               "Age>=59 & BMI<25 & BP<80", #(minor)
               "Age<40 &  BMI<25 & BP>80", #(mid)
               "Age>=40 & Age<49 & BMI<25 & BP>80", #(strong)
               "Age>=49 & Age<59 & BMI<25 & BMI<30 & BP>80", #(strong)
               "Age>=59 & BMI<25 & BP>80", #(mid)
               "Age<40 & BMI>=25 & BMI<30 & BP<80", #(strong)
               "Age>=40 & Age<49 &  BMI>=25 & BMI <30 & BP<80", #(strong)
               "Age>=49 & Age<59 &  BMI>=25 & BMI <30 & BP<80", #(strong)
               "Age>=59 & BMI>=25 & BMI<30 & BP<80", #(strong)
               "Age<40 & BMI>=25 & BMI<30 & BP>80", #(very strong)
               "Age>=40 & Age<49 &  BMI>=25 & BMI<30 & BP>80", #( very strong)
               "Age>=49 & Age<59 &  BMI>=25 & BMI<30 & BP>80", #(very strong)
               "Age>=59 &  BMI>=25 & BMI<30 & BP>80", #( very strong)
               "Age<40 & BMI>=30 & BP>80", #( very strong)
               "Age>=40 & Age<49 & BMI>=30 & BP>80", #( very strong)
               "Age>=49 & Age<59 &  BMI>=30 & BP>80", #(very strong)
               "Age>=59 & BMI>=30 & BP>80",
               "Age<25 & Glucose<200", #(minor)
               "Age>=25 & Age<34 & Glucose<200", #(minor)
               "Age>=34 & Age<64 & Glucose<200",  #(mid)
               "Age>=65 & Glucose<200",  #(mid)
               "Age<25 & Glucose>=200", #( strong)
               "Age>=25 & Age<34 & Glucose>=200", #(very strong)
               "Age>=34 & Age<64 & Glucose>=200",  #(very strong)
               "Age>=65 & Glucose>=200")

#===============================================================================
#                        2. HEURISTIC EXPERT KNOWLEDGE
#===============================================================================

hek_rules <- c("Age<=42 & BP<=80 & BMI<=29",
                         "Age>=45 & BP>=90 & Glucose>=125",
                         "Age<=31 & BP>=90 & BMI>=38",
                         "Age>=55 & BP<=80 & BMI<=29",
                         "Age>=60 & Glucose>=130 & BMI>=35", 
                         "Age>=60 & BP>=90 & BMI>=37",
                         "Age>=45 & BP>=90 & BMI>=35 & Glucose>=130",
                         "Age>=55 & BP<=90 & BMI<=30 & Glucose>=130",
                         "Age<=60 & BP<=90 & BMI<=30 & Glucose<=100")

hek_linear <- c("BMI", "Age", "DPF")


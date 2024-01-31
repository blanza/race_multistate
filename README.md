# Racial Classification as a Multistate Process

Repository of data and methods used in the paper Racial Classification as a Multistate Process - published in Demographic Research 

Jeronimo Muniz, Aliya Saperstein and Bernardo Queiroz

# Abstract

Although the existence of racial fluidity in Brazil and in the United States is generally
accepted, in both Brazil and the United States, changes in racial classification over the
life course are often not incorporated into standard demographic estimates.

By taking a multistate perspective on the variability of racial classification, we can use
demographic methods to ask new questions about the nature of racial fluidity in Brazil,
such as: How many years can someone born into theclassified as White, Brown, or
Black categories at birth expect to live in a different racial categorye? At what ages are
changes in racial classification transitions between races more likely to occur?

We compute multistate life tables using linked data from Brazil’s largest household
survey (2017-2019 PNAD-C) to estimate transition probabilities between the White,
Brown, and Black race categories, which we combine with age- and race-specific
mortality probabilities.

Transition probabilities reveal that, up to age 65, Brazilians are more likely to be
reclassified from either White or Black to Brown than they are to die at each age.
Conditional life expectancy estimates show that Brazilians who were classified as Black
at birth can expect to live almost 15 years of their lives classified as White, while those
classified as White at birth can expect to live, on average, three years classified as
Black.

We provide important new evidence on the extent of racial fluidity in contemporary
Brazil and demonstrate the feasibility of accounting for this fluidity in traditional
demographic analysis.

Keywords: increment-decrement, life expectancy, life table, multistate, race, Brazil,
demography, mortality, racial classification

# Stata Packages

1) For mortality adjustment and life tables estimation

ilt in Stata

Muniz, Jerônimo Oliveira. &quot;Iterative intercensal single-decrement life
tables using Stata.&quot; The Stata Journal 23.3 (2023): 813-834.

2) Multistate Lifetables

mslt in Stata

Muniz, Jeronimo Oliveira. &quot;Multistate life tables using Stata.&quot; The Stata
Journal 20.3 (2020): 721-745.

# Working Files

1) input_ilt.xls - population and death counts by age and race
   
   Population in 2010 and 2020; average death counts in the period

2) input_ilt.txt - population and death counts by age and race - in non-proprietary format (TXT)   

3) input_mslt.dta - file combining transition and mortality rates

4) input_mslt.csv  - file combining transition and mortality rates

# 5) code for replication_Muniz, Saperstein and Queiroz.do

  i) Code to replicate tables and figure in the article by Muniz, J., Saperstein, A., and Queiroz, B. (2024)							   *

         *Racial Classification as a Multistate Process, Demographic Research		   *

         *The programs require at least Stata vesion 10.0 							   *

         *Files input_ilt.txt and input_mslt.csv must be in the same directory as this .do file							

# Baseline data

1) Baseline data – Transitions
a. Pesquisa Nacional por Amostra de Domicilios – Continua (PNAD-C): public
available at:
i
https://ftp.ibge.gov.br/Trabalho_e_Rendimento/Pesquisa_Nacional_p
or_Amostra_de_Domicilios_continua/Trimestral/Microdados

b. Data were organized using material prepared by Data Zoom
i. https://www.econ.puc-rio.br/datazoom/english/pnadc.html

3) Mortality Data
a. Public Available
b. Ministry of Health’s Mortality Information System (SIM, Datasus, Ministério da
Saúde 2021 – available at: https://opendatasus.saude.gov.br/dataset/sim)

4) Population Data
a. 2010: public available for 2010 Population Census (www.ibge.gov.br)
b. 2019: estimated from the PNAD-C

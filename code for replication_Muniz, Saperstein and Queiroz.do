********************************************************************************
*Code to replicate tables and figure in the article by						   *
*Muniz, J., Saperstein, A., and Queiroz, B. (2024)							   *
*Racial Classification as a Multistate Process, Demographic Research		   *
*The programs require at least Stata vesion 10.0 							   *
*Files input_ilt.txt and input_mslt.csv must be in the same directory as this  *
*.do file																	   *
*																			   *
*Jeronimo Oliveira Muniz, PhD. 											 	   *
* Dept. of Sociology at the Federal Univ. of Minas Gerais (UFMG), Brazil.      *
********************************************************************************

net install st0615.pkg, replace // Installs mslt, Muniz (2020)
net install st0729.pkg, replace //Installs ilt, Muniz (2023)
net install moremata.pkg, replace //Installs Ben Jann's moremata

*********
*TABLE 1*
*********
*Estimation of White's life table
import delimited input_ilt.txt, delimiters(tab) varn(2) colr(1:4) clear
lab var age_x "Age group"
lab var w_2010 "White pop. in 2010"
lab var w_2020 "White pop. in 2020"
lab var	wd_2010_19 "Average number of white deaths btw. 2010 and 2019"
ilt, interval(10) // White life tables using the iterative method

*Estimation of Brown's life table
import delimited input_ilt.txt, delimiters(tab) varn(2) colr(1:7) clear
drop w_2010-wd_2010_19
lab var age_x "Age group"
lab var  br_2010 "Brown pop. in 2010"
lab var br_2020 "Brown pop. in 2020"
lab var	brd_2010_19 "Average number of brown deaths btw. 2010 and 2019"
ilt, interval(10) // Brown life tables using the iterative method

*Estimation of Black's life table
import delimited input_ilt.txt, delimiters(tab) varn(2) colr(1:10) clear
drop w_2010-brd_2010_19
lab var age_x "Age group"
lab var  bl_2010 "Black pop. in 2010"
lab var bl_2020 "Black pop. in 2020"
lab var	bld_2010_19 "Average number of black deaths btw. 2010 and 2019"
ilt, interval(10) // Brown life tables using the iterative method

*******************************
*FIGURE 1, TABLE 2 and TABLE 3*
*******************************
import delimited using input_mslt.csv, varn(1) clear
lab var age "Age"
lab var _wbr "Prob. of transition from White to Brown"
lab var _wb "Prob. of transition from White to Black"
lab var _wd "Prob. of dying (White)"
lab var _brw "Prob. of transition from Brown to White"
lab var _brb "Prob. of transition from Brown to Black"
lab var _brd "Prob. of dying (Brown)"
lab var _bw "Prob. of transition from Black to White"
lab var _bbr "Prob. of transition from Black to Brown"
lab var _bd "Prob. of dying (Black)"
list // interpolated version of Table 2, for single ages
mslt, l0(1057855 809087 81067 0) proportion death summary // Fig.1 and Tab.3

*********
*TABLE 4*
*********
mslt, l0(1057855 0 0 0) p d cond // Status-based life expectancies for Whites
mslt, l0(0 809087 0 0) p d cond //Status-based life expectancies for Browns
mslt, l0(0 0 81067 0) p d cond //Status-based life expectancies for Blacks


/*REFERENCES
Muniz, J. (2020). Multistate life tables using Stata. The Stata Journal 20(3): 
	721-745. doi: 10.1177/1536867X20953577.
Muniz, J. (2023). Iterative intercensal single decrement life tables using 
	Stata. The Stata Journal 23(3): 813-834. doi: 10.1177/1536867X231196441.
*/




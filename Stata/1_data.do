// 学术论文
// cheng
// 2017年5月
// 文件描述注释，包括程序的用途、输入和输出

cd C:\Users\cheng\Desktop\公告书与创新
cls
log close _all
log using "logs\cheng", name(innovation) smcl

*****导入数据*****
// 公司信息
import excel "raw_data\公司信息\info.xlsx",firstrow clear  // 采用相对路径

// 持股信息


*****回归分析*****
local kz "x1 x2 x3"
eststo clear
foreach var of var financec1-financec6{
	qui:eststo: xi:reg `var' idd `kz'
}
esttab ,b(%4.3f) t(%6.3f) order()scalars(N r2_a F) title(Hypothesis 1-1) nogaps drop(_I*)



// OLS
local kz "x1 x2 x3"
eststo clear
qui:eststo: xi:reg rd financec1 `kz'
qui:eststo: xi:reg rd financec2 `kz'
esttab ,b(%4.3f) t(%6.3f) order()scalars(N r2_a F) title(Hypothesis 1-1) nogaps drop(_I* o._*)
esttab using result.rtf, order() b(%4.3f) t(%6.3f) scalars(N r2_a F)title(Hypothesis 1-1) replace nogaps drop(_I* o._*)




log close innovation

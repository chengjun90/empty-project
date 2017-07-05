# 学术论文
# cheng
# 2017年5月
# 文件描述注释，包括程序的用途、输入和输出

# source()和library()语句
source('')
library(tidyverse)
library(data.table)
library(haven)
library(readxl)
library(stringr)
library(janitor)
library(skimr)
library(lubridate)

# 函数定义----
clean <- function(x, y) {
  abc <- x + y
  return(abc)
}

# 被执行的语句，如果有适用的（例如，print，plot）
# 导入数据----
# 公司信息
dta <- readxl::read_excel("raw_data/公司信息/info.xlsx")  # 采用相对路径进行

print("ok")

# 列示数据集
list.files(path = "raw_data/财务指标",
           pattern = ".xlsx",
           recursive = TRUE, 
           full.names = TRUE) %>% as_tibble()

# 合并数据----
print("ok")

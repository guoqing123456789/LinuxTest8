#!/bin/bash
echo "请输入一组数字："
read -p "数字间以空格隔开：" -a arrs
for((i=0;i<${#arrs[*]};i++))
   do
        for((j=0;j<${#arrs[*]}-1;j++))
           do
                if [ ${arrs[j]} -gt ${arrs[j+1]} ]
                then
                   tmp=${arrs[j]}
                   arrs[j]=${arrs[j+1]}
                   arrs[j+1]=$tmp
                fi
           done
   done
echo "输出从小到大的排序：${arrs[*]}"

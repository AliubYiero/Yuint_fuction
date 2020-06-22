--[[
1.Yuint_multiple_shape({{},{}})
2.多层图形(附颜色)定义
3.tbl中需要输入两个表
4.第一个表存放图形；第二个表存放颜色代码
5.注：两个表的元素数最好为相同元素，否则不能直接调用maxloop(num);tmp[j].shape;tmp[j].color 
--]]
function Yuint_multiple_shape(tbl)				--定义函数Yuint_multiple_shape
	num = #tbl[1]									--获取表tbl[1]元素数
	tmp = {}										--创建表tmp
	for i = 1 , num do								
		tmp[i] = {}										--在tmp表内创建子表
	end
	for i = 1 , num do								
		tmp[i].shape = tbl[1][i]						--在每个tmp子表中添加元素shape并赋值
		tmp[i].color = tbl[2][i]						--在每个tmp子表中添加元素color并赋值
	end
	return tmp										--返回tmp表
end												--结束



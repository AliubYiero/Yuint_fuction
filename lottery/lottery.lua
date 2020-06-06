--[[
1.Yuint_lottery(tbl)
2.随机打乱表
3.tbl输入一个表，然后输出一个被打乱之后的表
4.通过重组表，使得能够通过有序调用，达到无重复输出无序数值的效果
5.具体使用请参照ass文件
6.code once行定义函数，code line/code syl行将函数规定住，每行/每个音节重组一次表，否则如果直接在template行调用函数，每次maxloop都会调用一次函数重组一次表，效果就跟直接math.random一样了
7.即
	code once,function Yuint_lottery(tbl) for i = 1 , #tbl do num = math.random(1,#tbl) tmp = tbl[i] tbl[i] = tbl[num] tbl[num] = tmp end return tbl end
	code syl,lottery = Yuint_lottery(tbl)				--tbl输入表
	template syl,!maxloop(loop_time)!!lottery[j]!		--loop_time输入想要输出多少个值
8.maxloop进行输出的时候，不能超过表的元素总数，否则超过元素总数的loop会返回nil
9.思路源自https://www.cnblogs.com/luguoshuai/p/10396103.html
--]]	
function Yuint_lottery(tbl)					--创建函数Yuint_lottery
		for i = 1 , #tbl do						--循环(len)次
			num = math.random(1,#tbl)				--随机赋值给num
			tmp = tbl[i]							--将有序表值对应的元素赋给tmp
			tbl[i] = tbl[num]						--重新排列tbl表
			tbl[num] = tmp							--表元素调换
		end										--结束
	return tbl									--返回tbl表
end											--结束

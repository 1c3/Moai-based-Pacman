function printf ( ... )
	return io.stdout:write ( string.format ( ... ) )
end 

function enum( tbl )
	local ret = {}
	for i,v in ipairs(tbl) do
		ret[v] = i
		i = i + 1
	end
	
	-- modify metatable below
	setmetatable( ret, ret )    -- �Լ������Լ��� metatable
	ret.safeindex = function(t, k)    -- ����һ�� assert ��� __index
		t.__index = nil
		local tmp = t[k]
		t.__index = t.safeindex
		assert( tmp )
		return tmp
	end
	ret.__index = ret.safeindex    -- ��Ĭ�ϵ� __index �滻�� assert ��� __index
	-- �����޸� metatable
	return ret
end

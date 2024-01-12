-- StringUtil

local StringUtil = {}

function StringUtil.ToUpperCase(str)
	return string.upper(str)
end

function StringUtil.ToLowerCase(str)
	return string.lower(str)
end

function StringUtil.GetLength(str)
	return string.len(str)
end

function StringUtil.Trim(str)
	return string.trim(str)
end

return StringUtil

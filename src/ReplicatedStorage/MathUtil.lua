-- MathUtil

local MathUtil = {}

function MathUtil.Sum(a, b)
	return a + b
end

function MathUtil.Multiply(a, b)
	return a * b
end

function MathUtil.Minus(a, b)
	return a - b
end

function MathUtil.Divide(a, b)
	if b ~= 0 then
		return a / b
	else
		return "Error: Division by zero"
	end
end

function MathUtil.Square(a)
	return a * a
end

function MathUtil.Mod(a, b)
	return a % b
end

return MathUtil

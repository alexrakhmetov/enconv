#!/usr/bin/env lua
-- TODO: FILE REWIND FOR NGRAPHS
function nconv(tbl, max, inp)
	local tmp = inp
	local n = max
	local out
	for i = 0, max do
		if tbl[tmp] ~= nil then
			out = tbl[tmp]
			return out
		end

		-- No decrement operator :(
		if n == 1 then
			break
		end
		n = n - 1
		tmp = string.sub(tmp, 1, n)
	end

	return inp
end

function main(argv)
	if argv[2] == nil then
		print("Usage: enconv <table> <max>\n"
		.. "<table> = The input table\n"
		.. "<max> = maximum n-graph size\n"
		.. "Text is taken from stdin\n")
		return
	end

	local tbl = require(argv[1])
	local max = tonumber(argv[2])

	local buf = "s"
	local res = ""

	while buf ~= nil do
		buf = io.read(max)
		if buf == nil then break end
		res = res..(nconv(tbl, max, buf))
	end
	io.write(res, "\n")
	return 0
end

main(arg)

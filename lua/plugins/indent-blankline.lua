-- 代码缩进插件
return {
	"lukas-reineke/indent-blankline.nvim",
	enabled = true,
	event = { "BufNewFile", "BufReadPost" },
	main = "ibl",
	opts = {},
}

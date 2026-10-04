vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
	local arg0 = vim.fn.argv(0)

	-- Start mit Ordner
	if arg0 ~= "" and vim.fn.isdirectory(arg0) == 1 then
		vim.cmd("cd " .. vim.fn.fnameescape(arg0))
		vim.schedule(function()
			vim.cmd("Neotree")
		end)
		return
	end
  end,
})

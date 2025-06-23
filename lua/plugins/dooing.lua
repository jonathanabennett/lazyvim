return {
  "atiladefreitas/dooing",
  config = function()
    require("dooing").setup({
      -- your custom config here (optional)
      save_path = "~/Nextcloud/dooing_todos.json",
    })
  end,
}

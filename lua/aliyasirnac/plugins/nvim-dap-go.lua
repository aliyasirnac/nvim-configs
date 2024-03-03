return {
  "leoluz/nvim-dap-go",
  ft = { "go" },
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    -- Test fonksiyonunu hata ayıklama için kısayol.
    vim.api.nvim_set_keymap(
      "n",
      "<leader>dgt",
      '<Cmd>lua require("dap-go").debug_test()<CR>',
      { noremap = true, silent = true }
    )

    -- Son hata ayıklama oturumunu tekrar başlatmak için kısayol.
    vim.api.nvim_set_keymap(
      "n",
      "<leader>dgl",
      '<Cmd>lua require("dap-go").debug_last()<CR>',
      { noremap = true, silent = true }
    )
  end,
}

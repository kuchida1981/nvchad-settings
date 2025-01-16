return {
  {
    "mattn/calendar-vim",
    cmd = "Calendar",
    config = function()
      vim.g.calendar_diary = os.getenv "HOME" .. "/Documents/nvim/notes"
    end,
  },
}

return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  event = {
    "BufReadPre /Users/aryan/Documents/Github/Cerebro/**/*.md",
    "BufNewFile /Users/aryan/Documents/Github/Cerebro/**/*.md",
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim'
  },
  opts = {
    workspaces = {
      {
        name = "Cerebro",
        path = "~/Documents/Github/Cerebro/",
      },
    },
    notes_subdir = 'Active',
    mappings = {},
    note_id_func = function(title)
      local file_name = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        file_name = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          file_name = file_name .. string.char(math.random(65, 90))
        end
      end
      return file_name
    end,
    disable_frontmatter = true,
    templates = {
      subdir = 'Templates'
    },
    attachments = {
      img_folder = 'Extras'
    }
  },
}

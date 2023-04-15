--local M = {}
--
--local status_ok, nvim_tree = pcall(require, "nvim-tree")
--if not status_ok then
--  return
--end
--
--function M.setup()
require('nvim-tree').setup({
    hijack_cursor = true,
    remove_keymaps = true,
    view = {
      adaptive_size = true,
      centralize_selection = true,
      side = 'left'
    },

    on_attach = function(bufnr)
      local bufmap = function(lhs, rhs, desc)
        vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
      end
    local api = require('nvim-tree.api')

    -- api.node
    bufmap('r', api.node.open.edit, 'Expand folder or go to file')
  --bufmap('', api.node.open.replace_tree_buffer, ' ')
  --bufmap('', api.node.open.no_window_picker, ' ')
    bufmap('n', api.node.open.vertical, ' ')
  --bufmap('', api.node.open.horizontal, ' ')
  --bufmap('', api.node.open.tab, ' ')
  --bufmap('', api.node.open.preview, ' ')
    bufmap('i', api.node.show_info_popup, ' ')
  --bufmap('', api.node.run.cmd, ' ')
    bufmap('<C-r>', api.node.run.system, ' ')
  --bufmap('', api.node.navigate.sibling.next, ' ')
  --bufmap('', api.node.navigate.sibling.prev, ' ')
    bufmap('l', api.node.navigate.sibling.first, ' ')
    bufmap('h', api.node.navigate.sibling.last, ' ')
    bufmap('c', api.node.navigate.parent, ' ')
    bufmap('C', api.node.navigate.parent_close, 'Close parent folder')
  --bufmap('', api.node.navigate.git.next, ' ')
  --bufmap('', api.node.navigate.git.prev, ' ')
  --bufmap('', api.node.navigate.diagnostics.next, ' ')
  --bufmap('', api.node.navigate.diagnostics.prev, ' ')

    -- api.tree
  --bufmap('', api.tree.open `(path? string)`, ' ')
  --bufmap('', api.tree.close, ' ')
  --bufmap('', api.tree.toggle `(find_file? bool, no_focus?: bool, path?: string)`, ' ')
    bufmap('f', api.tree.focus, ' ')
  --bufmap('', api.tree.reload, ' ')
  --bufmap('', api.tree.change_root `(path: string)`, ' ')
    bufmap('e', api.tree.change_root_to_node, 'Change root to node')
    bufmap('a', api.tree.change_root_to_parent, 'Change root to parent')
  --bufmap('', api.tree.get_node_under_cursor, ' ')
  --bufmap('', api.tree.find_file `(filename: string)`, ' ')
  --bufmap('', api.tree.search_node, ' ')
  --bufmap('', api.tree.collapse_all `(keep_buffers? bool)`, ' ')
    bufmap('R', api.tree.expand_all, ' ')
  --bufmap('', api.tree.toggle_gitignore_filter, ' ')
  --bufmap('', api.tree.toggle_custom_filter, ' ')
    bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
  --bufmap('', api.tree.toggle_help, ' ')

    -- api.fs
    bufmap('gc', api.fs.create, ' ')
    bufmap('gd', api.fs.remove, ' ')
  --bufmap('', api.fs.trash, ' ')
    bufmap('gr', api.fs.rename, ' ')
    bufmap('gR', api.fs.rename_sub, ' ')
    bufmap('gx', api.fs.cut, ' ')
    bufmap('gp', api.fs.paste, ' ')
  --bufmap('', api.fs.print_clipboard, ' ')
    bufmap('gy', api.fs.copy.node, ' ')
    bufmap('gap', api.fs.copy.absolute_path, ' ')
  --bufmap('', api.fs.copy.filename, ' ')
  --bufmap('', api.fs.copy.relative_path, ' ')

    -- api.git
  --bufmap('', api.git.reload, ' ')

    -- api.events
  --bufmap('', api.events.subscribe `(eventType Event, callback: function(...args))`
  --bufmap('', api.events.Event (enum type, please see |nvim_tree_events_kind|), ' ')

    -- api.live_filter
  --bufmap('', api.live_filter.start, ' ')
  --bufmap('', api.live_filter.clear, ' ')

    -- api.marks
  --bufmap('', api.marks.get, ' ')
  --bufmap('', api.marks.list, ' ')
  --bufmap('', api.marks.toggle, ' ')
  --bufmap('', api.marks.bulk.move, ' ')
  --bufmap('', api.marks.navigate.next, ' ')
  --bufmap('', api.marks.navigate.prev, ' ')
  --bufmap('', api.marks.navigate.select, ' ')

  end   
  })
--end
--
--return M


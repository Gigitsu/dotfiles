# This file is part of ranger, the console file manager.
# License: GNU GPL version 3, see the file "AUTHORS" for details.

from __future__ import (absolute_import, division, print_function)

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import (
  black, blue, cyan, green, magenta, red, white, yellow, default,
  normal, bold, reverse, dim, BRIGHT,
  default_colors,
)


class GG(ColorScheme):
  progress_bar_color = blue

  def use(self, context):  # pylint: disable=too-many-branches,too-many-statements
    fg, bg, attr = default_colors

    if context.reset:
      return default_colors

    elif context.in_browser:
      if context.selected:
        bg = black
      if context.empty or context.error:
        bg = red
        fg = black | BRIGHT
      if context.border:
        fg = default
      if context.media:
        if context.image:
          fg = yellow
        else:
          fg = magenta
      if context.container:
        fg = red | BRIGHT
      if context.directory:
        attr |= bold
        fg = blue
      elif context.executable and not \
          any((context.media, context.container,
             context.fifo, context.socket)):
        attr |= bold
        fg = green
      if context.socket:
        attr |= bold
        fg = magenta
      if context.fifo or context.device:
        fg = yellow
        if context.device:
          attr |= bold
      if context.link:
        fg = cyan if context.good else magenta
      if context.tag_marker and not context.selected:
        attr |= bold
        if fg in (red, magenta):
          fg = white
        else:
          fg = red
        # fg += BRIGHT
      if not context.selected and (context.cut or context.copied):
        attr |= bold
        fg = black
        # If the terminal doesn't support bright colors, use dim white
        # instead of black.
        if BRIGHT == 0:
          attr |= dim
          fg = white
      if context.main_column:
        # Doubling up with BRIGHT here causes issues because it's
        # additive not idempotent.
        if context.marked:
          attr |= bold
          fg = yellow
      if context.badinfo:
        if attr & reverse:
          bg = magenta
        else:
          fg = magenta

      if context.inactive_pane:
        fg = cyan

    elif context.in_titlebar:
      if context.hostname:
        if context.bad:
          fg = black | BRIGHT
          bg = red
        else:
          fg = white | BRIGHT
      elif context.directory:
        fg = blue
      elif context.tab:
        if context.good:
          bg = black
      elif context.link:
        fg = cyan
      attr |= bold

    elif context.in_statusbar:
      bg = black
      if context.permissions:
        if context.good:
          fg = cyan
        elif context.bad:
          fg = magenta
      if context.marked:
        attr |= bold | reverse
        fg = yellow
      if context.frozen:
        attr |= bold | reverse
        fg = cyan
      if context.message:
        if context.bad:
          attr |= bold
          fg = red
      if context.loaded:
        bg = self.progress_bar_color
      if context.vcsinfo:
        fg = green
        attr &= ~bold
      if context.vcscommit:
        fg = yellow
        attr &= ~bold
      if context.vcsdate:
        fg = cyan
        attr &= ~bold

    if context.text:
      if context.highlight:
        attr |= reverse

    if context.in_taskview:
      if context.title:
        fg = blue

      if context.selected:
        attr |= reverse

      if context.loaded:
        if context.selected:
          fg = self.progress_bar_color
        else:
          bg = self.progress_bar_color

    if context.vcsfile:
      attr &= ~bold
      if context.vcsconflict:
        fg = red
      elif context.vcsuntracked:
        fg = cyan
      elif context.vcschanged:
        fg = yellow
      elif context.vcsunknown:
        fg = yellow
      elif context.vcsstaged:
        fg = yellow
      elif context.vcssync:
        fg = green
      elif context.vcsignored:
        fg = default

    elif context.vcsremote and not context.selected:
      attr &= ~bold
      if context.vcssync or context.vcsnone:
        fg = green
      elif context.vcsbehind:
        fg = red
      elif context.vcsahead:
        fg = blue
      elif context.vcsdiverged:
        fg = magenta
      elif context.vcsunknown:
        fg = red

    return fg, bg, attr

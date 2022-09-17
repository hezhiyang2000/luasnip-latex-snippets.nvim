local ls = require("luasnip")

local normal_wA = {
  ls.parser.parse_snippet({ trig = "mk", name = "Math" }, "\\( ${1:${TM_SELECTED_TEXT}} \\)$0"),
  ls.parser.parse_snippet(
    { trig = "dm", name = "Block Math" },
    "\\[\n\t${1:${TM_SELECTED_TEXT}}\n.\\] $0"
  ),
  ls.parser.parse_snippet(
    {trig="template", name = "Template"},
      [[
        %! TEX TS-program = xelatex
        \PassOptionsToPackage{quiet}{fontspec}
        \documentclass[utf8]{ctexart}
        \usepackage{amsmath, amssymb}
        \usepackage[]{fontspec}

        \\begin{document}
          $0
        \\end{document}
      ]]
    )
}

return normal_wA

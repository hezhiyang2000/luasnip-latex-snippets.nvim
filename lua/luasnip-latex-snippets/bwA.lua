local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local bwA = {
  s(
    { trig = "ali", name = "Align" },
    { t({ "\\begin{align*}", "\t" }), i(1), t({ "", ".\\end{align*}" }) }
  ),
  s(
    { trig = "Ali", name = "Align (numbered)" },
    { t({ "\\begin{align}", "\t" }), i(1), t({ "", ".\\end{align}" }) }
  ),
  s(
    { trig = "frame", name = "Frame" },
    { t({ "\\begin{frame}{"}), i(1), t({"}", "\t"}), i(2), t({ "", "\\end{frame}" }) }
  ),
  s(
    { trig = "enum", name = "Enumerate" },
    { t({ "\\begin{enumerate}", "\t\\item "}), i(1), t({ "", "\\end{enumerate}" }) }
  ),
  s(
    { trig = "item", name = "Itemize" },
    { t({ "\\begin{itemize}", "\t\\item "}), i(1), t({ "", "\\end{itemize}" }) }
  ),

  ls.parser.parse_snippet(
    { trig = "beg", name = "begin{} / end{}" },
    "\\begin{$1}\n\t$0\n\\end{$1}"
  ),
  ls.parser.parse_snippet({ trig = "case", name = "cases" }, "\\begin{cases}\n\t$1\n\\end{cases}"),

  s({ trig = "bigfun", name = "Big function" }, {
    t({ "\\begin{align*}", "\t" }),
    i(1),
    t(":"),
    t(" "),
    i(2),
    t("&\\longrightarrow "),
    i(3),
    t({ " \\", "\t" }),
    i(4),
    t("&\\longmapsto "),
    i(1),
    t("("),
    i(4),
    t(")"),
    t(" = "),
    i(0),
    t({ "", ".\\end{align*}" }),
  }),
}

return bwA

import karax / [kdom, jstrutils, kajax, vdom, jjson, karaxdsl,karax, vstyles,i18n, languages,kbase]

proc textContent*(e: Element): cstring {.
  importcpp: "#.textContent", nodecl.}

proc textContent*(e: Node): cstring {.
  importcpp: "#.textContent", nodecl.}

proc zhCN*(e:Event,n:VNode) =
    setCurrentLanguage(Language.zhCN)

proc enUS*(e:Event,n:VNode) =
    setCurrentLanguage(Language.enUS)

proc t*(text: kstring): cstring =
    i18n($text).cstring

addTranslation(Language.zhCN, "Nim Tutorial (Part I)", "Nim中文教程（第一部分）")
addTranslation(Language.zhCN, "Manual", "手册")
addTranslation(Language.zhCN, "Index", "索引")
addTranslation(Language.zhCN, "Search: ", "搜索：")
addTranslation(Language.zhCN, "Standard library", "标准库")
addTranslation(Language.zhCN, "Introduction", "序")




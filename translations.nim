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
addTranslation(Language.zhCN, "The first program", "第一个程序")
addTranslation(Language.zhCN, "Lexical elements", "词法元素")
addTranslation(Language.zhCN, "String and character literals", "字符串和字符字面值")
addTranslation(Language.zhCN, "Comments", "注释")
addTranslation(Language.zhCN, "Numbers", "数字")
addTranslation(Language.zhCN, "The var statement", "var语句")
addTranslation(Language.zhCN, "The assignment statement", "赋值语句")
addTranslation(Language.zhCN, "Constants", "常量")
addTranslation(Language.zhCN, "The let statement", "let语句")
addTranslation(Language.zhCN, "Control flow statements", "控制流语句")
addTranslation(Language.zhCN, "If statement", "If语句")
addTranslation(Language.zhCN, "Case statement", "Case语句")
addTranslation(Language.zhCN, "While statement", "While语句")
addTranslation(Language.zhCN, "For statement", "For语句")
addTranslation(Language.zhCN, "Scopes and the block statement", "作用域和块语句")
addTranslation(Language.zhCN, "Break statement", "Break语句")
addTranslation(Language.zhCN, "Continue statement", "Continue语句")
addTranslation(Language.zhCN, "When statement", "When语句")
addTranslation(Language.zhCN, "Statements and indentation", "语句和缩进")
addTranslation(Language.zhCN, "Procedures", "过程")
addTranslation(Language.zhCN, "Result variable", "Result变量")
addTranslation(Language.zhCN, "Parameters", "形参")
addTranslation(Language.zhCN, "Discard statement", "Discard语句")
addTranslation(Language.zhCN, "Named arguments", "命名形参")
addTranslation(Language.zhCN, "Default arguments", "默认形参")
addTranslation(Language.zhCN, "Overloaded procedures", "过程重载")
addTranslation(Language.zhCN, "Operators", "运算符")
addTranslation(Language.zhCN, "Forward declarations", "前向声明")
addTranslation(Language.zhCN, "Iterators", "迭代器")
addTranslation(Language.zhCN, "Basic types", "基本类型")
addTranslation(Language.zhCN, "Booleans", "布尔")
addTranslation(Language.zhCN, "Characters", "字符")
addTranslation(Language.zhCN, "Strings", "字符串")
addTranslation(Language.zhCN, "Integers", "整型")
addTranslation(Language.zhCN, "Floats", "浮点")
addTranslation(Language.zhCN, "Type Conversion", "类型转换")
addTranslation(Language.zhCN, "Internal type representation", "内部类型表示")
addTranslation(Language.zhCN, "Advanced types", "高级类型")
addTranslation(Language.zhCN, "Enumerations", "枚举")
addTranslation(Language.zhCN, "Ordinal types", "序数类型")
addTranslation(Language.zhCN, "Subranges", "子范围")
addTranslation(Language.zhCN, "Sets", "集合")
addTranslation(Language.zhCN, "Bit fields", "位字段")
addTranslation(Language.zhCN, "Arrays", "数组")
addTranslation(Language.zhCN, "Sequences", "序列")
addTranslation(Language.zhCN, "Open arrays", "开放数组")
addTranslation(Language.zhCN, "Varargs", "可变形参")
addTranslation(Language.zhCN, "Slices", "切片")
addTranslation(Language.zhCN, "Objects", "对象")
addTranslation(Language.zhCN, "Tuples", "元组")
addTranslation(Language.zhCN, "Reference and pointer types", "引用和指针类型")
addTranslation(Language.zhCN, "Procedural type", "过程类型")
addTranslation(Language.zhCN, "Distinct type", "Distinct类型")
addTranslation(Language.zhCN, "Modules", "模块")
addTranslation(Language.zhCN, "Excluding symbols", "排除符号")
addTranslation(Language.zhCN, "From statement", "From语句")
addTranslation(Language.zhCN, "Include statement", "Include语句")
addTranslation(Language.zhCN, "Part 2", "第二部分")
addTranslation(Language.zhCN, "Author:", "作者：")
addTranslation(Language.zhCN, "Version:", "版本：")
addTranslation(Language.zhCN, "\"Der Mensch ist doch ein Augentier -- sch\xC3\xB6ne Dinge w\xC3\xBCnsch ich mir.\" ", "人是视觉动物——我渴望美好事物。")
addTranslation(Language.zhCN, "This document is a tutorial for the programming language ","本文档是关于Nim编程语言的教程")
addTranslation(Language.zhCN, "contains many more examples of the advanced language features. All code examples in this tutorial, as well as the ones found in the rest of Nim\'s documentation, follow the ","本文档是关于Nim编程语言的教程")




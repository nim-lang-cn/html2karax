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

var dict: seq[(string,string)]
dict = @[
  ("Nim Tutorial (Part I)", "Nim中文教程（第一部分）"),
  ("Manual", "手册"),
  ("Index", "索引"),
  ("Search: ", "搜索："),
  ("Standard library", "标准库"),
  ("Introduction", "序"),
  ("The first program", "第一个程序"),
  ("Lexical elements", "词法元素"),
  ("String and character literals", "字符串和字符字面值"),
  ("Comments", "注释"),
  ("Numbers", "数字"),
  ("The var statement", "var语句"),
  ("The assignment statement", "赋值语句"),
  ("Constants", "常量"),
  ("The let statement", "let语句"),
  ("Control flow statements", "控制流语句"),
  ("If statement", "If语句"),
  ("Case statement", "Case语句"),
  ("While statement", "While语句"),
  ("For statement", "For语句"),
  ("Scopes and the block statement", "作用域和块语句"),
  ("Break statement", "Break语句"),
  ("Continue statement", "Continue语句"),
  ("When statement", "When语句"),
  ("Statements and indentation", "语句和缩进"),
  ("Procedures", "过程"),
  ("Result variable", "Result变量"),
  ("Parameters", "形参"),
  ("Discard statement", "Discard语句"),
  ("Named arguments", "命名形参"),
  ("Default arguments", "默认形参"),
  ("Overloaded procedures", "过程重载"),
  ("Operators", "运算符"),
  ("Forward declarations", "前向声明"),
  ("Iterators", "迭代器"),
  ("Basic types", "基本类型"),
  ("Booleans", "布尔"),
  ("Characters", "字符"),
  ("Strings", "字符串"),
  ("Integers", "整型"),
  ("Floats", "浮点"),
  ("Type Conversion", "类型转换"),
  ("Internal type representation", "内部类型表示"),
  ("Advanced types", "高级类型"),
  ("Enumerations", "枚举"),
  ("Ordinal types", "序数类型"),
  ("Subranges", "子范围"),
  ("Sets", "集合"),
  ("Bit fields", "位字段"),
  ("Arrays", "数组"),
  ("Sequences", "序列"),
  ("Open arrays", "开放数组"),
  ("Varargs", "可变形参"),
  ("Slices", "切片"),
  ("Objects", "对象"),
  ("Tuples", "元组"),
  ("Reference and pointer types", "引用和指针类型"),
  ("Procedural type", "过程类型"),
  ("Distinct type", "Distinct类型"),
  ("Modules", "模块"),
  ("Excluding symbols", "排除符号"),
  ("From statement", "From语句"),
  ("Include statement", "Include语句"),
  ("Part 2", "第二部分"),
  ("Author:", "作者："),
  ("Version:", "版本："),
  ("\"Der Mensch ist doch ein Augentier -- sch\xC3\xB6ne Dinge w\xC3\xBCnsch ich mir.\" ", "人是视觉动物——我渴望美好事物。"),
  ("This document is a tutorial for the programming language ", "本文档是编程语言"),
  (". This tutorial assumes that you are familiar with basic programming concepts like variables, types or statements but is kept very basic. The ", 
  "的教程。本教程认为你熟悉基本的编程概念如变量、类型或语句。"),
  ("manual","手册"),
  ("contains many more examples of the advanced language features. All code examples in this tutorial, as well as the ones found in the rest of Nim\'s documentation, follow the ",
  "有更多高级语言特性示例。教程代码示例和其余Nim文档遵循"),
  ("Nim style guide","Nim风格指南"),
  ("The first program","第一个程序"),
  ("We start the tour with a modified \"hello world\" program:","我们用\"hello world\"程序开启教程之旅："),
  ("# This is a comment","# 这里是注释"),
  ("Save this code to the file \"greetings.nim\". Now compile and run it: ","代码保存到\"greetings.nim\"，编译运行:"),
  ("With the ","用"),
  ("switch","开关"),
  ("Nim executes the file automatically after compilation. You can give your program command line arguments by appending them after the filename: ",
  "Nim编译后自动执行文件。可以在文件名后加上程序的命令行参数："),
  ("Commonly used commands and switches have abbreviations, so you can also use: ","常用命令和开关有简写，所以也可以用："),
  ("To compile a release version use: ","编译发布版本使用："),
  ("By default the Nim compiler generates a large amount of runtime checks aiming for your debugging pleasure. With ",
  "为了方便调试，Nim编译器默认生成大量运行时检查。用"),
  ("some checks are ","一些检查"),
  ("turned off and optimizations are turned on","被关闭并启用优化"),
  ("Though it should be pretty obvious what the program does, I will explain the syntax: statements which are not indented are executed when the program starts. Indentation is Nim\'s way of grouping statements. Indentation is done with spaces only, tabulators are not allowed.",
  "程序一目了然，解释下语法：没有缩进的语句在程序开始时执行。缩进是Nim划分语句的方式。缩进只能使用空格，不允许制表符。"),

]

for i in dict:
  addTranslation(Language.zhCN, i[0],i[1])


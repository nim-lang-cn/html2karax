import karax/[karaxdsl,vdom, karax, vstyles]
import translations

proc createDom():VNode = 
  buildHtml tdiv(class="document",id="documentId"):    
    text t "\x0A  "    
    tdiv(class="container"):      
      text t "\x0A    "      
      h1(class="title"):        
        text t "Nim Tutorial (Part III)"      
      text t "\x0A    "      
      tdiv(class="row"):        
        text t "\x0A  "        
        tdiv(class="three columns"):          
          text t "\x0A  "          
          tdiv(id="global-links"):            
            text t "\x0A    "            
            ul(class="simple-boot"):              
              text t "\x0A      "              
              li():                
                text t "\x0A        "                
                a(href="manual.html"):                  
                  text t "Manual"                
                text t "\x0A      "              
              text t "\x0A      "              
              li():                
                text t "\x0A        "                
                a(href="lib.html"):                  
                  text t "Standard library"                
                text t "\x0A      "              
              text t "\x0A      "              
              li():                
                text t "\x0A        "                
                a(href="theindex.html"):                  
                  text t "Index"                
                text t "\x0A      "              
              text t "\x0A    "            
            text t "\x0A  "          
          text t "\x0A  "          
          tdiv(id="searchInputDiv"):            
            text t "\x0A    "            
            text t "Search: "            
            text t "\x0A  "          
          text t "\x0A  "          
          ul(class="simple simple-toc",id="toc-list"):            
            text t "\x0A"            
            li():              
              a(class="reference",id="introduction_toc",href="#introduction"):                
                text t "Introduction"            
            text t "\x0A"            
            ul(class="simple"):              
              li():                
                a(class="reference",id="introduction-macro-arguments_toc",href="#introduction-macro-arguments"):                  
                  text t "Macro Arguments"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-untyped-arguments_toc",href="#introduction-untyped-arguments"):                  
                  text t "Untyped Arguments"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-typed-arguments_toc",href="#introduction-typed-arguments"):                  
                  text t "Typed Arguments"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-static-arguments_toc",href="#introduction-static-arguments"):                  
                  text t "Static Arguments"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-code-blocks-as-arguments_toc",href="#introduction-code-blocks-as-arguments"):                  
                  text t "Code Blocks as Arguments"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-the-syntax-tree_toc",href="#introduction-the-syntax-tree"):                  
                  text t "The Syntax Tree"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-custom-semantic-checking_toc",href="#introduction-custom-semantic-checking"):                  
                  text t "Custom Semantic Checking"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-generating-code_toc",href="#introduction-generating-code"):                  
                  text t "Generating Code"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-building-your-first-macro_toc",href="#introduction-building-your-first-macro"):                  
                  text t "Building Your First Macro"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-with-power-comes-responsibility_toc",href="#introduction-with-power-comes-responsibility"):                  
                  text t "With Power Comes Responsibility"              
              text t "\x0A"              
              li():                
                a(class="reference",id="introduction-limitations_toc",href="#introduction-limitations"):                  
                  text t "Limitations"              
              text t "\x0A"            
            li():              
              a(class="reference",id="more-examples_toc",href="#more-examples"):                
                text t "More Examples"            
            text t "\x0A"            
            ul(class="simple"):              
              li():                
                a(class="reference",id="more-examples-strformat_toc",href="#more-examples-strformat"):                  
                  text t "Strformat"              
              text t "\x0A"              
              li():                
                a(class="reference",id="more-examples-ast-pattern-matching_toc",href="#more-examples-ast-pattern-matching"):                  
                  text t "Ast Pattern Matching"              
              text t "\x0A"              
              li():                
                a(class="reference",id="more-examples-opengl-sandbox_toc",href="#more-examples-opengl-sandbox"):                  
                  text t "OpenGL Sandbox"              
              text t "\x0A"            
            text t "\x0A"          
          text t "\x0A\x0A  "        
        text t "\x0A  "        
        tdiv(class="nine columns",id="content"):          
          text t "\x0A  "          
          text t "\x0A  \x0A  "          
          p(class="module-desc"):            
            table(frame="void",rules="none",class="docinfo"):              
              tbody(valign="top"):                
                tr():                  
                  th(class="docinfo-name"):                    
                    text t "Author:"                  
                  td():                    
                    text t " "                    
                    text t "Arne Döring"                
                text t "\x0A"                
                tr():                  
                  th(class="docinfo-name"):                    
                    text t "Version:"                  
                  td():                    
                    text t " "                    
                    text t "1.0.0"                
                text t "\x0A"            
            text t "\x0A"            
            h1():              
              a(class="toc-backref",id="introduction",href="#introduction"):                
                text t "Introduction"            
            blockquote():              
              p():                
                text t "\"With Great Power Comes Great Responsibility.\" -- Spider Man\'s Uncle"            
            text t "\x0A"          
          p():            
            text t "This document is a tutorial about Nim's macro system. A macro is a function that is executed at compile time and transforms a Nim syntax tree into a different tree."          
          text t "\x0A"          
          p():            
            text t "Examples of things that can be implemented in macros:"          
          text t "\x0A"          
          ul(class="simple"):            
            li():              
              text t "An assert macro that prints both sides of a comparison operator, if the assertion fails. "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "myAssert(a == b)"              
              text t " "              
              text t "is converted to "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "if a != b: quit($a \" != \" $b)"            
            text t "\x0A"            
            li():              
              text t "A debug macro that prints the value and the name of the symbol. "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "myDebugEcho(a)"              
              text t " "              
              text t "is converted to "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "echo \"a: \", a"            
            text t "\x0A"            
            li():              
              text t "Symbolic differentiation of an expression. "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "diff(a*pow(x,3) + b*pow(x,2) + c*x + d, x)"              
              text t " "              
              text t "is converted to "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "3*a*pow(x,2) + 2*a*x + c"            
            text t "\x0A"          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-macro-arguments",href="#introduction-macro-arguments"):              
              text t "Macro Arguments"          
          p():            
            text t "The types of macro arguments have two faces. One face is used for the overload resolution, and the other face is used within the macro body. For example, if "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "macro foo(arg: int)"            
            text t " "            
            text t "is called in an expression "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "foo(x)"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t " "            
            text t "has to be of a type compatible to int, but "            
            em():              
              text t "within"            
            text t " "            
            text t "the macro's body "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "arg"            
            text t " "            
            text t "has the type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "NimNode"            
            text t ", not "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t "! Why it is done this way will become obvious later, when we have seen concrete examples."          
          text t "\x0A"          
          p():            
            text t "There are two ways to pass arguments to a macro, an argument can be either "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "typed"            
            text t " "            
            text t "or "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "untyped"            
            text t "."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-untyped-arguments",href="#introduction-untyped-arguments"):              
              text t "Untyped Arguments"          
          p():            
            text t "Untyped macro arguments are passed to the macro before they are semantically checked. This means the syntax tree that is passed down to the macro does not need to make sense for Nim yet, the only limitation is that it needs to be parsable. Usually the macro does not check the argument either but uses it in the transformation's result somehow. The result of a macro expansion is always checked by the compiler, so apart from weird error messages nothing bad can happen."          
          text t "\x0A"          
          p():            
            text t "The downside for an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "untyped"            
            text t " "            
            text t "argument is that these do not play well with Nim's overloading resolution."          
          text t "\x0A"          
          p():            
            text t "The upside for untyped arguments is that the syntax tree is quite predictable and less complex compared to its "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "typed"            
            text t " "            
            text t "counterpart."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-typed-arguments",href="#introduction-typed-arguments"):              
              text t "Typed Arguments"          
          p():            
            text t "For typed arguments, the semantic checker runs on the argument and does transformations on it, before it is passed to the macro. Here identifier nodes are resolved as symbols, implicit type conversions are visible in the tree as calls, templates are expanded and probably most importantly, nodes have type information. Typed arguments can have the type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "typed"            
            text t " "            
            text t "in the arguments list. But all other types, such as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "float"            
            text t " "            
            text t "or "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "MyObjectType"            
            text t " "            
            text t "are typed arguments as well, and they are passed to the macro as a syntax tree."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-static-arguments",href="#introduction-static-arguments"):              
              text t "Static Arguments"          
          p():            
            text t "Static arguments are a way to pass values as values and not as syntax tree nodes to a macro. For example for "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "macro foo(arg: static[int])"            
            text t " "            
            text t "in the expression "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "foo(x)"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t " "            
            text t "needs to be an integer constant, but in the macro body "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "arg"            
            text t " "            
            text t "is just like a normal parameter of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t "."          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "macros"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "macro"            
            text t " "            
            span(class="Identifier"):              
              text t "myMacro"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "static"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "arg"            
            text t " "            
            span(class="Comment"):              
              text t "# just an int (7), not ``NimNode``"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "myMacro"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "1"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            text t " "            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-code-blocks-as-arguments",href="#introduction-code-blocks-as-arguments"):              
              text t "Code Blocks as Arguments"          
          p():            
            text t "It is possible to pass the last argument of a call expression in a separate code block with indentation. For example the following code example is a valid (but not a recommended) way to call "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "echo"            
            text t ":"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"Hello \""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\"Wor\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\"ld!\""            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Identifier"):              
              text t "b"          
          p():            
            text t "For macros this way of calling is very useful; syntax trees of arbitrary complexity can be passed to macros with this notation."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-the-syntax-tree",href="#introduction-the-syntax-tree"):              
              text t "The Syntax Tree"          
          p():            
            text t "In order to build a Nim syntax tree one needs to know how Nim source code is represented as a syntax tree, and how such a tree needs to look like so that the Nim compiler will understand it. The nodes of the Nim syntax tree are documented in the "            
            a(class="reference external",href="macros.html"):              
              text t "macros"            
            text t " "            
            text t "module. But a more interactive way to explore the Nim syntax tree is with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "macros.treeRepr"            
            text t ", it converts a syntax tree into a multi line string for printing on the console. It can be used to explore how the argument expressions are represented in tree form and for debug printing of generated syntax tree. "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "dumpTree"            
            text t " "            
            text t "is a predefined macro that just prints its argument in tree representation, but does nothing else. Here is an example of such a tree representation:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "dumpTree"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "mt"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "MyType"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "MyType"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            span(class="FloatNumber"):              
              text t "123.456"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            span(class="StringLit"):              
              text t "\"abcdef\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# output:"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#   StmtList"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#     VarSection"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#       IdentDefs"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#         Ident \"mt\""            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#         Ident \"MyType\""            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#         ObjConstr"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#           Ident \"MyType\""            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#           ExprColonExpr"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#             Ident \"a\""            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#             FloatLit 123.456"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#           ExprColonExpr"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#             Ident \"b\""            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#             StrLit \"abcdef\""          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-custom-semantic-checking",href="#introduction-custom-semantic-checking"):              
              text t "Custom Semantic Checking"          
          p():            
            text t "The first thing that a macro should do with its arguments is to check if the argument is in the correct form. Not every type of wrong input needs to be caught here, but anything that could cause a crash during macro evaluation should be caught and create a nice error message. "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "macros.expectKind"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "macros.expectLen"            
            text t " "            
            text t "are a good start. If the checks need to be more complex, arbitrary error messages can be created with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "macros.error"            
            text t " "            
            text t "proc."          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "macro"            
            text t " "            
            span(class="Identifier"):              
              text t "myAssert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "expectKind"            
            text t " "            
            span(class="Identifier"):              
              text t "nnkInfix"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-generating-code",href="#introduction-generating-code"):              
              text t "Generating Code"          
          p():            
            text t "There are two ways to generate the code. Either by creating the syntax tree with expressions that contain a lot of calls to "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newTree"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newLit"            
            text t ", or with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "quote do:"            
            text t " "            
            text t "expressions. The first option offers the best low level control for the syntax tree generation, but the second option is much less verbose. If you choose to create the syntax tree with calls to "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newTree"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newLit"            
            text t " "            
            text t "the macro "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "macros.dumpAstGen"            
            text t " "            
            text t "can help you with the verbosity. "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "quote do:"            
            text t " "            
            text t "allows you to write the code that you want to generate literally, backticks are used to insert code from "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "NimNode"            
            text t " "            
            text t "symbols into the generated expression. This means that you can't use backticks within "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "quote do:"            
            text t " "            
            text t "for anything else than injecting symbols.  Make sure to inject only symbols of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "NimNode"            
            text t " "            
            text t "into the generated syntax tree. You can use "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newLit"            
            text t " "            
            text t "to convert arbitrary values into expressions trees of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "NimNode"            
            text t " "            
            text t "so that it is safe to inject them into the tree."          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "macros"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "MyType"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "float"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "macro"            
            text t " "            
            span(class="Identifier"):              
              text t "myMacro"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "mt"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "MyType"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "MyType"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            span(class="FloatNumber"):              
              text t "123.456"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            span(class="StringLit"):              
              text t "\"abcdef\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  \x0A  "            
            span(class="Comment"):              
              text t "# ..."            
            text t "\x0A  \x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "mtLit"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "newLit"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "mt"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  \x0A  "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "quote"            
            text t " "            
            span(class="Keyword"):              
              text t "do"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t "`"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Identifier"):              
              text t "mtLit"            
            span(class="Punctuation"):              
              text t "`"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "myMacro"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"Hallo\""            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "The call to "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "myMacro"            
            text t " "            
            text t "will generate the following code:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"Hallo\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "MyType"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="FloatNumber"):              
              text t "123.456'f64"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="StringLit"):              
              text t "\"abcdef\""            
            span(class="Punctuation"):              
              text t ")"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-building-your-first-macro",href="#introduction-building-your-first-macro"):              
              text t "Building Your First Macro"          
          p():            
            text t "To give a starting point to writing macros we will show now how to implement the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "myDebug"            
            text t " "            
            text t "macro mentioned earlier. The first thing to do is to build a simple example of the macro usage, and then just print the argument. This way it is possible to get an idea of a correct argument should be look like."          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "macros"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "macro"            
            text t " "            
            span(class="Identifier"):              
              text t "myAssert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "treeRepr"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "myAssert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ")"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "Infix"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Ident"            
            text t " "            
            span(class="StringLit"):              
              text t "\"!=\""            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Ident"            
            text t " "            
            span(class="StringLit"):              
              text t "\"a\""            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Ident"            
            text t " "            
            span(class="StringLit"):              
              text t "\"b\""          
          p():            
            text t "From the output it is possible to see that the argument is an infix operator (node kind is \"Infix\"), as well as that the two operands are at index 1 and 2. With this information the actual macro can be written."          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "macros"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "macro"            
            text t " "            
            span(class="Identifier"):              
              text t "myAssert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# all node kind identifiers are prefixed with \"nnk\""            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "expectKind"            
            text t " "            
            span(class="Identifier"):              
              text t "nnkInfix"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "expectLen"            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# operator as string literal"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "op"            
            text t "  "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "newLit"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\" \""            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "repr"            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="StringLit"):              
              text t "\" \""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "lhs"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "rhs"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A  \x0A  "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "quote"            
            text t " "            
            span(class="Keyword"):              
              text t "do"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Keyword"):              
              text t "not"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Identifier"):              
              text t "arg"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
            span(class="Keyword"):              
              text t "raise"            
            text t " "            
            span(class="Identifier"):              
              text t "newException"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "AssertionError"            
            span(class="Punctuation"):              
              text t ","            
            span(class="Operator"):              
              text t "$"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Identifier"):              
              text t "lhs"            
            span(class="Punctuation"):              
              text t "`"            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Identifier"):              
              text t "op"            
            span(class="Punctuation"):              
              text t "`"            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Identifier"):              
              text t "rhs"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "myAssert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "myAssert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "This is the code that will be generated. To debug what the macro actually generated, the statement "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "echo result.repr"            
            text t " "            
            text t "can be used, in the last line of the macro. It is also the statement that has been used to get this output."          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Keyword"):              
              text t "not"            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "raise"            
            text t " "            
            span(class="Identifier"):              
              text t "newException"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "AssertionError"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="StringLit"):              
              text t "\" != \""            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-with-power-comes-responsibility",href="#introduction-with-power-comes-responsibility"):              
              text t "With Power Comes Responsibility"          
          p():            
            text t "Macros are very powerful. A good advice is to use them as little as possible, but as much as necessary. Macros can change the semantics of expressions, making the code incomprehensible for anybody who does not know exactly what the macro does with it. So whenever a macro is not necessary and the same logic can be implemented using templates or generics, it is probably better not to use a macro. And when a macro is used for something, the macro should better have a well written documentation. For all the people who claim to write only perfectly self-explanatory code: when it comes to macros, the implementation is not enough for documentation."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="introduction-limitations",href="#introduction-limitations"):              
              text t "Limitations"          
          p():            
            text t "Since macros are evaluated in the compiler in the NimVM, macros share all the limitations of the NimVM. They have to be implemented in pure Nim code. Macros can start external processes on the shell, but they cannot call C functions except from those that are built in the compiler."          
          text t "\x0A\x0A"          
          h1():            
            a(class="toc-backref",id="more-examples",href="#more-examples"):              
              text t "More Examples"          
          p():            
            text t "This tutorial can only cover the basics of the macro system. There are macros out there that could be an inspiration for you of what is possible with it."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="more-examples-strformat",href="#more-examples-strformat"):              
              text t "Strformat"          
          p():            
            text t "In the Nim standard library, the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "strformat"            
            text t " "            
            text t "library provides a macro that parses a string literal at compile time. Parsing a string in a macro like here is generally not recommended. The parsed AST cannot have type information, and parsing implemented on the VM is generally not very fast. Working on AST nodes is almost always the recommended way. But still "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "strformat"            
            text t " "            
            text t "is a good example for a practical use case for a macro that is slightly more complex than the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "assert"            
            text t " "            
            text t "macro."          
          text t "\x0A"          
          p():            
            a(class="reference external",href="https://github.com/nim-lang/Nim/blob/5845716df8c96157a047c2bd6bcdd795a7a2b9b1/lib/pure/strformat.nim#L280"):              
              text t "Strformat"          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="more-examples-ast-pattern-matching",href="#more-examples-ast-pattern-matching"):              
              text t "Ast Pattern Matching"          
          p():            
            text t "Ast Pattern Matching is a macro library to aid in writing complex macros. This can be seen as a good example of how to repurpose the Nim syntax tree with new semantics."          
          text t "\x0A"          
          p():            
            a(class="reference external",href="https://github.com/krux02/ast-pattern-matching"):              
              text t "Ast Pattern Matching"          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="more-examples-opengl-sandbox",href="#more-examples-opengl-sandbox"):              
              text t "OpenGL Sandbox"          
          p():            
            text t "This project has a working Nim to GLSL compiler written entirely in macros. It scans recursively though all used function symbols to compile them so that cross library functions can be executed on the GPU."          
          text t "\x0A"          
          p():            
            a(class="reference external",href="https://github.com/krux02/opengl-sandbox"):              
              text t "OpenGL Sandbox"            
            text t " "          
          text t "\x0A"        
        text t "\x0A"      
      text t "\x0A\x0A    "      
      tdiv(class="row"):        
        text t "\x0A      "        
        tdiv(class="twelve-columns footer"):          
          text t "\x0A        "          
          text t "\x0A        "          
          text t "\x0A        "          
          small():            
            text t "Made with Nim. Generated: 2019-10-21 08:35:45 UTC"          
          text t "\x0A      "        
        text t "\x0A    "      
      text t "\x0A  "    
    text t "\x0A"
    tdiv(style="position:fixed;right:0;top:5%;"):
      a(onclick = zhCN):span: text "Chinese |"
      a(onclick = enUS):span: text " English"  
  
setRenderer createDom
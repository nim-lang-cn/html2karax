import karax/[karaxdsl,vdom, karax, vstyles]
import translations

proc createDom():VNode = 
  buildHtml tdiv(class="document",id="documentId"):    
    text t "\n"    
    tdiv(class="container"):      
      text t "\n"      
      h1(class="title"):        
        text t "Nim Tutorial (Part I)"      
      text t "\n"      
      tdiv(class="row"):        
        text t "\n"        
        tdiv(class="three columns"):          
          text t "\n"          
          tdiv(id="global-links"):            
            text t "\n"            
            ul(class="simple-boot"):              
              text t "\n"              
              li():                
                text t "\n"                
                a(href="manual.html"):                  
                  text t "Manual"                
                text t "\n"              
              text t "\n"              
              li():                
                text t "\n"                
                a(href="lib.html"):                  
                  text t "Standard library"                
                text t "\n"              
              text t "\n"              
              li():                
                text t "\n"                
                a(href="theindex.html"):                  
                  text t "Index"                
                text t "\n"              
              text t "\n"            
            text t "\n"          
          text t "\n"          
          tdiv(id="searchInputDiv"):            
            text t "\n"            
            text t "Search: "            
            text t "\n"          
          text t "\n"          
          ul(class="simple simple-toc",id="toc-list"):            
            text t "\n"            
            li():              
              a(class="reference",id="introduction_toc",href="#introduction"):                
                text t "Introduction"            
            text t "\n"            
            li():              
              a(class="reference",id="the-first-program_toc",href="#the-first-program"):                
                text t "The first program"            
            text t "\n"            
            li():              
              a(class="reference",id="lexical-elements_toc",href="#lexical-elements"):                
                text t "Lexical elements"            
            text t "\n"            
            ul(class="simple"):              
              text t "\n"              
              li():                
                a(class="reference",id="lexical-elements-string-and-character-literals_toc",href="#lexical-elements-string-and-character-literals"):                  
                  text t "String and character literals"              
              text t "\n"              
              li():                
                a(class="reference",id="lexical-elements-comments_toc",href="#lexical-elements-comments"):                  
                  text t "Comments"                
                text t "\n"              
              text t "\n"              
              li():                
                a(class="reference",id="lexical-elements-numbers_toc",href="#lexical-elements-numbers"):                  
                  text t "Numbers"                
                text t "\n"              
              text t "\n"            
            text t "\n"            
            li():              
              a(class="reference",id="the-var-statement_toc",href="#the-var-statement"):                
                text t "The var statement"            
            text t "\n"            
            li():              
              a(class="reference",id="the-assignment-statement_toc",href="#the-assignment-statement"):                
                text t "The assignment\nstatement"            
            text t "\n"            
            li():              
              a(class="reference",id="constants_toc",href="#constants"):                
                text t "Constants"            
            text t "\n"            
            li():              
              a(class="reference",id="the-let-statement_toc",href="#the-let-statement"):                
                text t "The let statement"            
            text t "\n"            
            li():              
              a(class="reference",id="control-flow-statements_toc",href="#control-flow-statements"):                
                text t "Control flow\nstatements"            
            text t "\n"            
            ul(class="simple"):              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-if-statement_toc",href="#control-flow-statements-if-statement"):                  
                  text t "If statement"              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-case-statement_toc",href="#control-flow-statements-case-statement"):                  
                  text t "Case statement"              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-while-statement_toc",href="#control-flow-statements-while-statement"):                  
                  text t "While statement"              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-for-statement_toc",href="#control-flow-statements-for-statement"):                  
                  text t "For statement"              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-scopes-and-the-block-statement_toc",href="#control-flow-statements-scopes-and-the-block-statement"):                  
                  text t "Scopes and the block statement"              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-break-statement_toc",href="#control-flow-statements-break-statement"):                  
                  text t "Break statement"              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-continue-statement_toc",href="#control-flow-statements-continue-statement"):                  
                  text t "Continue statement"              
              text t "\n"              
              li():                
                a(class="reference",id="control-flow-statements-when-statement_toc",href="#control-flow-statements-when-statement"):                  
                  text t "When statement"              
              text t "\n"            
            text t "\n"            
            li():              
              a(class="reference",id="statements-and-indentation_toc",href="#statements-and-indentation"):                
                text t "Statements\nand indentation"            
            text t "\n"            
            li():              
              a(class="reference",id="procedures_toc",href="#procedures"):                
                text t "Procedures"            
            text t "\n"            
            ul(class="simple"):              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-result-variable_toc",href="#procedures-result-variable"):                  
                  text t "Result\nvariable"              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-parameters_toc",href="#procedures-parameters"):                  
                  text t "Parameters"              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-discard-statement_toc",href="#procedures-discard-statement"):                  
                  text t "Discard statement"              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-named-arguments_toc",href="#procedures-named-arguments"):                  
                  text t "Named\narguments"              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-default-values_toc",href="#procedures-default-values"):                  
                  text t "Default\nvalues"              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-overloaded-procedures_toc",href="#procedures-overloaded-procedures"):                  
                  text t "Overloaded procedures"              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-operators_toc",href="#procedures-operators"):                  
                  text t "Operators"              
              text t "\n"              
              li():                
                a(class="reference",id="procedures-forward-declarations_toc",href="#procedures-forward-declarations"):                  
                  text t "Forward declarations"              
              text t "\n"            
            text t "\n"            
            li():              
              a(class="reference",id="iterators_toc",href="#iterators"):                
                text t "Iterators"            
            text t "\n"            
            li():              
              a(class="reference",id="basic-types_toc",href="#basic-types"):                
                text t "Basic types"            
            text t "\n"            
            ul(class="simple"):              
              text t "\n"              
              li():                
                a(class="reference",id="basic-types-booleans_toc",href="#basic-types-booleans"):                  
                  text t "Booleans"              
              text t "\n"              
              li():                
                a(class="reference",id="basic-types-characters_toc",href="#basic-types-characters"):                  
                  text t "Characters"                
                text t "\n"              
              text t "\n"              
              li():                
                a(class="reference",id="basic-types-strings_toc",href="#basic-types-strings"):                  
                  text t "Strings"              
              text t "\n"              
              li():                
                a(class="reference",id="basic-types-integers_toc",href="#basic-types-integers"):                  
                  text t "Integers"              
              text t "\n"              
              li():                
                a(class="reference",id="basic-types-floats_toc",href="#basic-types-floats"):                  
                  text t "Floats"              
              text t "\n"              
              li():                
                a(class="reference",id="basic-types-type-conversion_toc",href="#basic-types-type-conversion"):                  
                  text t "Type\nConversion"              
              text t "\n"            
            text t "\n"            
            li():              
              a(class="reference",id="internal-type-representation_toc",href="#internal-type-representation"):                
                text t "Internal\ntype representation"            
            text t "\n"            
            li():              
              a(class="reference",id="advanced-types_toc",href="#advanced-types"):                
                text t "Advanced types"            
            text t "\n"            
            ul(class="simple"):              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-enumerations_toc",href="#advanced-types-enumerations"):                  
                  text t "Enumerations"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-ordinal-types_toc",href="#advanced-types-ordinal-types"):                  
                  text t "Ordinal types"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-subranges_toc",href="#advanced-types-subranges"):                  
                  text t "Subranges"                
                text t "\n"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-sets_toc",href="#advanced-types-sets"):                  
                  text t "Sets"              
              text t "\n"              
              ul(class="simple"):                
                text t "\n"                
                li():                  
                  a(class="reference",id="sets-bit-fields_toc",href="#sets-bit-fields"):                    
                    text t "Bit fields"                
                text t "\n"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-arrays_toc",href="#advanced-types-arrays"):                  
                  text t "Arrays"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-sequences_toc",href="#advanced-types-sequences"):                  
                  text t "Sequences"                
                text t "\n"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-open-arrays_toc",href="#advanced-types-open-arrays"):                  
                  text t "Open\narrays"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-varargs_toc",href="#advanced-types-varargs"):                  
                  text t "Varargs"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-slices_toc",href="#advanced-types-slices"):                  
                  text t "Slices"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-objects_toc",href="#advanced-types-objects"):                  
                  text t "Objects"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-tuples_toc",href="#advanced-types-tuples"):                  
                  text t "Tuples"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-reference-and-pointer-types_toc",href="#advanced-types-reference-and-pointer-types"):                  
                  text t "Reference and pointer types"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-procedural-type_toc",href="#advanced-types-procedural-type"):                  
                  text t "Procedural type"              
              text t "\n"              
              li():                
                a(class="reference",id="advanced-types-distinct-type_toc",href="#advanced-types-distinct-type"):                  
                  text t "Distinct type"              
              text t "\n"            
            text t "\n"            
            li():              
              a(class="reference",id="modules_toc",href="#modules"):                
                text t "Modules"            
            text t "\n"            
            ul(class="simple"):              
              text t "\n"              
              li():                
                a(class="reference",id="modules-excluding-symbols_toc",href="#modules-excluding-symbols"):                  
                  text t "Excluding\nsymbols"              
              text t "\n"              
              li():                
                a(class="reference",id="modules-from-statement_toc",href="#modules-from-statement"):                  
                  text t "From statement"                
                text t "\n"              
              text t "\n"              
              li():                
                a(class="reference",id="modules-include-statement_toc",href="#modules-include-statement"):                  
                  text t "Include\nstatement"              
              text t "\n"            
            text t "\n"            
            li():              
              a(class="reference",id="part-2_toc",href="#part-2"):                
                text t "Part 2"            
            text t "\x0A\n"          
          text t "\x0A\n"        
        text t "\n"        
        tdiv(class="nine columns",id="content"):          
          text t "\n"          
          text t "\x0A\n"          
          p(class="module-desc"):            
            text t "\n"            
            table(frame="void",rules="none",class="docinfo"):              
              text t "\n"              
              text t "\n"              
              text t "\n"              
              tbody(valign="top"):                
                text t "\n"                
                tr():                  
                  text t "\n"                  
                  th(class="docinfo-name"):                    
                    text t "Author:"                  
                  text t "\n"                  
                  td():                    
                    text t " "                    
                    text t "Andreas Rumpf"                  
                  text t "\n"                
                text t "\n"                
                tr():                  
                  text t "\n"                  
                  th(class="docinfo-name"):                    
                    text t "Version:"                  
                  text t "\n"                  
                  td():                    
                    text t " "                    
                    text t "|nimversion|"                  
                  text t "\n"                
                text t "\n"              
              text t "\n"            
            text t "\n"            
            h1():              
              a(class="toc-backref",id="introduction",href="#introduction"):                
                text t "Introduction"            
            text t "\n"            
            blockquote():              
              text t "\n"              
              p():                
                text t "\n"                
                text t "\"Der Mensch ist doch ein Augentier -- sch"                
                text t "&ouml"                
                text t "ne Dinge w"                
                text t "&uuml"                
                text t "nsch ich mir.\"\n"              
              text t "\n"            
            text t "\n"          
          p():            
            text t "This document is a tutorial for the programming language "            
            em():              
              text t "Nim"            
            text t ". This tutorial assumes that you are\nfamiliar with basic programming concepts like variables, types or statements but is kept very basic. The\n"            
            a(class="reference external",href="manual.html"):              
              text t "manual"            
            text t " "            
            text t "contains many more examples of the advanced\nlanguage features. All code examples in this tutorial, as well as the ones found in the rest of Nim\'s\ndocumentation, follow the "            
            a(class="reference external",href="nep1.html"):              
              text t "Nim style guide"            
            text t "."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="the-first-program",href="#the-first-program"):              
              text t "The first program"          
          text t "\n"          
          p():            
            text t "We start the tour with a modified "            
            text t "\""            
            text t "hello world"            
            text t "\""            
            text t " "            
            text t "program:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# This is a comment"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "What's your name? "              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Hi, "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "!"              
              text t "\""          
          text t "\n"          
          p():            
            text t "Save this code to the file "            
            text t "\""            
            text t "greetings.nim"            
            text t "\""            
            text t ". Now compile and run it:\n"            
            pre():              
              text t "\x0A"              
              text t "nim compile --run greetings.nim"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "With the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "--run"            
            text t " "            
            a(class="reference external",href="nimc.html#compiler-usage-command-line-switches"):              
              text t "switch"            
            text t " "            
            text t "Nim executes the file automatically\nafter compilation. You can give your program command line arguments by appending them after the filename:\n"            
            pre():              
              text t "\x0A"              
              text t "nim compile --run greetings.nim arg1 arg2"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "Commonly used commands and switches have abbreviations, so you can also use:\n"            
            pre():              
              text t "\x0A"              
              text t "nim c -r greetings.nim"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "To compile a release version use:\n"            
            pre():              
              text t "\x0A"              
              text t "nim c -d:release greetings.nim"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "By default the Nim compiler generates a large amount of runtime checks aiming for your debugging\npleasure. With "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "-d:release"            
            text t " "            
            text t "some checks are "            
            a(class="reference external",href="nimc.html#compiler-usage-compile-time-symbols"):              
              text t "turned off and\noptimizations are turned on"            
            text t "."          
          text t "\n"          
          p():            
            text t "Though it should be pretty obvious what the program does, I will explain the syntax: statements which are\nnot indented are executed when the program starts. Indentation is Nim\'s way of grouping statements.\nIndentation is done with spaces only, tabulators are not allowed."          
          text t "\n"          
          p():            
            text t "String literals are enclosed in double quotes. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text t "statement declares a new variable named "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "name"            
            text t " "            
            text t "of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "string"            
            text t "\n"            
            text t "with the value that is returned by the "            
            a(class="reference external",href="system.html#readLine,File"):              
              text t "readLine"            
            text t " "            
            text t "procedure. Since the compiler knows that "            
            a(class="reference external",href="system.html#readLine,File"):              
              text t "readLine"            
            text t " "            
            text t "returns a string, you can leave\nout the type in the declaration (this is called "            
            span(id="local-type-inference_1"):              
              text t "local type\ninference"            
            text t "). So this will work too:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "Note that this is basically the only form of type inference that exists in Nim: it is a good compromise\nbetween brevity and readability."          
          text t "\n"          
          p():            
            text t "The "            
            text t "\""            
            text t "hello world"            
            text t "\""            
            text t " "            
            text t "program contains several identifiers that are already known to the compiler:\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "echo"            
            text t ", "            
            a(class="reference external",href="system.html#readLine,File"):              
              text t "readLine"            
            text t ", etc. These built-ins are declared in the "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text t "module which is implicitly imported by any\nother module."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="lexical-elements",href="#lexical-elements"):              
              text t "Lexical elements"          
          text t "\n"          
          p():            
            text t "Let us look at Nim\'s lexical elements in more detail: like other programming languages Nim consists of\n(string) literals, identifiers, keywords, comments, operators, and other punctuation marks."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="lexical-elements-string-and-character-literals",href="#lexical-elements-string-and-character-literals"):              
              text t "String and character literals"          
          text t "\n"          
          p():            
            text t "String literals are enclosed in double quotes; character literals in single quotes. Special characters\nare escaped with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\\"            
            text t ": "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\\n"            
            text t " "            
            text t "means newline, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\\t"            
            text t " "            
            text t "means tabulator, etc. There are also\n"            
            em():              
              text t "raw"            
            text t " "            
            text t "string literals:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="RawData"):              
              text t "r"              
              text t "\""              
              text t "C:\\program files\\nim"              
              text t "\""          
          text t "\n"          
          p():            
            text t "In raw literals the backslash is not an escape character."          
          text t "\n"          
          p():            
            text t "The third and last way to write string literals are "            
            em():              
              text t "long string literals"            
            text t ". They are written with\nthree quotes: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\""                
                text t "\""                
                text t "\""                
                text t " "                
                text t "...\n"                
                text t "\""                
                text t "\""                
                text t "\""            
            text t "; they can span over multiple lines and the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\\"            
            text t " "            
            text t "is not an escape character either. They are\nvery useful for embedding HTML code templates for example."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="lexical-elements-comments",href="#lexical-elements-comments"):              
              text t "Comments"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "Comments start anywhere outside a string or character literal with the hash character "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "#"            
            text t ". Documentation comments start with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "##"            
            text t ":"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# A comment."            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "myVariable"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Comment"):              
              text t "## a documentation comment"          
          text t "\n"          
          p():            
            text t "Documentation comments are tokens; they are only allowed at certain places in the input file as they\nbelong to the syntax tree! This feature enables simpler documentation generators."          
          text t "\n"          
          p():            
            text t "Multiline comments are started with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "#["            
            text t " "            
            text t "and\nterminated with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "]#"            
            text t ". Multiline comments can also\nbe nested."          
          text t "\n"          
          pre(class="listing"):            
            span(class="LongComment"):              
              text t "#[\x0AYou can have any Nim code text commented\x0Aout inside this with no indentation restrictions.\nyes("              
              text t "\""              
              text t "May I ask a pointless question?"              
              text t "\""              
              text t ")\x0A  #[\nNote: these can be nested!!\x0A  ]#\x0A]#"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="lexical-elements-numbers",href="#lexical-elements-numbers"):              
              text t "Numbers"          
          text t "\n"          
          p():            
            text t "Numerical literals are written as in most other languages. As a special twist, underscores are allowed\nfor better readability: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "1_000_000"            
            text t " "            
            text t "(one\nmillion). A number that contains a dot (or \'e\' or \'E\') is a floating point literal: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "1.0e9"            
            text t " "            
            text t "(one billion). Hexadecimal literals are\nprefixed with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "0x"            
            text t ", binary literals with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "0b"            
            text t " "            
            text t "and octal literals with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "0o"            
            text t ". A leading zero alone does not produce an\noctal."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="the-var-statement",href="#the-var-statement"):              
              text t "The var statement"          
          text t "\n"          
          p():            
            text t "The var statement declares a new local or global variable:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Comment"):              
              text t "# declares x and y to have the type ``int``"          
          text t "\n"          
          p():            
            text t "Indentation can be used after the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text t "keyword\nto list a whole section of variables:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# a comment can occur here too"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "c"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"          
          text t "\n"          
          h1():            
            a(class="toc-backref",id="the-assignment-statement",href="#the-assignment-statement"):              
              text t "The assignment\nstatement"          
          text t "\n"          
          p():            
            text t "The assignment statement assigns a new value to a variable or more generally to a storage location:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "abc"              
              text t "\""            
            text t " "            
            span(class="Comment"):              
              text t "# introduces a new variable `x` and assigns a value to it"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "xyz"              
              text t "\""            
            text t "     "            
            span(class="Comment"):              
              text t "# assigns a new value to `x`"          
          text t "\n"          
          p():            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "="            
            text t " "            
            text t "is the "            
            em():              
              text t "assignment operator"            
            text t ". The\nassignment operator can be overloaded. You can declare multiple variables with a single assignment\nstatement and all the variables will have the same value:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            text t "  "            
            span(class="Comment"):              
              text t "# assigns 3 to the variables `x` and `y`"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "x "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text t "\""              
              text t "x 3"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "y "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text t "\""              
              text t "y 3"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "42"            
            text t "        "            
            span(class="Comment"):              
              text t "# changes `x` to 42 without changing `y`"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "x "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text t "\""              
              text t "x 42"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "y "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text t "\""              
              text t "y 3"              
              text t "\""          
          text t "\n"          
          p():            
            text t "Note that declaring multiple variables with a single assignment which calls a procedure can have\nunexpected results: the compiler will "            
            em():              
              text t "unroll"            
            text t " "            
            text t "the assignments and end up calling the procedure\nseveral times. If the result of the procedure depends on side effects, your variables may end up having\ndifferent values! For safety use side-effect free procedures if making multiple assignments."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="constants",href="#constants"):              
              text t "Constants"          
          text t "\n"          
          p():            
            text t "Constants are symbols which are bound to a value. The constant\'s value cannot change. The compiler must\nbe able to evaluate the expression in a constant declaration at compile time:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "const"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "abc"              
              text t "\""            
            text t " "            
            span(class="Comment"):              
              text t "# the constant x contains the string "              
              text t "\""              
              text t "abc"              
              text t "\""          
          text t "\n"          
          p():            
            text t "Indentation can be used after the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "const"            
            text t "\n"            
            text t "keyword to list a whole section of constants:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "const"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# a comment can occur here too"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "z"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            text t " "            
            span(class="Comment"):              
              text t "# computations are possible"          
          text t "\n"          
          h1():            
            a(class="toc-backref",id="the-let-statement",href="#the-let-statement"):              
              text t "The let statement"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "let"            
            text t " "            
            text t "statement works like the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text t "statement but the declared symbols are\n"            
            em():              
              text t "single assignment"            
            text t " "            
            text t "variables: After the initialization their value cannot change:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "abc"              
              text t "\""            
            text t " "            
            span(class="Comment"):              
              text t "# introduces a new variable `x` and binds a value to it"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "xyz"              
              text t "\""            
            text t "     "            
            span(class="Comment"):              
              text t "# Illegal: assignment to `x`"          
          text t "\n"          
          p():            
            text t "The difference between "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "let"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "const"            
            text t " "            
            text t "is: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "let"            
            text t " "            
            text t "introduces a variable that can not be re-assigned, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "const"            
            text t " "            
            text t "means "            
            text t "\""            
            text t "enforce compile time evaluation\nand put it into a data section"            
            text t "\""            
            text t ":"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "const"            
            text t " "            
            span(class="Identifier"):              
              text t "input"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# Error: constant expression expected"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "input"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# works"          
          text t "\n"          
          h1():            
            a(class="toc-backref",id="control-flow-statements",href="#control-flow-statements"):              
              text t "Control flow\nstatements"          
          text t "\n"          
          p():            
            text t "The greetings program consists of 3 statements that are executed sequentially. Only the most primitive\nprograms can get away with that: branching and looping are needed too."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-if-statement",href="#control-flow-statements-if-statement"):              
              text t "If statement"          
          text t "\n"          
          p():            
            text t "The if statement is one way to branch the control flow:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Poor soul, you lost your name?"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "elif"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "name"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Very funny, your name is name."              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Hi, "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "!"              
              text t "\""          
          text t "\n"          
          p():            
            text t "There can be zero or more "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "elif"            
            text t " "            
            text t "parts, and the\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "else"            
            text t " "            
            text t "part is optional. The keyword "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "elif"            
            text t " "            
            text t "is short for "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "else if"            
            text t ", and is useful to avoid excessive\nindentation. (The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\""                
                text t "\""            
            text t " "            
            text t "is the empty\nstring. It contains no characters.)"          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-case-statement",href="#control-flow-statements-case-statement"):              
              text t "Case statement"          
          text t "\n"          
          p():            
            text t "Another way to branch is provided by the case statement. A case statement is a multi-branch:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Poor soul, you lost your name?"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "name"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Very funny, your name is name."              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Dave"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Frank"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Cool name!"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Hi, "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "!"              
              text t "\""          
          text t "\n"          
          p():            
            text t "As it can be seen, for an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "of"            
            text t " "            
            text t "branch a comma\nseparated list of values is also allowed."          
          text t "\n"          
          p():            
            text t "The case statement can deal with integers, other ordinal types and strings. (What an ordinal type is will\nbe explained soon.) For integers or other ordinal types value ranges are also possible:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# this statement will be explained later:"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "from"            
            text t " "            
            span(class="Identifier"):              
              text t "strutils"            
            text t " "            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "parseInt"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "A number please: "              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "parseInt"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="FloatNumber"):              
              text t "4."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "7"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "8"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "The number is 3 or 8"              
              text t "\""          
          text t "\n"          
          p():            
            text t "However, the above code does not compile: the reason is that you have to cover every value that "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "n"            
            text t " "            
            text t "may contain, but the code only handles the\nvalues "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "0..8"            
            text t ". Since it is not very practical to\nlist every other possible integer (though it is possible thanks to the range notation), we fix this by\ntelling the compiler that for every other value nothing should be done:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Operator"):              
              text t "..."            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="FloatNumber"):              
              text t "4."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "7"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "8"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "The number is 3 or 8"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "discard"          
          text t "\n"          
          p():            
            text t "The empty "            
            a(class="reference external",href="#discard-statement"):              
              text t "discard statement"            
            text t " "            
            text t "is a "            
            em():              
              text t "do\nnothing"            
            text t " "            
            text t "statement. The compiler knows that a case statement with an else part cannot fail and thus\nthe error disappears. Note that it is impossible to cover all possible string values: that is why string\ncases always need an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "else"            
            text t " "            
            text t "branch."          
          text t "\n"          
          p():            
            text t "In general the case statement is used for subrange types or enumerations where it is of great help that\nthe compiler checks that you covered any possible value."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-while-statement",href="#control-flow-statements-while-statement"):              
              text t "While statement"          
          text t "\n"          
          p():            
            text t "The while statement is a simple looping construct:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "What's your name? "              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Please tell me your name: "              
              text t "\""            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# no ``var``, because we do not declare a new variable here"          
          text t "\n"          
          p():            
            text t "The example uses a while loop to keep asking the users for their name, as long as the user types in\nnothing (only presses RETURN)."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-for-statement",href="#control-flow-statements-for-statement"):              
              text t "For statement"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text t "statement is a construct to loop over\nany element an "            
            em():              
              text t "iterator"            
            text t " "            
            text t "provides. The example uses the built-in "            
            a(class="reference external",href="system.html#countup"):              
              text t "countup"            
            text t " "            
            text t "iterator:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Counting to ten: "              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "countup"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Outputs 1 2 3 4 5 6 7 8 9 10 on different lines"          
          text t "\n"          
          p():            
            text t "The variable "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "i"            
            text t " "            
            text t "is implicitly declared by the\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text t "loop and has the type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t ", because that is what "            
            a(class="reference external",href="system.html#countup"):              
              text t "countup"            
            text t " "            
            text t "returns. "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "i"            
            text t " "            
            text t "runs through the values 1, 2, .., 10. Each\nvalue is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "echo"            
            text t "-ed. This code does the same:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Counting to 10: "              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Operator"):              
              text t "<"              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "inc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# increment i by 1"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Outputs 1 2 3 4 5 6 7 8 9 10 on different lines"          
          text t "\n"          
          p():            
            text t "Counting down can be achieved as easily (but is less often needed):"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Counting down from 10 to 1: "              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "countdown"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Outputs 10 9 8 7 6 5 4 3 2 1 on different lines"          
          text t "\n"          
          p():            
            text t "Since counting up occurs so often in programs, Nim also has a "            
            a(class="reference external",href="system.html#...i,S,T"):              
              text t ".."            
            text t " "            
            text t "iterator that does the same:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="FloatNumber"):              
              text t "1."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Operator"):              
              text t "..."          
          text t "\n"          
          p():            
            text t "Zero-indexed counting have two shortcuts "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t ".."                
                text t "<"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "..^"            
            text t " "            
            text t "to\nsimplify counting to one less than the higher index:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."              
              text t "<"            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Operator"):              
              text t "..."            
            text t "  "            
            span(class="Comment"):              
              text t "# 0..9"          
          text t "\n"          
          p():            
            text t "or"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "some string"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."              
              text t "<"            
            span(class="Identifier"):              
              text t "s"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Operator"):              
              text t "..."          
          text t "\n"          
          p():            
            text t "Other useful iterators for collections (like arrays and sequences) are"          
          text t "\n"          
          ul(class="simple"):            
            text t "\n"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "items"              
              text t " "              
              text t "and "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "mitems"              
              text t ", which provides immutable and mutable\nelements respectively, and"            
            text t "\n"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "pairs"              
              text t " "              
              text t "and "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "mpairs"              
              text t " "              
              text t "which provides the element and an index\nnumber (immutable and mutable respectively)"            
            text t "\n"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "index"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "item"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="StringLit"):              
              text t "\""              
              text t "a"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            span(class="StringLit"):              
              text t "\""              
              text t "b"              
              text t "\""            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "pairs"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "item"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t " "              
              text t "at index "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "index"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# ="              
              text t ">"              
              text t " "              
              text t "a at index 0"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# ="              
              text t ">"              
              text t " "              
              text t "b at index 1"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-scopes-and-the-block-statement",href="#control-flow-statements-scopes-and-the-block-statement"):              
              text t "Scopes and the block statement"          
          text t "\n"          
          p():            
            text t "Control flow statements have a feature not covered yet: they open a new scope. This means that in the\nfollowing example, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t " "            
            text t "is not accessible outside\nthe loop:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "hi"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Comment"):              
              text t "# does not work"          
          text t "\n"          
          p():            
            text t "A while (for) statement introduces an implicit block. Identifiers are only visible within the block they\nhave been declared. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "block"            
            text t " "            
            text t "statement can be\nused to open a new block explicitly:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "block"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "hi"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Comment"):              
              text t "# does not work either"          
          text t "\n"          
          p():            
            text t "The block's "            
            em():              
              text t "label"            
            text t " "            
            text t "("            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "myblock"            
            text t " "            
            text t "in the\nexample) is optional."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-break-statement",href="#control-flow-statements-break-statement"):              
              text t "Break statement"          
          text t "\n"          
          p():            
            text t "A block can be left prematurely with a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "break"            
            text t "\n"            
            text t "statement. The break statement can leave a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "while"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t ", or a\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "block"            
            text t " "            
            text t "statement. It leaves the innermost\nconstruct, unless a label of a block is given:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "block"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "entering block"              
              text t "\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "looping"              
              text t "\""            
            text t "\n"            
            span(class="Keyword"):              
              text t "break"            
            text t " "            
            span(class="Comment"):              
              text t "# leaves the loop, but not the block"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "still in block"              
              text t "\""            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "block"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock2"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "entering block"              
              text t "\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "looping"              
              text t "\""            
            text t "\n"            
            span(class="Keyword"):              
              text t "break"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock2"            
            text t " "            
            span(class="Comment"):              
              text t "# leaves the block (and the loop)"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "still in block"              
              text t "\""          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-continue-statement",href="#control-flow-statements-continue-statement"):              
              text t "Continue statement"          
          text t "\n"          
          p():            
            text t "Like in many other programming languages, a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "continue"            
            text t " "            
            text t "statement starts the next iteration immediately:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "continue"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="control-flow-statements-when-statement",href="#control-flow-statements-when-statement"):              
              text t "When statement"          
          text t "\n"          
          p():            
            text t "Example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "when"            
            text t " "            
            span(class="Identifier"):              
              text t "system"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "hostOS"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "windows"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "running on Windows!"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "elif"            
            text t " "            
            span(class="Identifier"):              
              text t "system"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "hostOS"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "linux"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "running on Linux!"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "elif"            
            text t " "            
            span(class="Identifier"):              
              text t "system"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "hostOS"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "macosx"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "running on Mac OS X!"              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "unknown operating system"              
              text t "\""          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "when"            
            text t " "            
            text t "statement is almost identical to the\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "if"            
            text t " "            
            text t "statement, but with these differences:"          
          text t "\n"          
          ul(class="simple"):            
            text t "\n"            
            li():              
              text t "Each condition must be a constant expression since it is evaluated by the compiler."            
            text t "\n"            
            li():              
              text t "The statements within a branch do not open a new scope."            
            text t "\n"            
            li():              
              text t "The compiler checks the semantics and produces code "              
              em():                
                text t "only"              
              text t " "              
              text t "for the statements that belong to\nthe first condition that evaluates to "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "true"              
              text t ".\n"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "when"            
            text t " "            
            text t "statement is useful for writing\nplatform specific code, similar to the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "#ifdef"            
            text t "\n"            
            text t "construct in the C programming language."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="statements-and-indentation",href="#statements-and-indentation"):              
              text t "Statements and\nindentation"          
          text t "\n"          
          p():            
            text t "Now that we covered the basic control flow statements, let's return to Nim indentation rules."          
          text t "\n"          
          p():            
            text t "In Nim there is a distinction between "            
            em():              
              text t "simple statements"            
            text t " "            
            text t "and "            
            em():              
              text t "complex statements"            
            text t ".\n"            
            em():              
              text t "Simple statements"            
            text t " "            
            text t "cannot contain other statements: Assignment, procedure calls or the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t " "            
            text t "statement belong to the simple statements.\n"            
            em():              
              text t "Complex statements"            
            text t " "            
            text t "like "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "if"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "when"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "while"            
            text t " "            
            text t "can\ncontain other statements. To avoid ambiguities, complex statements must always be indented, but single\nsimple statements do not:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# no indentation needed for single assignment statement:"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# indentation needed for nested if statement:"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# indentation needed, because two statements follow the condition:"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "false"          
          text t "\n"          
          p():            
            em():              
              text t "Expressions"            
            text t " "            
            text t "are parts of a statement which usually result in a value. The condition in an if\nstatement is an example for an expression. Expressions can contain indentation at certain places for\nbetter readability:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "thisIsaLongCondition"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Keyword"):              
              text t "and"            
            text t "\n"            
            span(class="Identifier"):              
              text t "thisIsAnotherLongCondition"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t "\n"            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"          
          text t "\n"          
          p():            
            text t "As a rule of thumb, indentation within expressions is allowed after operators, an open parenthesis and\nafter commas."          
          text t "\n"          
          p():            
            text t "With parenthesis and semicolons "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "(;)"            
            text t " "            
            text t "you can\nuse statements where only an expression is allowed:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# computes fac(4) at compile time:"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "const"            
            text t " "            
            span(class="Identifier"):              
              text t "fac4"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ";"            
            text t " "            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="FloatNumber"):              
              text t "1."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "*="            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t ";"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          h1():            
            a(class="toc-backref",id="procedures",href="#procedures"):              
              text t "Procedures"          
          text t "\n"          
          p():            
            text t "To define new commands like "            
            a(class="reference external",href="system.html#echo"):              
              text t "echo"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#readLine,File"):              
              text t "readLine"            
            text t " "            
            text t "in the examples, the concept of\na "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "procedure"            
            text t " "            
            text t "is needed. (Some languages call\nthem "            
            em():              
              text t "methods"            
            text t " "            
            text t "or "            
            em():              
              text t "functions"            
            text t ".) In Nim new procedures are defined with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "proc"            
            text t " "            
            text t "keyword:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "yes"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "question"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "bool"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "question"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t " "              
              text t "(y/n)"              
              text t "\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\n"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "y"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Y"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "yes"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Yes"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "return"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text t "\n"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "n"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "N"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "no"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "No"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "return"            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text t "\n"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Please be clear: yes or no"              
              text t "\""            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "yes"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "Should I delete all your important files?"              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "I'm sorry Dave, I'm afraid I can't do that."              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "I think you know what the problem is just as well as I do."              
              text t "\""          
          text t "\n"          
          p():            
            text t "This example shows a procedure named "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "yes"            
            text t " "            
            text t "that\nasks the user a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "question"            
            text t " "            
            text t "and returns true if\nthey answered "            
            text t "\""            
            text t "yes"            
            text t "\""            
            text t " "            
            text t "(or something similar) and returns false if they answered "            
            text t "\""            
            text t "no"            
            text t "\""            
            text t " "            
            text t "(or\nsomething similar). A "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t " "            
            text t "statement leaves\nthe procedure (and therefore the while loop) immediately. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "(question: string): bool"            
            text t " "            
            text t "syntax describes that the procedure expects a\nparameter named "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "question"            
            text t " "            
            text t "of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "string"            
            text t " "            
            text t "and returns a value of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t ". The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t " "            
            text t "type is built-in: the only valid values for "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t " "            
            text t "are "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "true"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "false"            
            text t ". The\nconditions in if or while statements must be of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t "."          
          text t "\n"          
          p():            
            text t "Some terminology: in the example "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "question"            
            text t " "            
            text t "is\ncalled a (formal) "            
            em():              
              text t "parameter"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\""                
                text t "Should\nI..."                
                text t "\""            
            text t " "            
            text t "is called an "            
            em():              
              text t "argument"            
            text t " "            
            text t "that is passed to this parameter."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="procedures-result-variable",href="#procedures-result-variable"):              
              text t "Result\nvariable"          
          text t "\n"          
          p():            
            text t "A procedure that returns a value has an implicit "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "result"            
            text t " "            
            text t "variable declared that represents the return value. A "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t " "            
            text t "statement with no expression is a\nshorthand for "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return result"            
            text t ". The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "result"            
            text t " "            
            text t "value is always returned automatically at\nthe end of a procedure if there is no "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t "\n"            
            text t "statement at the exit."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "sumTillNegative"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "varargs"            
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
              text t "int"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Operator"):              
              text t "<"            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Keyword"):              
              text t "return"            
            text t "\n"            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "sumTillNegative"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# echos 0"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "sumTillNegative"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# echos 12"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "sumTillNegative"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            text t " "            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Operator"):              
              text t "-"            
            span(class="DecNumber"):              
              text t "1"            
            text t " "            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "6"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# echos 7"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "result"            
            text t " "            
            text t "variable is already implicitly\ndeclared at the start of the function, so declaring it again with \'var result\', for example, would shadow\nit with a normal variable of the same name. The result variable is also already initialised with the\ntype\'s default value. Note that referential data types will be "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "nil"            
            text t " "            
            text t "at the start of the procedure, and thus may require manual initialisation.\n"          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="procedures-parameters",href="#procedures-parameters"):              
              text t "Parameters"          
          text t "\n"          
          p():            
            text t "Parameters are immutable in the procedure body. By default, their value cannot be changed because this\nallows the compiler to implement parameter passing in the most efficient way. If a mutable variable is\nneeded inside the procedure, it has to be declared with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text t "in the procedure body. Shadowing the parameter name is possible, and\nactually an idiom:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "printSeq"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "seq"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "nprinted"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Operator"):              
              text t "-"            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "nprinted"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "nprinted"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Operator"):              
              text t "-"            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            text t " "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "min"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "nprinted"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            text t " "            
            span(class="Operator"):              
              text t ".."            
            text t " "            
            span(class="Operator"):              
              text t "<"            
            span(class="Identifier"):              
              text t "nprinted"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"          
          text t "\n"          
          p():            
            text t "If the procedure needs to modify the argument for the caller, a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text t "parameter can be used:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "divmod"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ";"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "remainder"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "res"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Keyword"):              
              text t "div"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t "        "            
            span(class="Comment"):              
              text t "# integer division"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "remainder"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Keyword"):              
              text t "mod"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t "  "            
            span(class="Comment"):              
              text t "# integer modulo operation"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "divmod"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "8"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# modifies x and y"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "y"          
          text t "\n"          
          p():            
            text t "In the example, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "res"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "remainder"            
            text t " "            
            text t "are "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var parameters"            
            text t ". Var parameters can be modified by the procedure and the\nchanges are visible to the caller. Note that the above example would better make use of a tuple as a\nreturn value instead of using var parameters."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="procedures-discard-statement",href="#procedures-discard-statement"):              
              text t "Discard\nstatement"          
          text t "\n"          
          p():            
            text t "To call a procedure that returns a value just for its side effects and ignoring its return value, a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "discard"            
            text t " "            
            text t "statement "            
            strong():              
              text t "must"            
            text t " "            
            text t "be used.\nNim does not allow silently throwing away a return value:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "discard"            
            text t " "            
            span(class="Identifier"):              
              text t "yes"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "May I ask a pointless question?"              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "The return value can be ignored implicitly if the called proc/iterator has been declared with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "discardable"            
            text t " "            
            text t "pragma:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "p"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "discardable"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "return"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "p"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# now valid"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "discard"            
            text t " "            
            text t "statement can also be used to\ncreate block comments as described in the "            
            a(class="reference external",href="#comments"):              
              text t "Comments"            
            text t "\n"            
            text t "section."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="procedures-named-arguments",href="#procedures-named-arguments"):              
              text t "Named\narguments"          
          text t "\n"          
          p():            
            text t "Often a procedure has many parameters and it is not clear in which order the parameters appear. This is\nespecially true for procedures that construct a complex data type. Therefore the arguments to a procedure\ncan be named, so that it is clear which argument belongs to which parameter:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "createWindow"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "width"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "height"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ";"            
            text t " "            
            span(class="Identifier"):              
              text t "title"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ";"            
            text t "\n"            
            span(class="Identifier"):              
              text t "show"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "bool"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Window"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\n"            
            span(class="Operator"):              
              text t "..."            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "w"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "createWindow"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "show"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "title"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "My Application"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t "\n"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "height"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "600"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "width"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "800"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "Now that we use named arguments to call "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "createWindow"            
            text t " "            
            text t "the argument order does not matter anymore. Mixing named\narguments with ordered arguments is also possible, but not very readable:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "w"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "createWindow"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "title"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "My Application"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t "\n"            
            span(class="Identifier"):              
              text t "height"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "600"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "width"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "800"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "The compiler checks that each parameter receives exactly one argument."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="procedures-default-values",href="#procedures-default-values"):              
              text t "Default\nvalues"          
          text t "\n"          
          p():            
            text t "To make the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "createWindow"            
            text t " "            
            text t "proc easier to use it\nshould provide "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "default values"            
            text t "; these are values\nthat are used as arguments if the caller does not specify them:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "createWindow"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "width"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "500"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "height"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "700"            
            span(class="Punctuation"):              
              text t ","            
            text t "\n"            
            span(class="Identifier"):              
              text t "title"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "unknown"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t "\n"            
            span(class="Identifier"):              
              text t "show"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Window"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\n"            
            span(class="Operator"):              
              text t "..."            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "w"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "createWindow"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "title"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "My Application"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "height"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "600"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "width"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "800"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "Now the call to "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "createWindow"            
            text t " "            
            text t "only needs to set\nthe values that differ from the defaults."          
          text t "\n"          
          p():            
            text t "Note that type inference works for parameters with default values; there is no need to write "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "title: string = "                
                text t "\""                
                text t "unknown"                
                text t "\""            
            text t ", for example.\n"          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="procedures-overloaded-procedures",href="#procedures-overloaded-procedures"):              
              text t "Overloaded procedures"          
          text t "\n"          
          p():            
            text t "Nim provides the ability to overload procedures similar to C++:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "toString"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Operator"):              
              text t "..."            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "toString"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "bool"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "true"              
              text t "\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "false"              
              text t "\""            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "toString"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "13"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# calls the toString(x: int) proc"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "toString"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# calls the toString(x: bool) proc"          
          text t "\n"          
          p():            
            text t "(Note that "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "toString"            
            text t " "            
            text t "is usually the "            
            a(class="reference external",href="system.html#$"):              
              text t "$"            
            text t " "            
            text t "operator in Nim.) The compiler chooses the most\nappropriate proc for the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "toString"            
            text t " "            
            text t "calls. How\nthis overloading resolution algorithm works exactly is not discussed here (it will be specified in the\nmanual soon). However, it does not lead to nasty surprises and is based on a quite simple unification\nalgorithm. Ambiguous calls are reported as errors."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="procedures-operators",href="#procedures-operators"):              
              text t "Operators"          
          text t "\n"          
          p():            
            text t "The Nim library makes heavy use of overloading - one reason for this is that each operator like "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "+"            
            text t " "            
            text t "is just an overloaded proc. The parser lets you\nuse operators in "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "infix notation"            
            text t " "            
            text t "("            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a + b"            
            text t ") or "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "prefix notation"            
            text t " "            
            text t "("            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "+\na"            
            text t "). An infix operator always receives two arguments, a prefix operator always one.\n(Postfix operators are not possible, because this would be ambiguous: does "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a @ @ b"            
            text t " "            
            text t "mean "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "(a) @ (@b)"            
            text t " "            
            text t "or "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "(a@) @\n(b)"            
            text t "? It always means "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "(a) @\n(@b)"            
            text t ", because there are no postfix operators in Nim.)"          
          text t "\n"          
          p():            
            text t "Apart from a few built-in keyword operators such as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "and"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "or"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "not"            
            text t ", operators always consist of these\ncharacters: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "+ - * \\ / "                
                text t "<"                
                text t " "                
                text t ">"                
                text t " "                
                text t "= @ $ ~ "                
                text t "&"                
                text t " "                
                text t "% ! ? ^ .\n|"          
          text t "\n"          
          p():            
            text t "User defined operators are allowed. Nothing stops you from defining your own "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "@!?+~"            
            text t " "            
            text t "operator, but doing so may reduce\nreadability."          
          text t "\n"          
          p():            
            text t "The operator\'s precedence is determined by its first character. The details can be found in the manual.\n"          
          text t "\n"          
          p():            
            text t "To define a new operator enclose the operator in backticks "            
            text t "\""            
            text t "``"            
            text t "\""            
            text t ":"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "$"            
            span(class="Punctuation"):              
              text t "`"            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "myDataType"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Operator"):              
              text t "..."            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# now the $ operator also works with myDataType, overloading resolution"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# ensures that $ works for built-in types just like before"          
          text t "\n"          
          p():            
            text t "The "            
            text t "\""            
            text t "``"            
            text t "\""            
            text t " "            
            text t "notation can also be used to call an operator just like any other procedure:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "=="            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t "("            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "+"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "7"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "True"              
              text t "\""          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="procedures-forward-declarations",href="#procedures-forward-declarations"):              
              text t "Forward declarations"          
          text t "\n"          
          p():            
            text t "Every variable, procedure, etc. needs to be declared before it can be used. (The reason for this is that\nit is non-trivial to avoid this need in a language that supports meta programming as extensively as Nim\ndoes.) However, this cannot be done for mutually recursive procedures:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# forward declaration:"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "even"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "bool"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "odd"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "bool"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "assert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t ">"              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# makes sure we don't run into negative recursion"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            text t " "            
            span(class="Keyword"):              
              text t "or"            
            text t " "            
            span(class="Identifier"):              
              text t "even"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "-"            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "even"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "bool"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "assert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t ">"              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# makes sure we don't run into negative recursion"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            text t " "            
            span(class="Keyword"):              
              text t "or"            
            text t " "            
            span(class="Identifier"):              
              text t "odd"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "-"            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "Here "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "odd"            
            text t " "            
            text t "depends on "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "even"            
            text t " "            
            text t "and vice versa. Thus "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "even"            
            text t " "            
            text t "needs to be introduced to the compiler\nbefore it is completely defined. The syntax for such a forward declaration is simple: just omit the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "="            
            text t " "            
            text t "and the procedure's body. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "assert"            
            text t " "            
            text t "just adds border conditions, and will be\ncovered later in "            
            a(class="reference external",href="#modules"):              
              text t "Modules"            
            text t " "            
            text t "section."          
          text t "\n"          
          p():            
            text t "Later versions of the language will weaken the requirements for forward declarations."          
          text t "\n"          
          p():            
            text t "The example also shows that a proc\'s body can consist of a single expression whose value is then returned\nimplicitly."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="iterators",href="#iterators"):              
              text t "Iterators"          
          text t "\n"          
          p():            
            text t "Let's return to the simple counting example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Counting to ten: "              
              text t "\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "countup"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"          
          text t "\n"          
          p():            
            text t "Can a "            
            a(class="reference external",href="system.html#countup"):              
              text t "countup"            
            text t " "            
            text t "proc be written that supports\nthis loop? Lets try:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "countup"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text t " "            
            span(class="Operator"):              
              text t "<"              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Keyword"):              
              text t "return"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text t "\n"            
            span(class="Identifier"):              
              text t "inc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "res"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "However, this does not work. The problem is that the procedure should not only "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t ", but return and "            
            strong():              
              text t "continue"            
            text t "\n"            
            text t "after an iteration has finished. This "            
            em():              
              text t "return and continue"            
            text t " "            
            text t "is called a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "yield"            
            text t " "            
            text t "statement. Now the only thing left to do is\nto replace the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "proc"            
            text t " "            
            text t "keyword by "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "iterator"            
            text t " "            
            text t "and here it is - our first iterator:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "iterator"            
            text t " "            
            span(class="Identifier"):              
              text t "countup"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text t " "            
            span(class="Operator"):              
              text t "<"              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Keyword"):              
              text t "yield"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text t "\n"            
            span(class="Identifier"):              
              text t "inc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "res"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "Iterators look very similar to procedures, but there are several important differences:"          
          text t "\n"          
          ul(class="simple"):            
            text t "\n"            
            li():              
              text t "Iterators can only be called from for loops."            
            text t "\n"            
            li():              
              text t "Iterators cannot contain a "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "return"              
              text t " "              
              text t "statement\n(and procs cannot contain a "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "yield"              
              text t " "              
              text t "statement).\n"            
            text t "\n"            
            li():              
              text t "Iterators have no implicit "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "result"              
              text t " "              
              text t "variable.\n"            
            text t "\n"            
            li():              
              text t "Iterators do not support recursion."            
            text t "\n"            
            li():              
              text t "Iterators cannot be forward declared, because the compiler must be able to inline an iterator. (This\nrestriction will be gone in a future version of the compiler.)"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "However, you can also use a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "closure"            
            text t " "            
            text t "iterator\nto get a different set of restrictions. See "            
            a(class="reference external",href="manual.html#iterators-and-the-for-statement-first-class-iterators"):              
              text t "first class iterators"            
            text t " "            
            text t "for\ndetails. Iterators can have the same name and parameters as a proc, since essentially they have their own\nnamespaces. Therefore it is common practice to wrap iterators in procs of the same name which accumulate\nthe result of the iterator and return it as a sequence, like "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "split"            
            text t " "            
            text t "from the "            
            a(class="reference external",href="strutils.html"):              
              text t "strutils\nmodule"            
            text t "."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="basic-types",href="#basic-types"):              
              text t "Basic types"          
          text t "\n"          
          p():            
            text t "This section deals with the basic built-in types and the operations that are available for them in\ndetail."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="basic-types-booleans",href="#basic-types-booleans"):              
              text t "Booleans"          
          text t "\n"          
          p():            
            text t "Nim's boolean type is called "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t " "            
            text t "and consists\nof the two pre-defined values "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "true"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "false"            
            text t ". Conditions in while, if, elif, and when\nstatements must be of type bool."          
          text t "\n"          
          p():            
            text t "The operators "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "not, and, or, xor, "                
                text t "<"                
                text t ", "                
                text t "<"                
                text t "=, "                
                text t ">"                
                text t ", "                
                text t ">"                
                text t "=,\n!=, =="            
            text t " "            
            text t "are defined for the bool type. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "and"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "or"            
            text t "\n"            
            text t "operators perform short-circuit evaluation. For example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "p"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            text t " "            
            span(class="Keyword"):              
              text t "and"            
            text t " "            
            span(class="Identifier"):              
              text t "p"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "xyz"              
              text t "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# p.name is not evaluated if p == nil"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "p"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "p"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "next"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="basic-types-characters",href="#basic-types-characters"):              
              text t "Characters"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "character type"            
            text t " "            
            text t "is called "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "char"            
            text t ". Its size is always one byte, so it cannot\nrepresent most UTF-8 characters; but it "            
            em():              
              text t "can"            
            text t " "            
            text t "represent one of the bytes that makes up a multi-byte\nUTF-8 character. The reason for this is efficiency: for the overwhelming majority of use-cases, the\nresulting programs will still handle UTF-8 properly as UTF-8 was specially designed for this. Character\nliterals are enclosed in single quotes."          
          text t "\n"          
          p():            
            text t "Chars can be compared with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "=="            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "<"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "<"                
                text t "="            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t ">"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t ">"                
                text t "="            
            text t " "            
            text t "operators. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text t "operator converts a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "char"            
            text t " "            
            text t "to a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "string"            
            text t ". Chars cannot be mixed with integers; to get the ordinal value of a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "char"            
            text t " "            
            text t "use the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "ord"            
            text t " "            
            text t "proc. Converting from an integer to a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "char"            
            text t " "            
            text t "is done with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "chr"            
            text t " "            
            text t "proc."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="basic-types-strings",href="#basic-types-strings"):              
              text t "Strings"          
          text t "\n"          
          p():            
            text t "String variables are "            
            strong():              
              text t "mutable"            
            text t ", so appending to a string is possible, and quite efficient.\nStrings in Nim are both zero-terminated and have a length field. A string\'s length can be retrieved with\nthe builtin "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "len"            
            text t " "            
            text t "procedure; the length never\ncounts the terminating zero. Accessing the terminating zero is an error, it only exists so that a Nim\nstring can be converted to a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "cstring"            
            text t " "            
            text t "without\ndoing a copy."          
          text t "\n"          
          p():            
            text t "The assignment operator for strings copies the string. You can use the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "&"            
            text t " "            
            text t "operator to concatenate strings and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "add"            
            text t " "            
            text t "to append to a string."          
          text t "\n"          
          p():            
            text t "Strings are compared using their lexicographical order. All the comparison operators are supported. By\nconvention, all strings are UTF-8 encoded, but this is not enforced. For example, when reading strings\nfrom binary files, they are merely a sequence of bytes. The index operation "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "s[i]"            
            text t " "            
            text t "means the i-th "            
            em():              
              text t "char"            
            text t " "            
            text t "of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "s"            
            text t ", not the i-th "            
            em():              
              text t "unichar"            
            text t "."          
          text t "\n"          
          p():            
            text t "A string variable is initialized with the empty string "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "\""                
                text t "\""            
            text t "."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="basic-types-integers",href="#basic-types-integers"):              
              text t "Integers"          
          text t "\n"          
          p():            
            text t "Nim has these integer types built-in: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int int8 int16 int32\nint64 uint uint8 uint16 uint32 uint64"            
            text t "."          
          text t "\n"          
          p():            
            text t "The default integer type is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t ". Integer\nliterals can have a "            
            em():              
              text t "type suffix"            
            text t " "            
            text t "to specify a non-default integer type:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "let"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            text t "     "            
            span(class="Comment"):              
              text t "# x is of type ``int``"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0'i8"            
            text t "  "            
            span(class="Comment"):              
              text t "# y is of type ``int8``"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "z"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0'i64"            
            text t " "            
            span(class="Comment"):              
              text t "# z is of type ``int64``"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "u"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "0'"            
            span(class="Identifier"):              
              text t "u"            
            text t "   "            
            span(class="Comment"):              
              text t "# u is of type ``uint``"          
          text t "\n"          
          p():            
            text t "Most often integers are used for counting objects that reside in memory, so "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t " "            
            text t "has the same size as a pointer."          
          text t "\n"          
          p():            
            text t "The common operators "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "+ - * div mod "                
                text t "<"                
                text t " "                
                text t "<"                
                text t "= == != "                
                text t ">"                
                text t "\n"                
                text t ">"                
                text t "="            
            text t " "            
            text t "are defined for integers. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "and or\nxor not"            
            text t " "            
            text t "operators are also defined for integers, and provide "            
            em():              
              text t "bitwise"            
            text t " "            
            text t "operations.\nLeft bit shifting is done with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "shl"            
            text t ", right\nshifting with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "shr"            
            text t " "            
            text t "operator. Bit shifting\noperators always treat their arguments as "            
            em():              
              text t "unsigned"            
            text t ". For "            
            span(id="arithmetic-bit-shifts_1"):              
              text t "arithmetic bit shifts"            
            text t " "            
            text t "ordinary multiplication or division can be\nused."          
          text t "\n"          
          p():            
            text t "Unsigned operations all wrap around; they cannot lead to over- or under-flow errors."          
          text t "\n"          
          p():            
            text t "Lossless "            
            span(id="automatic-type-conversion_1"):              
              text t "Automatic type conversion"            
            text t " "            
            text t "is performed in\nexpressions where different kinds of integer types are used. However, if the type conversion would cause\nloss of information, the "            
            span(id="eoutofrange_1"):              
              text t "EOutOfRange"            
            text t " "            
            text t "exception is raised (if the error\ncannot be detected at compile time)."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="basic-types-floats",href="#basic-types-floats"):              
              text t "Floats"          
          text t "\n"          
          p():            
            text t "Nim has these floating point types built-in: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "float float32\nfloat64"            
            text t "."          
          text t "\n"          
          p():            
            text t "The default float type is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "float"            
            text t ". In the\ncurrent implementation, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "float"            
            text t " "            
            text t "is always\n64-bits."          
          text t "\n"          
          p():            
            text t "Float literals can have a "            
            em():              
              text t "type suffix"            
            text t " "            
            text t "to specify a non-default float type:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="FloatNumber"):              
              text t "0.0"            
            text t "      "            
            span(class="Comment"):              
              text t "# x is of type ``float``"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="FloatNumber"):              
              text t "0.0'f32"            
            text t "  "            
            span(class="Comment"):              
              text t "# y is of type ``float32``"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "z"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="FloatNumber"):              
              text t "0.0'f64"            
            text t "  "            
            span(class="Comment"):              
              text t "# z is of type ``float64``"          
          text t "\n"          
          p():            
            text t "The common operators "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "+ - * / "                
                text t "<"                
                text t " "                
                text t "<"                
                text t "= == != "                
                text t ">"                
                text t "\n"                
                text t ">"                
                text t "="            
            text t " "            
            text t "are defined for floats and follow the IEEE-754 standard."          
          text t "\n"          
          p():            
            text t "Automatic type conversion in expressions with different kinds of floating point types is performed: the\nsmaller type is converted to the larger. Integer types are "            
            strong():              
              text t "not"            
            text t " "            
            text t "converted to floating\npoint types automatically, nor vice versa. Use the "            
            a(class="reference external",href="system.html#toInt"):              
              text t "toInt"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#toFloat"):              
              text t "toFloat"            
            text t " "            
            text t "procs for these conversions."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="basic-types-type-conversion",href="#basic-types-type-conversion"):              
              text t "Type\nConversion"          
          text t "\n"          
          p():            
            text t "Conversion between numerical types is performed by using the type as a function:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int32"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="FloatNumber"):              
              text t "1."            
            span(class="Identifier"):              
              text t "int32"            
            text t "   "            
            span(class="Comment"):              
              text t "# same as calling int32(1)"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int8"            
            text t "  "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "int8"            
            span(class="Punctuation"):              
              text t "("            
            span(class="CharLit"):              
              text t "'a'"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# 'a' == 97'i8"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "z"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "float"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="FloatNumber"):              
              text t "2.5"            
            text t "       "            
            span(class="Comment"):              
              text t "# int(2.5) rounds down to 2"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "sum"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "z"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# sum == 100"          
          text t "\n"          
          h1():            
            a(class="toc-backref",id="internal-type-representation",href="#internal-type-representation"):              
              text t "Internal\ntype representation"          
          text t "\n"          
          p():            
            text t "As mentioned earlier, the built-in "            
            a(class="reference external",href="system.html#$"):              
              text t "$"            
            text t " "            
            text t "(stringify)\noperator turns any basic type into a string, which you can then print to the console using the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "echo"            
            text t " "            
            text t "proc. However, advanced types, and your own\ncustom types, won\'t work with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text t "operator\nuntil you define it for them. Sometimes you just want to debug the current value of a complex type without\nhaving to write its "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text t "operator. You can use\nthen the "            
            a(class="reference external",href="system.html#repr"):              
              text t "repr"            
            text t " "            
            text t "proc which works with any type and\neven complex data graphs with cycles. The following example shows that even for basic types there is a\ndifference between the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "repr"            
            text t " "            
            text t "outputs:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "myBool"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "myCharacter"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="CharLit"):              
              text t "'n'"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "myString"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "nim"              
              text t "\""            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "myInteger"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "42"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "myFloat"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="FloatNumber"):              
              text t "3.14"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myBool"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t ":"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "myBool"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "true:true"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myCharacter"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t ":"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "myCharacter"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "n:'n'"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myString"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t ":"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "myString"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "nim:0x10fa8c050"              
              text t "\""              
              text t "nim"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myInteger"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t ":"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "myInteger"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "42:42"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myFloat"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t ":"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "myFloat"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "3.1400000000000001e+00:3.1400000000000001e+00"          
          text t "\n"          
          h1():            
            a(class="toc-backref",id="advanced-types",href="#advanced-types"):              
              text t "Advanced types"          
          text t "\n"          
          p():            
            text t "In Nim new types can be defined within a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "type"            
            text t "\n"            
            text t "statement:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "biggestInt"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "int64"            
            text t "      "            
            span(class="Comment"):              
              text t "# biggest integer type that is available"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "biggestFloat"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "float64"            
            text t "  "            
            span(class="Comment"):              
              text t "# biggest float type that is available"          
          text t "\n"          
          p():            
            text t "Enumeration and object types may only be defined within a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "type"            
            text t " "            
            text t "statement."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-enumerations",href="#advanced-types-enumerations"):              
              text t "Enumerations"          
          text t "\n"          
          p():            
            text t "A variable of an enumeration type can only be assigned one of the enumeration\'s specified values. These\nvalues are a set of ordered symbols. Each symbol is mapped to an integer value internally. The first\nsymbol is represented at runtime by 0, the second by 1 and so on. For example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Direction"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text t "\n"            
            span(class="Identifier"):              
              text t "north"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "east"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "south"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "west"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "south"            
            text t "     "            
            span(class="Comment"):              
              text t "# `x` is of type `Direction`; its value is `south`"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "            "            
            span(class="Comment"):              
              text t "# writes "              
              text t "\""              
              text t "south"              
              text t "\""              
              text t " "              
              text t "to `stdout`"          
          text t "\n"          
          p():            
            text t "All the comparison operators can be used with enumeration types."          
          text t "\n"          
          p():            
            text t "An enumeration's symbol can be qualified to avoid ambiguities: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Direction.south"            
            text t "."          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text t "operator can convert any enumeration\nvalue to its name, and the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "ord"            
            text t " "            
            text t "proc can convert\nit to its underlying integer value."          
          text t "\n"          
          p():            
            text t "For better interfacing to other programming languages, the symbols of enum types can be assigned an\nexplicit ordinal value. However, the ordinal values must be in ascending order."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-ordinal-types",href="#advanced-types-ordinal-types"):              
              text t "Ordinal\ntypes"          
          text t "\n"          
          p():            
            text t "Enumerations, integer types, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "char"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t " "            
            text t "(and subranges) are called ordinal types.\nOrdinal types have quite a few special operations:"          
          text t "\n"          
          table(class="docutils",border="1"):            
            text t "\n"            
            tr():              
              text t "\n"              
              th():                
                text t "Operation"              
              text t "\n"              
              th():                
                text t "Comment"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "ord(x)"              
              text t "\n"              
              td():                
                text t "returns the integer value that is used to represent "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t "'s value"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "inc(x)"              
              text t "\n"              
              td():                
                text t "increments "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t " "                
                text t "by one"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "inc(x, n)"              
              text t "\n"              
              td():                
                text t "increments "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t " "                
                text t "by "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t "; "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t " "                
                text t "is an integer"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "dec(x)"              
              text t "\n"              
              td():                
                text t "decrements "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t " "                
                text t "by one"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "dec(x, n)"              
              text t "\n"              
              td():                
                text t "decrements "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t " "                
                text t "by "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t "; "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t " "                
                text t "is an integer"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "succ(x)"              
              text t "\n"              
              td():                
                text t "returns the successor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "succ(x, n)"              
              text t "\n"              
              td():                
                text t "returns the "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t "'th successor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "pred(x)"              
              text t "\n"              
              td():                
                text t "returns the predecessor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "pred(x, n)"              
              text t "\n"              
              td():                
                text t "returns the "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t "'th predecessor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text t "\n"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "The "            
            a(class="reference external",href="system.html#inc"):              
              text t "inc"            
            text t ", "            
            a(class="reference external",href="system.html#dec"):              
              text t "dec"            
            text t ", "            
            a(class="reference external",href="system.html#succ"):              
              text t "succ"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#pred"):              
              text t "pred"            
            text t " "            
            text t "operations can fail by raising an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "EOutOfRange"            
            text t " "            
            text t "or "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "EOverflow"            
            text t " "            
            text t "exception. (If the code has been compiled with the proper runtime\nchecks turned on.)"          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-subranges",href="#advanced-types-subranges"):              
              text t "Subranges"          
          text t "\n"          
          p():            
            text t "A subrange type is a range of values from an integer or enumeration type (the base type). Example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "MySubrange"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "range"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t "]"          
          text t "\n"          
          p():            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "MySubrange"            
            text t " "            
            text t "is a subrange of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t " "            
            text t "which can only hold the values 0 to 5.\nAssigning any other value to a variable of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "MySubrange"            
            text t " "            
            text t "is a compile-time or runtime error. Assignments from the base type\nto one of its subrange types (and vice versa) are allowed."          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "system"            
            text t " "            
            text t "module defines the important "            
            a(class="reference external",href="system.html#Natural"):              
              text t "Natural"            
            text t " "            
            text t "type as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "range[0..high(int)]"            
            text t " "            
            text t "("            
            a(class="reference external",href="system.html#high"):              
              text t "high"            
            text t " "            
            text t "returns the maximal value). Other\nprogramming languages may suggest the use of unsigned integers for natural numbers. This is often\n"            
            strong():              
              text t "unwise"            
            text t ": you don\'t want unsigned arithmetic (which wraps around) just because the numbers\ncannot be negative. Nim\'s "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Natural"            
            text t " "            
            text t "type helps to\navoid this common programming error."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-sets",href="#advanced-types-sets"):              
              text t "Sets"          
          text t "The set type\nmodels the mathematical notion of a set. The set\'s basetype can only be an ordinal type of a certain size,\nnamely:"          
          ul(class="simple"):            
            text t "\n"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "int8"              
              text t "-"              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "int16"            
            text t "\n"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "uint8"              
              text t "/"              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "byte"              
              text t "-"              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "uint16"            
            text t "\n"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "char"            
            text t "\n"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "enum"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "or equivalent. For signed integers the set's base type is defined to be in the range "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "0 .. MaxSetElements-1"            
            text t " "            
            text t "where "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "MaxSetElements"            
            text t " "            
            text t "is currently always 2^16."          
          text t "\n"          
          p():            
            text t "The reason is that sets are implemented as high performance bit vectors. Attempting to declare a set with\na larger type will result in an error:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "set"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "int64"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# Error: set is too large"          
          text t "\n"          
          p():            
            text t "Sets can be constructed via the set constructor: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "{}"            
            text t " "            
            text t "is the empty set. The empty set is type compatible with any concrete set\ntype. The constructor can also be used to include elements (and ranges of elements):"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "CharSet"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "set"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "char"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "CharSet"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="CharLit"):              
              text t "'a'"            
            span(class="Operator"):              
              text t ".."            
            span(class="CharLit"):              
              text t "'z'"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="CharLit"):              
              text t "'0'"            
            span(class="Operator"):              
              text t ".."            
            span(class="CharLit"):              
              text t "'9'"            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Comment"):              
              text t "# This constructs a set that contains the"            
            text t "\n"            
            span(class="Comment"):              
              text t "# letters from 'a' to 'z' and the digits"            
            text t "\n"            
            span(class="Comment"):              
              text t "# from '0' to '9'"          
          text t "\n"          
          p():            
            text t "These operations are supported by sets:"          
          text t "\n"          
          table(class="docutils",border="1"):            
            text t "\n"            
            tr():              
              text t "\n"              
              th():                
                text t "operation"              
              text t "\n"              
              th():                
                text t "meaning"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A + B"              
              text t "\n"              
              td():                
                text t "union of two sets"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A * B"              
              text t "\n"              
              td():                
                text t "intersection of two sets"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A - B"              
              text t "\n"              
              td():                
                text t "difference of two sets (A without B's elements)"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A == B"              
              text t "\n"              
              td():                
                text t "set equality"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A "                    
                    text t "<"                    
                    text t "= B"              
              text t "\n"              
              td():                
                text t "subset relation (A is subset of B or equal to B)"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A "                    
                    text t "<"                    
                    text t " "                    
                    text t "B"              
              text t "\n"              
              td():                
                text t "strict subset relation (A is a proper subset of B)"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "e in A"              
              text t "\n"              
              td():                
                text t "set membership (A contains element e)"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "e notin A"              
              text t "\n"              
              td():                
                text t "A does not contain element e"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "contains(A, e)"              
              text t "\n"              
              td():                
                text t "A contains element e"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "card(A)"              
              text t "\n"              
              td():                
                text t "the cardinality of A (number of elements in A)"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "incl(A, elem)"              
              text t "\n"              
              td():                
                text t "same as "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A = A + {elem}"              
              text t "\n"            
            text t "\n"            
            tr():              
              text t "\n"              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "excl(A, elem)"              
              text t "\n"              
              td():                
                text t "same as "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A = A - {elem}"              
              text t "\n"            
            text t "\n"          
          text t "\n"          
          h3():            
            a(class="toc-backref",id="sets-bit-fields",href="#sets-bit-fields"):              
              text t "Bit fields"          
          text t "\n"          
          p():            
            text t "Sets are often used to define a type for the "            
            em():              
              text t "flags"            
            text t " "            
            text t "of a procedure. This is a cleaner (and type\nsafe) solution than defining integer constants that have to be "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "or"            
            text t "'ed together."          
          text t "\n"          
          p():            
            text t "Enum, sets and casting can be used together as in:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "MyFlag"            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "size"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "sizeof"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "cint"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text t "\n"            
            span(class="Identifier"):              
              text t "A"            
            text t "\n"            
            span(class="Identifier"):              
              text t "B"            
            text t "\n"            
            span(class="Identifier"):              
              text t "C"            
            text t "\n"            
            span(class="Identifier"):              
              text t "D"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "MyFlags"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "set"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "MyFlag"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "toNum"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "MyFlags"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "cast"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "cint"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "toFlags"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "v"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "MyFlags"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "cast"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "MyFlags"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "v"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "toNum"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Punctuation"):              
              text t "}"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "toNum"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Identifier"):              
              text t "A"            
            span(class="Punctuation"):              
              text t "}"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "toNum"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Identifier"):              
              text t "D"            
            span(class="Punctuation"):              
              text t "}"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "8"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "toNum"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Identifier"):              
              text t "A"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "C"            
            span(class="Punctuation"):              
              text t "}"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "toFlags"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Punctuation"):              
              text t "}"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "toFlags"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "7"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Identifier"):              
              text t "A"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "B"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "C"            
            span(class="Punctuation"):              
              text t "}"          
          text t "\n"          
          p():            
            text t "Note how the set turns enum values into powers of 2."          
          text t "\n"          
          p():            
            text t "If using enums and sets with C, use distinct cint."          
          text t "\n"          
          p():            
            text t "For interoperability with C see also the "            
            a(class="reference external",href="#implementation-specific-pragmas-bitsize-pragma"):              
              text t "bitsize pragma"            
            text t ". "          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-arrays",href="#advanced-types-arrays"):              
              text t "Arrays"          
          text t "\n"          
          p():            
            text t "An array is a simple fixed length container. Each element in an array has the same type. The array\'s\nindex type can be any ordinal type."          
          text t "\n"          
          p():            
            text t "Arrays can be constructed using "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "[]"            
            text t ":"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "IntArray"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# an array that is indexed with 0..5"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "IntArray"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "6"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "low"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Operator"):              
              text t ".."            
            span(class="Identifier"):              
              text t "high"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"          
          text t "\n"          
          p():            
            text t "The notation "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x[i]"            
            text t " "            
            text t "is used to access the i-th\nelement of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t ". Array access is always bounds\nchecked (at compile-time or at runtime). These checks can be disabled via pragmas or invoking the compiler\nwith the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "--bound_checks:off"            
            text t " "            
            text t "command line\nswitch."          
          text t "\n"          
          p():            
            text t "Arrays are value types, like any other Nim type. The assignment operator copies the whole array contents.\n"          
          text t "\n"          
          p():            
            text t "The built-in "            
            a(class="reference external",href="system.html#len,TOpenArray"):              
              text t "len"            
            text t " "            
            text t "proc returns the\narray\'s length. "            
            a(class="reference external",href="system.html#low"):              
              text t "low(a)"            
            text t " "            
            text t "returns the lowest valid\nindex for the array "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#high"):              
              text t "high(a)"            
            text t " "            
            text t "the highest valid index."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Direction"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text t "\n"            
            span(class="Identifier"):              
              text t "north"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "east"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "south"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "west"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "BlinkLights"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text t "\n"            
            span(class="Identifier"):              
              text t "off"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "on"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "slowBlink"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "mediumBlink"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "fastBlink"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "LevelSetting"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "north"            
            span(class="Operator"):              
              text t ".."            
            span(class="Identifier"):              
              text t "west"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "BlinkLights"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "LevelSetting"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "north"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "on"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "south"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "slowBlink"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "east"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "fastBlink"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t ")"            
            text t "  "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "[on, fastBlink, slowBlink, off]"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "low"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "north"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "4"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "high"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t ")"            
            text t "  "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "west"          
          text t "\n"          
          p():            
            text t "The syntax for nested arrays (multidimensional) in other languages is a matter of appending more brackets\nbecause usually each dimension is restricted to the same index type as the others. In Nim you can have\ndifferent dimensions with different index types, so the nesting syntax is slightly different. Building on\nthe previous example where a level is defined as an array of enums indexed by yet another enum, we can add\nthe following lines to add a light tower type subdivided in height levels accessed through their integer\nindex:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "LightTower"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "1."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "LevelSetting"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "tower"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "LightTower"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "tower"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "north"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "slowBlink"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "tower"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "east"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "mediumBlink"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "tower"            
            span(class="Punctuation"):              
              text t ")"            
            text t "     "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "10"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "tower"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            text t "  "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "4"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "tower"            
            span(class="Punctuation"):              
              text t ")"            
            text t "    "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "[[slowBlink, mediumBlink, ...more output.."            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# The following lines don't compile due to type mismatch errors"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#tower[north][east] = on"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#tower[0][1] = on"          
          text t "\n"          
          p():            
            text t "Note how the built-in "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "len"            
            text t " "            
            text t "proc returns only\nthe array\'s first dimension length. Another way of defining the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "LightTower"            
            text t " "            
            text t "to better illustrate its nested nature would be to omit the\nprevious definition of the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "LevelSetting"            
            text t " "            
            text t "type\nand instead write it embedded directly as the type of the first dimension:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "LightTower"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "1."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "10"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "north"            
            span(class="Operator"):              
              text t ".."            
            span(class="Identifier"):              
              text t "west"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "BlinkLights"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "]"          
          text t "\n"          
          p():            
            text t "It is quite common to have arrays start at zero, so there\'s a shortcut syntax to specify a range from\nzero to the specified index minus one:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "IntArray"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# an array that is indexed with 0..5"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "QuickArray"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "6"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            text t "  "            
            span(class="Comment"):              
              text t "# an array that is indexed with 0..5"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "IntArray"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "QuickArray"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "6"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "low"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Operator"):              
              text t ".."            
            span(class="Identifier"):              
              text t "high"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-sequences",href="#advanced-types-sequences"):              
              text t "Sequences"          
          text t "\n"          
          p():            
            text t "Sequences are similar to arrays but of dynamic length which may change during runtime (like strings).\nSince sequences are resizable they are always allocated on the heap and garbage collected."          
          text t "\n"          
          p():            
            text t "Sequences are always indexed with an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t "\n"            
            text t "starting at position 0. The "            
            a(class="reference external",href="system.html#len,seq[T]"):              
              text t "len"            
            text t ", "            
            a(class="reference external",href="system.html#low"):              
              text t "low"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#high"):              
              text t "high"            
            text t " "            
            text t "operations are available for sequences too. The notation "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x[i]"            
            text t " "            
            text t "can be used to access the i-th element of\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t "."          
          text t "\n"          
          p():            
            text t "Sequences can be constructed by the array constructor "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "[]"            
            text t " "            
            text t "in conjunction with the array to sequence operator "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "@"            
            text t ". Another way to allocate space for a sequence\nis to call the built-in "            
            a(class="reference external",href="system.html#newSeq"):              
              text t "newSeq"            
            text t " "            
            text t "procedure."          
          text t "\n"          
          p():            
            text t "A sequence may be passed to an openarray parameter."          
          text t "\n"          
          p():            
            text t "Example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "seq"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# a reference to a sequence of integers"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "6"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# the @ turns the array into a sequence allocated on the heap"          
          text t "\n"          
          p():            
            text t "Sequence variables are initialized with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "@[]"            
            text t ".\n"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text t "statement can be used with one or two\nvariables when used with a sequence. When you use the one variable form, the variable will hold the value\nprovided by the sequence. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text t "statement is\nlooping over the results from the "            
            a(class="reference external",href="system.html#items.i,seq[T]"):              
              text t "items()"            
            text t " "            
            text t "iterator from the "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text t "module. But if you use the two variable form, the first variable will hold\nthe index position and the second variable will hold the value. Here the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text t "statement is looping over the results from\nthe "            
            a(class="reference external",href="system.html#pairs.i,seq[T]"):              
              text t "pairs()"            
            text t " "            
            text t "iterator from the "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text t "module. Examples:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "3"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "4"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "5"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "index: "              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t ", value:"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "value"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "index: 0, value:3"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "index: 1, value:4"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "index: 2, value:5"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-open-arrays",href="#advanced-types-open-arrays"):              
              text t "Open\narrays"          
          text t "\n"          
          p():            
            strong():              
              text t "Note"            
            text t ": Openarrays can only be used for parameters."          
          text t "\n"          
          p():            
            text t "Often fixed size arrays turn out to be too inflexible; procedures should be able to deal with arrays of\ndifferent sizes. The "            
            span(id="openarray_1"):              
              text t "openarray"            
            text t " "            
            text t "type allows this. Openarrays are always\nindexed with an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t " "            
            text t "starting at position 0. The\n"            
            a(class="reference external",href="system.html#len,TOpenArray"):              
              text t "len"            
            text t ", "            
            a(class="reference external",href="system.html#low"):              
              text t "low"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#high"):              
              text t "high"            
            text t "\n"            
            text t "operations are available for open arrays too. Any array with a compatible base type can be passed to an\nopenarray parameter, the index type does not matter."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "fruits"            
            span(class="Punctuation"):              
              text t ":"            
            text t "   "            
            span(class="Identifier"):              
              text t "seq"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t "]"            
            text t "       "            
            span(class="Comment"):              
              text t "# reference to a sequence of strings that is initialized with '@[]'"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "capitals"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "array"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t "]"            
            text t "  "            
            span(class="Comment"):              
              text t "# array of strings with a fixed size"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "capitals"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="StringLit"):              
              text t "\""              
              text t "New York"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "London"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Berlin"              
              text t "\""            
            span(class="Punctuation"):              
              text t "]"            
            text t "   "            
            span(class="Comment"):              
              text t "# array 'capitals' allows assignment of only three elements"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "fruits"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "Banana"              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "          "            
            span(class="Comment"):              
              text t "# sequence 'fruits' is dynamically expandable during runtime"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "fruits"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "Mango"              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "openArraySize"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "oa"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "openArray"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "oa"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "openArraySize"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "fruits"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            text t "     "            
            span(class="Comment"):              
              text t "# procedure accepts a sequence as parameter"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            text t " "            
            span(class="Identifier"):              
              text t "openArraySize"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "capitals"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            text t "   "            
            span(class="Comment"):              
              text t "# but also an array type"          
          text t "\n"          
          p():            
            text t "The openarray type cannot be nested: multidimensional openarrays are not supported because this is seldom\nneeded and cannot be done efficiently."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-varargs",href="#advanced-types-varargs"):              
              text t "Varargs"          
          text t "\n"          
          p():            
            text t "A "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "varargs"            
            text t " "            
            text t "parameter is like an openarray\nparameter. However, it is also a means to implement passing a variable number of arguments to a procedure.\nThe compiler converts the list of arguments to an array automatically:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "myWriteln"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "File"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "varargs"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "items"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""            
            span(class="EscapeSequence"):              
              text t "\\n"            
            span(class="StringLit"):              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "myWriteln"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "abc"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "def"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "xyz"              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# is transformed by the compiler to:"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "myWriteln"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="StringLit"):              
              text t "\""              
              text t "abc"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "def"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "xyz"              
              text t "\""            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "This transformation is only done if the varargs parameter is the last parameter in the procedure header.\nIt is also possible to perform type conversions in this context:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "myWriteln"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "File"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "varargs"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "$"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "items"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""            
            span(class="EscapeSequence"):              
              text t "\\n"            
            span(class="StringLit"):              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "myWriteln"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "123"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "abc"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="FloatNumber"):              
              text t "4.0"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# is transformed by the compiler to:"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "myWriteln"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="Operator"):              
              text t "$"            
            span(class="DecNumber"):              
              text t "123"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="StringLit"):              
              text t "\""              
              text t "abc"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="FloatNumber"):              
              text t "4.0"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "In this example "            
            a(class="reference external",href="system.html#$"):              
              text t "$"            
            text t " "            
            text t "is applied to any argument that\nis passed to the parameter "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a"            
            text t ". Note that "            
            a(class="reference external",href="system.html#$"):              
              text t "$"            
            text t " "            
            text t "applied to strings is a nop."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-slices",href="#advanced-types-slices"):              
              text t "Slices"          
          text t "\n"          
          p():            
            text t "Slices look similar to subranges types in syntax but are used in a different context. A slice is just an\nobject of type Slice which contains two bounds, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b"            
            text t ". By itself\na slice is not very useful, but other collection types define operators which accept Slice objects to\ndefine ranges."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Nim is a progamming language"              
              text t "\""            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "b"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Slices are useless."              
              text t "\""            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "7."            
            span(class="Operator"):              
              text t "."            
            span(class="DecNumber"):              
              text t "12"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "'a prog'"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "11."            
            span(class="Operator"):              
              text t ".^"            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "useful"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t " "            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "'Slices are useful.'"          
          text t "\n"          
          p():            
            text t "In the previous example slices are used to modify a part of a string. The slice\'s bounds can hold any\nvalue supported by their type, but it is the proc using the slice object which defines what values are\naccepted."          
          text t "\n"          
          p():            
            text t "To understand some of the different ways of specifying the indices of strings, arrays, sequences, etc.,\nit must be remembered that Nim uses zero-based indices."          
          text t "\n"          
          p():            
            text t "So the string "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b"            
            text t " "            
            text t "is of length 19, and two\ndifferent ways of specifying the indices are"          
          text t "\n"          
          pre(class="listing"):            
            span(class="StringLit"):              
              text t "\""              
              text t "Slices are useless."              
              text t "\""            
            text t "\x0A "            
            span(class="Operator"):              
              text t "|"            
            text t "          "            
            span(class="Operator"):              
              text t "|"            
            text t "     "            
            span(class="Operator"):              
              text t "|"            
            text t "\x0A "            
            span(class="DecNumber"):              
              text t "0"            
            text t "         "            
            span(class="DecNumber"):              
              text t "11"            
            text t "    "            
            span(class="DecNumber"):              
              text t "17"            
            text t "   "            
            span(class="Keyword"):              
              text t "using"            
            text t " "            
            span(class="Identifier"):              
              text t "indices"            
            text t "\x0A"            
            span(class="Operator"):              
              text t "^"            
            span(class="DecNumber"):              
              text t "19"            
            text t "        "            
            span(class="Operator"):              
              text t "^"            
            span(class="DecNumber"):              
              text t "8"            
            text t "    "            
            span(class="Operator"):              
              text t "^"            
            span(class="DecNumber"):              
              text t "2"            
            text t "   "            
            span(class="Keyword"):              
              text t "using"            
            text t " "            
            span(class="Operator"):              
              text t "^"            
            text t " "            
            span(class="Identifier"):              
              text t "syntax"          
          text t "\n"          
          p():            
            text t "where "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[0..^1]"            
            text t " "            
            text t "is equivalent to "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[0..b.len-1]"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[0.."                
                text t "<"                
                text t "b.len]"            
            text t ", and it can be seen that the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "^1"            
            text t " "            
            text t "provides a short-hand way of specifying the\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b.len-1"            
            text t "."          
          text t "\n"          
          p():            
            text t "In the above example, because the string ends in a period, to get the portion of the string that is\n"            
            text t "\""            
            text t "useless"            
            text t "\""            
            text t " "            
            text t "and replace it with "            
            text t "\""            
            text t "useful"            
            text t "\""            
            text t "."          
          text t "\n"          
          p():            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[11..^2]"            
            text t " "            
            text t "is the portion "            
            text t "\""            
            text t "useless"            
            text t "\""            
            text t ",\nand "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[11..^2] = "                
                text t "\""                
                text t "useful"                
                text t "\""            
            text t " "            
            text t "replaces the\n"            
            text t "\""            
            text t "useless"            
            text t "\""            
            text t " "            
            text t "portion with "            
            text t "\""            
            text t "useful"            
            text t "\""            
            text t ", giving the result "            
            text t "\""            
            text t "Slices are useful."            
            text t "\""          
          text t "\n"          
          p():            
            text t "Note: alternate ways of writing this are "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[^8..^2] =\n"                
                text t "\""                
                text t "useful"                
                text t "\""            
            text t " "            
            text t "or as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[11..b.len-2] =\n"                
                text t "\""                
                text t "useful"                
                text t "\""            
            text t " "            
            text t "or as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[11.."                
                text t "<"                
                text t "b.len-1]\n= "                
                text t "\""                
                text t "useful"                
                text t "\""            
            text t "."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-objects",href="#advanced-types-objects"):              
              text t "Objects"          
          text t "\n"          
          p():            
            text t "The default type to pack different values together in a single structure with a name is the object type.\nAn object is a value type, which means that when an object is assigned to a new variable all its\ncomponents are copied as well."          
          text t "\n"          
          p():            
            text t "Each object type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Foo"            
            text t " "            
            text t "has a constructor "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Foo(field: value, ...)"            
            text t " "            
            text t "where all of its fields\ncan be initialized. Unspecified fields will get their default value."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t "\n"            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t "\n"            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "person1"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Peter"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="DecNumber"):              
              text t "30"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person1"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Comment"):              
              text t "# "              
              text t "\""              
              text t "Peter"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person1"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "age"            
            text t "  "            
            span(class="Comment"):              
              text t "# 30"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "person2"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "person1"            
            text t " "            
            span(class="Comment"):              
              text t "# copy of person 1"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "person2"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "age"            
            text t " "            
            span(class="Operator"):              
              text t "+="            
            text t " "            
            span(class="DecNumber"):              
              text t "14"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person1"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "age"            
            text t " "            
            span(class="Comment"):              
              text t "# 30"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person2"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "age"            
            text t " "            
            span(class="Comment"):              
              text t "# 44"            
            text t "\x0A\x0A\x0A"            
            span(class="Comment"):              
              text t "# the order may be changed"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "person3"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="DecNumber"):              
              text t "12"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Quentin"              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# not every member needs to be specified"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "person4"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# unspecified members will be initialized with their default"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# values. In this case it is the empty string."            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "doAssert"            
            text t " "            
            span(class="Identifier"):              
              text t "person4"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "\""          
          text t "\n"          
          p():            
            text t "Object fields that should be visible from outside the defining module have to be marked with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "*"            
            text t "."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Person"            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Comment"):              
              text t "# the type is visible from other modules"            
            text t "\n"            
            span(class="Identifier"):              
              text t "name"            
            span(class="Operator"):              
              text t "*:"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t "  "            
            span(class="Comment"):              
              text t "# the field of this type is visible from other modules"            
            text t "\n"            
            span(class="Identifier"):              
              text t "age"            
            span(class="Operator"):              
              text t "*:"            
            text t " "            
            span(class="Identifier"):              
              text t "int"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-tuples",href="#advanced-types-tuples"):              
              text t "Tuples"          
          text t "\n"          
          p():            
            text t "Tuples are very much like what you have seen so far from objects. They are value types where the\nassignment operator copies each component. Unlike object types though, tuple types are structurally typed,\nmeaning different tuple-types are "            
            em():              
              text t "equivalent"            
            text t " "            
            text t "if they specify fields of the same type and of the\nsame name in the same order."          
          text t "\n"          
          p():            
            text t "The constructor "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "()"            
            text t " "            
            text t "can be used to construct\ntuples. The order of the fields in the constructor must match the order in the tuple\'s definition. But\nunlike objects, a name for the tuple type may not be used here."          
          text t "\n"          
          p():            
            text t "Like the object type the notation "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "t.field"            
            text t " "            
            text t "is\nused to access a tuple\'s field. Another notation that is not available for objects is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "t[i]"            
            text t " "            
            text t "to access the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "i"            
            text t "'th field. Here "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "i"            
            text t " "            
            text t "must be a constant integer."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# type representing a person:"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# A person consists of a name and an age."            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "tuple"            
            text t "\n"            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t "\n"            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A  \x0A  "            
            span(class="Comment"):              
              text t "# Alternative syntax for an equivalent type."            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "PersonX"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "tuple"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A  \x0A  "            
            span(class="Comment"):              
              text t "# anonymous field syntax"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "PersonY"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "person"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "personX"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "PersonX"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "personY"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "PersonY"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "Peter"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="DecNumber"):              
              text t "30"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# Person and PersonX are equivalent"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "personX"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# Create a tuple with anonymous fields:"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "personY"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "Peter"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "30"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# A tuple with anonymous fields is compatible with a tuple that has"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# field names."            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "personY"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "personY"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# Usually used for short tuple initialization syntax"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "Peter"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "30"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "name"            
            text t " "            
            span(class="Comment"):              
              text t "# "              
              text t "\""              
              text t "Peter"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "age"            
            text t "  "            
            span(class="Comment"):              
              text t "# 30"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# "              
              text t "\""              
              text t "Peter"              
              text t "\""            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# 30"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# You don't need to declare tuples in a separate type section."            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "building"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "tuple"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "street"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "number"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "building"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "Rue del Percebe"              
              text t "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "13"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "building"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "street"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# The following line does not compile, they are different tuples!"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#person = building"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Error: type mismatch: got (tuple[street: string, number: int])"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "#     but expected 'Person'"          
          text t "\n"          
          p():            
            text t "Even though you don\'t need to declare a type for a tuple to use it, tuples created with different field\nnames will be considered different objects despite having the same field types."          
          text t "\n"          
          p():            
            text t "Tuples can be "            
            em():              
              text t "unpacked"            
            text t " "            
            text t "during variable assignment (and only then!). This can be handy to assign\ndirectly the fields of the tuples to individually named variables. An example of this is the "            
            a(class="reference external",href="os.html#splitFile"):              
              text t "splitFile"            
            text t " "            
            text t "proc from the "            
            a(class="reference external",href="os.html"):              
              text t "os module"            
            text t " "            
            text t "which returns the directory, name and extension\nof a path at the same time. For tuple unpacking to work you must use parentheses around the values you\nwant to assign the unpacking to, otherwise you will be assigning the same value to all the individual\nvariables! For example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "os"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "path"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\""              
              text t "usr/local/nimc.html"              
              text t "\""            
            text t "\x0A  "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "dir"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "ext"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "splitFile"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "path"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "baddir"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "badname"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "badext"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "splitFile"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "path"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "dir"            
            text t "      "            
            span(class="Comment"):              
              text t "# outputs `usr/local`"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t "     "            
            span(class="Comment"):              
              text t "# outputs `nimc`"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "ext"            
            text t "      "            
            span(class="Comment"):              
              text t "# outputs `.html`"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# All the following output the same line:"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# `(dir: usr/local, name: nimc, ext: .html)`"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "baddir"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "badname"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "badext"          
          text t "\n"          
          p():            
            text t "Fields of tuples are always public, they don\'t need to be explicity marked to be exported, unlike for\nexample fields in an object type."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-reference-and-pointer-types",href="#advanced-types-reference-and-pointer-types"):              
              text t "Reference and pointer types"          
          text t "\n"          
          p():            
            text t "References (similar to pointers in other programming languages) are a way to introduce many-to-one\nrelationships. This means different references can point to and modify the same location in memory."          
          text t "\n"          
          p():            
            text t "Nim distinguishes between "            
            span(id="traced_1"):              
              text t "traced"            
            text t " "            
            text t "and "            
            span(id="untraced_1"):              
              text t "untraced"            
            text t "\n"            
            text t "references. Untraced references are also called "            
            em():              
              text t "pointers"            
            text t ". Traced references point to objects in a\ngarbage collected heap, untraced references point to manually allocated objects or to objects elsewhere in\nmemory. Thus untraced references are "            
            em():              
              text t "unsafe"            
            text t ". However for certain low-level operations (e.g.,\naccessing the hardware), untraced references are necessary."          
          text t "\n"          
          p():            
            text t "Traced references are declared with the "            
            strong():              
              text t "ref"            
            text t " "            
            text t "keyword; untraced references are declared\nwith the "            
            strong():              
              text t "ptr"            
            text t " "            
            text t "keyword."          
          text t "\n"          
          p():            
            text t "The empty "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "[]"            
            text t " "            
            text t "subscript notation can be used to\n"            
            em():              
              text t "derefer"            
            text t " "            
            text t "a reference, meaning to retrieve the item the reference points to. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "."            
            text t " "            
            text t "(access a tuple/object field operator) and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "[]"            
            text t " "            
            text t "(array/string/sequence index operator)\noperators perform implicit dereferencing operations for reference types:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Node"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t "\n"            
            span(class="Identifier"):              
              text t "le"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "ri"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Node"            
            text t "\n"            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Node"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "new"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "data"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "9"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# no need to write n[].data; in fact n[].data is highly discouraged!"          
          text t "\n"          
          p():            
            text t "To allocate a new traced object, the built-in procedure "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "new"            
            text t " "            
            text t "must be used. To deal with untraced memory, the procedures "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "alloc"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "dealloc"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "realloc"            
            text t "\n"            
            text t "can be used. The "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text t "module\'s documentation\ncontains further details."          
          text t "\n"          
          p():            
            text t "If a reference points to "            
            em():              
              text t "nothing"            
            text t ", it has the value "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "nil"            
            text t "."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-procedural-type",href="#advanced-types-procedural-type"):              
              text t "Procedural type"          
          text t "\n"          
          p():            
            text t "A procedural type is a (somewhat abstract) pointer to a procedure. "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "nil"            
            text t " "            
            text t "is an allowed value for a variable of a procedural type. Nim uses\nprocedural types to achieve "            
            span(id="functional_1"):              
              text t "functional"            
            text t " "            
            text t "programming techniques."          
          text t "\n"          
          p():            
            text t "Example:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "echoItem"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "forEach"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "action"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "const"            
            text t "\n"            
            span(class="Identifier"):              
              text t "data"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "7"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "11"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "d"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "items"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\n"            
            span(class="Identifier"):              
              text t "action"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "d"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "forEach"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "echoItem"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "A subtle issue with procedural types is that the calling convention of the procedure influences the type\ncompatibility: procedural types are only compatible if they have the same calling convention. The\ndifferent calling conventions are listed in the "            
            a(class="reference external",href="manual.html#types-procedural-type"):              
              text t "manual"            
            text t "."          
          text t "\x0A\n"          
          h2():            
            a(class="toc-backref",id="advanced-types-distinct-type",href="#advanced-types-distinct-type"):              
              text t "Distinct\ntype"          
          text t "\n"          
          p():            
            text t "A Distinct type allows for the creation of new type that "            
            text t "\""            
            text t "does not imply a subtype relationship\nbetween it and its base type"            
            text t "\""            
            text t ". You must "            
            strong():              
              text t "explicitly"            
            text t " "            
            text t "define all behaviour for the\ndistinct type. To help with this, both the distinct type and its base type can cast from one type to the\nother. Examples are provided in the "            
            a(class="reference external",href="manual.html#types-distinct-type"):              
              text t "manual"            
            text t "."          
          text t "\x0A\n"          
          h1():            
            a(class="toc-backref",id="modules",href="#modules"):              
              text t "Modules"          
          text t "\n"          
          p():            
            text t "Nim supports splitting a program into pieces with a module concept. Each module is in its own file.\nModules enable "            
            span(id="information-hiding_1"):              
              text t "information hiding"            
            text t " "            
            text t "and "            
            span(id="separate-compilation_1"):              
              text t "separate compilation"            
            text t ". A module may gain access to the symbols of\nanother module by using the "            
            span(id="import_1"):              
              text t "import"            
            text t " "            
            text t "statement. Only top-level symbols that are\nmarked with an asterisk ("            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "*"            
            text t ") are exported:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module A"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "`"            
            text t " "            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "seq"            
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
              text t "seq"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# allocate a new sequence:"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "newSeq"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "result"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# multiply two int sequences:"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="FloatNumber"):              
              text t "0."            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Operator"):              
              text t "-"            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "result"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "when"            
            text t " "            
            span(class="Identifier"):              
              text t "isMainModule"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# test the new ``*`` operator for sequences:"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "assert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "9"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"          
          text t "\n"          
          p():            
            text t "The above module exports "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "*"            
            text t ", but not "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "y"            
            text t "."          
          text t "\n"          
          p():            
            text t "A module\'s top-level statements are executed at the start of the program. This can be used to initialize\ncomplex data structures for example."          
          text t "\n"          
          p():            
            text t "Each module has a special magic constant "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "isMainModule"            
            text t " "            
            text t "that is true if the module is compiled as the main file. This is\nvery useful to embed tests within the module as shown by the above example."          
          text t "\n"          
          p():            
            text t "A symbol of a module "            
            em():              
              text t "can"            
            text t " "            
            text t "be "            
            em():              
              text t "qualified"            
            text t " "            
            text t "with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "module.symbol"            
            text t " "            
            text t "syntax. And if a symbol is ambiguous, it "            
            em():              
              text t "must"            
            text t " "            
            text t "be\nqualified. A symbol is ambiguous if it is defined in two (or more) different modules and both modules are\nimported by a third one:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module A"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Operator"):              
              text t "*:"            
            text t " "            
            span(class="Identifier"):              
              text t "string"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module B"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Operator"):              
              text t "*:"            
            text t " "            
            span(class="Identifier"):              
              text t "int"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module C"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "A"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "B"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# error: x is ambiguous"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "A"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# okay: qualifier used"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "4"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# not ambiguous: uses the module C's x"          
          text t "\n"          
          p():            
            text t "But this rule does not apply to procedures or iterators. Here the overloading rules apply:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module A"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "a"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module B"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "a"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module C"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "A"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "B"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# no error: A.x is called"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\""              
              text t "\""            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "  "            
            span(class="Comment"):              
              text t "# no error: B.x is called"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "discard"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "3"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# ambiguous: which `x` is to call?"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="modules-excluding-symbols",href="#modules-excluding-symbols"):              
              text t "Excluding\nsymbols"          
          text t "\n"          
          p():            
            text t "The normal "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "import"            
            text t " "            
            text t "statement will bring in all\nexported symbols. These can be limited by naming symbols which should be excluded with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "except"            
            text t " "            
            text t "qualifier."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "mymodule"            
            text t " "            
            span(class="Keyword"):              
              text t "except"            
            text t " "            
            span(class="Identifier"):              
              text t "y"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="modules-from-statement",href="#modules-from-statement"):              
              text t "From statement"            
            text t "\n"          
          text t "\n"          
          p():            
            text t "We have already seen the simple "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "import"            
            text t "\n"            
            text t "statement that just imports all exported symbols. An alternative that only imports listed symbols is the\n"            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "from import"            
            text t " "            
            text t "statement:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "from"            
            text t " "            
            span(class="Identifier"):              
              text t "mymodule"            
            text t " "            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "z"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "from"            
            text t " "            
            text t "statement can also force namespace\nqualification on symbols, thereby making symbols available, but needing to be qualified to be used."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "from"            
            text t " "            
            span(class="Identifier"):              
              text t "mymodule"            
            text t " "            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "z"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "           "            
            span(class="Comment"):              
              text t "# use x without any qualification"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "from"            
            text t " "            
            span(class="Identifier"):              
              text t "mymodule"            
            text t " "            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "mymodule"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "  "            
            span(class="Comment"):              
              text t "# must qualify x with the module name as prefix"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "           "            
            span(class="Comment"):              
              text t "# using x here without qualification is a compile error"          
          text t "\n"          
          p():            
            text t "Since module names are generally long to be descriptive, you can also define a shorter alias to use when\nqualifying symbols."          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "from"            
            text t " "            
            span(class="Identifier"):              
              text t "mymodule"            
            text t " "            
            span(class="Keyword"):              
              text t "as"            
            text t " "            
            span(class="Identifier"):              
              text t "m"            
            text t " "            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "m"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "         "            
            span(class="Comment"):              
              text t "# m is aliasing mymodule"          
          text t "\n"          
          h2():            
            a(class="toc-backref",id="modules-include-statement",href="#modules-include-statement"):              
              text t "Include\nstatement"          
          text t "\n"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "include"            
            text t " "            
            text t "statement does something\nfundamentally different than importing a module: it merely includes the contents of a file. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "include"            
            text t " "            
            text t "statement is useful to split up a large\nmodule into several files:"          
          text t "\n"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "include"            
            text t " "            
            span(class="Identifier"):              
              text t "fileA"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "fileB"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "fileC"          
          text t "\n"          
          h1():            
            a(class="toc-backref",id="part-2",href="#part-2"):              
              text t "Part 2"          
          text t "\n"          
          p():            
            text t "So, now that we are done with the basics, let\'s see what Nim offers apart from a nice syntax for\nprocedural programming: "            
            a(class="reference external",href="tut2.html"):              
              text t "Part II"          
          text t "\n"        
        text t "\n"      
      text t "\x0A\n"      
      tdiv(class="row"):        
        text t "\n"        
        tdiv(class="twelve-columns footer"):          
          text t "\n"          
          text t "\n"          
          text t "\n"          
          small():            
            text t "Made with Nim. Generated: 2019-10-15 09:46:56 UTC"          
          text t "\n"        
        text t "\n"      
      text t "\n"    
    text t "\x0A  "
    tdiv(style="position:absolute;right:0;top:5%;"):
      a(onclick = zhCN):span: text "Chinese |"
      a(onclick = enUS):span: text " English"  
  
setRenderer createDom
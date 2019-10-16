import karax/[karaxdsl,vdom, karax, vstyles]
import translations

proc createDom():VNode = 
  buildHtml tdiv(class="document",id="documentId"):    
    text "\x0A    "    
    tdiv(class="container"):      
      text "\x0A      "      
      h1(class="title"):        
        text t "Nim Tutorial (Part I)"      
      text "\x0A      "      
      tdiv(class="row"):        
        text "\x0A        "        
        tdiv(class="three columns"):          
          text "\x0A          "          
          tdiv(id="global-links"):            
            text "\x0A            "            
            ul(class="simple-boot"):              
              text "\x0A              "              
              li():                
                text "\x0A                "                
                a(href="manual.html"):                  
                  text t "Manual"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                text "\x0A                "                
                a(href="lib.html"):                  
                  text t "Standard library"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                text "\x0A                "                
                a(href="theindex.html"):                  
                  text t "Index"                
                text "\x0A              "              
              text "\x0A            "            
            text "\x0A          "          
          text "\x0A          "          
          tdiv(id="searchInputDiv"):            
            text "\x0A            "            
            text t "Search: "            
            text "\x0A          "          
          text "\x0A          "          
          ul(class="simple simple-toc",id="toc-list"):            
            text "\x0A            "            
            li():              
              a(class="reference",id="introduction_toc",href="#introduction"):                
                text t "Introduction"            
            text "\x0A            "            
            li():              
              a(class="reference",id="the-first-program_toc",href="#the-first-program"):                
                text t "The first program"            
            text "\x0A            "            
            li():              
              a(class="reference",id="lexical-elements_toc",href="#lexical-elements"):                
                text t "Lexical elements"            
            text "\x0A            "            
            ul(class="simple"):              
              text "\x0A              "              
              li():                
                a(class="reference",id="lexical-elements-string-and-character-literals_toc",href="#lexical-elements-string-and-character-literals"):                  
                  text t "String and character literals"              
              text "\x0A              "              
              li():                
                a(class="reference",id="lexical-elements-comments_toc",href="#lexical-elements-comments"):                  
                  text t "Comments"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                a(class="reference",id="lexical-elements-numbers_toc",href="#lexical-elements-numbers"):                  
                  text t "Numbers"                
                text "\x0A              "              
              text "\x0A            "            
            text "\x0A            "            
            li():              
              a(class="reference",id="the-var-statement_toc",href="#the-var-statement"):                
                text t "The var statement"            
            text "\x0A            "            
            li():              
              a(class="reference",id="the-assignment-statement_toc",href="#the-assignment-statement"):                
                text "The assignment statement"            
            text "\x0A            "            
            li():              
              a(class="reference",id="constants_toc",href="#constants"):                
                text t "Constants"            
            text "\x0A            "            
            li():              
              a(class="reference",id="the-let-statement_toc",href="#the-let-statement"):                
                text t "The let statement"            
            text "\x0A            "            
            li():              
              a(class="reference",id="control-flow-statements_toc",href="#control-flow-statements"):                
                text "Control flow statements"            
            text "\x0A            "            
            ul(class="simple"):              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-if-statement_toc",href="#control-flow-statements-if-statement"):                  
                  text t "If statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-case-statement_toc",href="#control-flow-statements-case-statement"):                  
                  text t "Case statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-while-statement_toc",href="#control-flow-statements-while-statement"):                  
                  text t "While statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-for-statement_toc",href="#control-flow-statements-for-statement"):                  
                  text t "For statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-scopes-and-the-block-statement_toc",href="#control-flow-statements-scopes-and-the-block-statement"):                  
                  text t "Scopes and the block statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-break-statement_toc",href="#control-flow-statements-break-statement"):                  
                  text t "Break statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-continue-statement_toc",href="#control-flow-statements-continue-statement"):                  
                  text t "Continue statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="control-flow-statements-when-statement_toc",href="#control-flow-statements-when-statement"):                  
                  text t "When statement"              
              text "\x0A            "            
            text "\x0A            "            
            li():              
              a(class="reference",id="statements-and-indentation_toc",href="#statements-and-indentation"):                
                text "Statements and indentation"            
            text "\x0A            "            
            li():              
              a(class="reference",id="procedures_toc",href="#procedures"):                
                text t "Procedures"            
            text "\x0A            "            
            ul(class="simple"):              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-result-variable_toc",href="#procedures-result-variable"):                  
                  text "Result variable"              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-parameters_toc",href="#procedures-parameters"):                  
                  text t "Parameters"              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-discard-statement_toc",href="#procedures-discard-statement"):                  
                  text t "Discard statement"              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-named-arguments_toc",href="#procedures-named-arguments"):                  
                  text "Named arguments"              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-default-values_toc",href="#procedures-default-values"):                  
                  text "Default values"              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-overloaded-procedures_toc",href="#procedures-overloaded-procedures"):                  
                  text t "Overloaded procedures"              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-operators_toc",href="#procedures-operators"):                  
                  text t "Operators"              
              text "\x0A              "              
              li():                
                a(class="reference",id="procedures-forward-declarations_toc",href="#procedures-forward-declarations"):                  
                  text t "Forward declarations"              
              text "\x0A            "            
            text "\x0A            "            
            li():              
              a(class="reference",id="iterators_toc",href="#iterators"):                
                text t "Iterators"            
            text "\x0A            "            
            li():              
              a(class="reference",id="basic-types_toc",href="#basic-types"):                
                text t "Basic types"            
            text "\x0A            "            
            ul(class="simple"):              
              text "\x0A              "              
              li():                
                a(class="reference",id="basic-types-booleans_toc",href="#basic-types-booleans"):                  
                  text t "Booleans"              
              text "\x0A              "              
              li():                
                a(class="reference",id="basic-types-characters_toc",href="#basic-types-characters"):                  
                  text t "Characters"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                a(class="reference",id="basic-types-strings_toc",href="#basic-types-strings"):                  
                  text t "Strings"              
              text "\x0A              "              
              li():                
                a(class="reference",id="basic-types-integers_toc",href="#basic-types-integers"):                  
                  text t "Integers"              
              text "\x0A              "              
              li():                
                a(class="reference",id="basic-types-floats_toc",href="#basic-types-floats"):                  
                  text t "Floats"              
              text "\x0A              "              
              li():                
                a(class="reference",id="basic-types-type-conversion_toc",href="#basic-types-type-conversion"):                  
                  text "Type Conversion"              
              text "\x0A            "            
            text "\x0A            "            
            li():              
              a(class="reference",id="internal-type-representation_toc",href="#internal-type-representation"):                
                text "Internal type representation"            
            text "\x0A            "            
            li():              
              a(class="reference",id="advanced-types_toc",href="#advanced-types"):                
                text t "Advanced types"            
            text "\x0A            "            
            ul(class="simple"):              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-enumerations_toc",href="#advanced-types-enumerations"):                  
                  text t "Enumerations"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-ordinal-types_toc",href="#advanced-types-ordinal-types"):                  
                  text t "Ordinal types"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-subranges_toc",href="#advanced-types-subranges"):                  
                  text t "Subranges"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-sets_toc",href="#advanced-types-sets"):                  
                  text t "Sets"              
              text "\x0A              "              
              ul(class="simple"):                
                text "\x0A                "                
                li():                  
                  a(class="reference",id="sets-bit-fields_toc",href="#sets-bit-fields"):                    
                    text t "Bit fields"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-arrays_toc",href="#advanced-types-arrays"):                  
                  text t "Arrays"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-sequences_toc",href="#advanced-types-sequences"):                  
                  text t "Sequences"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-open-arrays_toc",href="#advanced-types-open-arrays"):                  
                  text "Open arrays"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-varargs_toc",href="#advanced-types-varargs"):                  
                  text t "Varargs"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-slices_toc",href="#advanced-types-slices"):                  
                  text t "Slices"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-objects_toc",href="#advanced-types-objects"):                  
                  text t "Objects"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-tuples_toc",href="#advanced-types-tuples"):                  
                  text t "Tuples"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-reference-and-pointer-types_toc",href="#advanced-types-reference-and-pointer-types"):                  
                  text t "Reference and pointer types"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-procedural-type_toc",href="#advanced-types-procedural-type"):                  
                  text t "Procedural type"              
              text "\x0A              "              
              li():                
                a(class="reference",id="advanced-types-distinct-type_toc",href="#advanced-types-distinct-type"):                  
                  text t "Distinct type"              
              text "\x0A            "            
            text "\x0A            "            
            li():              
              a(class="reference",id="modules_toc",href="#modules"):                
                text t "Modules"            
            text "\x0A            "            
            ul(class="simple"):              
              text "\x0A              "              
              li():                
                a(class="reference",id="modules-excluding-symbols_toc",href="#modules-excluding-symbols"):                  
                  text "Excluding symbols"              
              text "\x0A              "              
              li():                
                a(class="reference",id="modules-from-statement_toc",href="#modules-from-statement"):                  
                  text t "From statement"                
                text "\x0A              "              
              text "\x0A              "              
              li():                
                a(class="reference",id="modules-include-statement_toc",href="#modules-include-statement"):                  
                  text "Include statement"              
              text "\x0A            "            
            text "\x0A            "            
            li():              
              a(class="reference",id="part-2_toc",href="#part-2"):                
                text t "Part 2"            
            text "\x0A\x0A          "          
          text "\x0A\x0A        "        
        text "\x0A        "        
        tdiv(class="nine columns",id="content"):          
          text "\x0A          "          
          text "\x0A\x0A          "          
          p(class="module-desc"):            
            text "\x0A            "            
            table(frame="void",rules="none",class="docinfo"):              
              text "\x0A              "              
              text "\x0A              "              
              text "\x0A              "              
              tbody(valign="top"):                
                text "\x0A                "                
                tr():                  
                  text "\x0A                  "                  
                  th(class="docinfo-name"):                    
                    text t "Author:"                  
                  text "\x0A                  "                  
                  td():                    
                    text t " "                    
                    text t "Andreas Rumpf"                  
                  text "\x0A                "                
                text "\x0A                "                
                tr():                  
                  text "\x0A                  "                  
                  th(class="docinfo-name"):                    
                    text t "Version:"                  
                  text "\x0A                  "                  
                  td():                    
                    text t " "                    
                    text t "|nimversion|"                  
                  text "\x0A                "                
                text "\x0A              "              
              text "\x0A            "            
            text "\x0A            "            
            h1():              
              a(class="toc-backref",id="introduction",href="#introduction"):                
                text t "Introduction"            
            text "\x0A            "            
            blockquote():              
              text "\x0A              "              
              p():                
                text "\x0A                "                
                text "\"Der Mensch ist doch ein Augentier -- sch"                
                text t "&ouml"                
                text t "ne Dinge w"                
                text t "&uuml"                
                text "nsch ich mir.\" "              
              text "\x0A            "            
            text "\x0A            "          
          p():            
            text t "This document is a tutorial for the programming language "            
            em():              
              text t "Nim"            
            text ". This tutorial assumes that you are familiar with basic programming concepts like variables, types or statements but is kept very basic. The "            
            a(class="reference external",href="manual.html"):              
              text t "manual"            
            text t " "            
            text "contains many more examples of the advanced language features. All code examples in this tutorial, as well as the ones found in the rest of Nim\'s documentation, follow the "            
            a(class="reference external",href="nep1.html"):              
              text t "Nim style guide"            
            text t "."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="the-first-program",href="#the-first-program"):              
              text t "The first program"          
          text "\x0A            "          
          p():            
            text t "We start the tour with a modified "            
            text "\""            
            text t "hello world"            
            text "\""            
            text t " "            
            text t "program:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# This is a comment"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "What's your name? "              
              text "\""            
            text "\x0A"            
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Hi, "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "!"              
              text "\""          
          text "\x0A            "          
          p():            
            text t "Save this code to the file "            
            text "\""            
            text t "greetings.nim"            
            text "\""            
            text ". Now compile and run it: "            
            pre():              
              text "\x0A"              
              text t "nim compile --run greetings.nim"            
            text "\x0A            "          
          text "\x0A            "          
          p():            
            text t "With the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "--run"            
            text t " "            
            a(class="reference external",href="nimc.html#compiler-usage-command-line-switches"):              
              text t "switch"            
            text t " "            
            text "Nim executes the file automatically after compilation. You can give your program command line arguments by appending them after the filename: "            
            pre():              
              text "\x0A"              
              text t "nim compile --run greetings.nim arg1 arg2"            
            text "\x0A            "          
          text "\x0A            "          
          p():            
            text "Commonly used commands and switches have abbreviations, so you can also use: "            
            pre():              
              text "\x0A"              
              text t "nim c -r greetings.nim"            
            text "\x0A            "          
          text "\x0A            "          
          p():            
            text "To compile a release version use: "            
            pre():              
              text "\x0A"              
              text t "nim c -d:release greetings.nim"            
            text "\x0A            "          
          text "\x0A            "          
          p():            
            text "By default the Nim compiler generates a large amount of runtime checks aiming for your debugging pleasure. With "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "-d:release"            
            text t " "            
            text t "some checks are "            
            a(class="reference external",href="nimc.html#compiler-usage-compile-time-symbols"):              
              text "turned off and optimizations are turned on"            
            text t "."          
          text "\x0A            "          
          p():            
            text "Though it should be pretty obvious what the program does, I will explain the syntax: statements which are not indented are executed when the program starts. Indentation is Nim\'s way of grouping statements. Indentation is done with spaces only, tabulators are not allowed."          
          text "\x0A            "          
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
            text "\x0A              "            
            text t "with the value that is returned by the "            
            a(class="reference external",href="system.html#readLine,File"):              
              text t "readLine"            
            text t " "            
            text t "procedure. Since the compiler knows that "            
            a(class="reference external",href="system.html#readLine,File"):              
              text t "readLine"            
            text t " "            
            text "returns a string, you can leave out the type in the declaration (this is called "            
            span(id="local-type-inference_1"):              
              text "local type inference"            
            text t "). So this will work too:"          
          text "\x0A            "          
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
          text "\x0A            "          
          p():            
            text "Note that this is basically the only form of type inference that exists in Nim: it is a good compromise between brevity and readability."          
          text "\x0A            "          
          p():            
            text t "The "            
            text "\""            
            text t "hello world"            
            text "\""            
            text t " "            
            text "program contains several identifiers that are already known to the compiler: "            
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
            text "module which is implicitly imported by any other module."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="lexical-elements",href="#lexical-elements"):              
              text t "Lexical elements"          
          text "\x0A            "          
          p():            
            text "Let us look at Nim\'s lexical elements in more detail: like other programming languages Nim consists of (string) literals, identifiers, keywords, comments, operators, and other punctuation marks."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="lexical-elements-string-and-character-literals",href="#lexical-elements-string-and-character-literals"):              
              text t "String and character literals"          
          text "\x0A            "          
          p():            
            text "String literals are enclosed in double quotes; character literals in single quotes. Special characters are escaped with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\\"            
            text t ": "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\\n"            
            text t " "            
            text t "means newline, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\\t"            
            text t " "            
            text "means tabulator, etc. There are also "            
            em():              
              text t "raw"            
            text t " "            
            text t "string literals:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="RawData"):              
              text t "r"              
              text "\""              
              text "C:\\program files\\nim"              
              text "\""          
          text "\x0A            "          
          p():            
            text t "In raw literals the backslash is not an escape character."          
          text "\x0A            "          
          p():            
            text t "The third and last way to write string literals are "            
            em():              
              text t "long string literals"            
            text ". They are written with three quotes: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\""                
                text "\""                
                text "\""                
                text t " "                
                text "... "                
                text "\""                
                text "\""                
                text "\""            
            text t "; they can span over multiple lines and the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\\"            
            text t " "            
            text "is not an escape character either. They are very useful for embedding HTML code templates for example."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="lexical-elements-comments",href="#lexical-elements-comments"):              
              text t "Comments"            
            text "\x0A            "          
          text "\x0A            "          
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
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# A comment."            
            text "\x0A\x0A"            
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
          text "\x0A            "          
          p():            
            text "Documentation comments are tokens; they are only allowed at certain places in the input file as they belong to the syntax tree! This feature enables simpler documentation generators."          
          text "\x0A            "          
          p():            
            text t "Multiline comments are started with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "#["            
            text t " "            
            text "and terminated with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "]#"            
            text ". Multiline comments can also be nested."          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="LongComment"):              
              text "#[\x0AYou can have any Nim code text commented\x0Aout inside this with no indentation restrictions. yes("              
              text "\""              
              text t "May I ask a pointless question?"              
              text "\""              
              text ") #[ Note: these can be nested!! ]#\x0A]#"          
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="lexical-elements-numbers",href="#lexical-elements-numbers"):              
              text t "Numbers"          
          text "\x0A            "          
          p():            
            text "Numerical literals are written as in most other languages. As a special twist, underscores are allowed for better readability: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "1_000_000"            
            text t " "            
            text "(one million). A number that contains a dot (or \'e\' or \'E\') is a floating point literal: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "1.0e9"            
            text t " "            
            text "(one billion). Hexadecimal literals are prefixed with "            
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
            text ". A leading zero alone does not produce an octal."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="the-var-statement",href="#the-var-statement"):              
              text t "The var statement"          
          text "\x0A            "          
          p():            
            text t "The var statement declares a new local or global variable:"          
          text "\x0A            "          
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
          text "\x0A            "          
          p():            
            text t "Indentation can be used after the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text "keyword to list a whole section of variables:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
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
            text "\x0A  "            
            span(class="Comment"):              
              text t "# a comment can occur here too"            
            text "\x0A  "            
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
          text "\x0A            "          
          h1():            
            a(class="toc-backref",id="the-assignment-statement",href="#the-assignment-statement"):              
              text "The assignment statement"          
          text "\x0A            "          
          p():            
            text t "The assignment statement assigns a new value to a variable or more generally to a storage location:"          
          text "\x0A            "          
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
              text "\""              
              text t "abc"              
              text "\""            
            text t " "            
            span(class="Comment"):              
              text t "# introduces a new variable `x` and assigns a value to it"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "xyz"              
              text "\""            
            text t "     "            
            span(class="Comment"):              
              text t "# assigns a new value to `x`"          
          text "\x0A            "          
          p():            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "="            
            text t " "            
            text t "is the "            
            em():              
              text t "assignment operator"            
            text ". The assignment operator can be overloaded. You can declare multiple variables with a single assignment statement and all the variables will have the same value:"          
          text "\x0A            "          
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "x "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text "\""              
              text t "x 3"              
              text "\""            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "y "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text "\""              
              text t "y 3"              
              text "\""            
            text "\x0A"            
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "x "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text "\""              
              text t "x 42"              
              text "\""            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "y "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            text t "  "            
            span(class="Comment"):              
              text t "# outputs "              
              text "\""              
              text t "y 3"              
              text "\""          
          text "\x0A            "          
          p():            
            text "Note that declaring multiple variables with a single assignment which calls a procedure can have unexpected results: the compiler will "            
            em():              
              text t "unroll"            
            text t " "            
            text "the assignments and end up calling the procedure several times. If the result of the procedure depends on side effects, your variables may end up having different values! For safety use side-effect free procedures if making multiple assignments."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="constants",href="#constants"):              
              text t "Constants"          
          text "\x0A            "          
          p():            
            text "Constants are symbols which are bound to a value. The constant\'s value cannot change. The compiler must be able to evaluate the expression in a constant declaration at compile time:"          
          text "\x0A            "          
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
              text "\""              
              text t "abc"              
              text "\""            
            text t " "            
            span(class="Comment"):              
              text t "# the constant x contains the string "              
              text "\""              
              text t "abc"              
              text "\""          
          text "\x0A            "          
          p():            
            text t "Indentation can be used after the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "const"            
            text "\x0A              "            
            text t "keyword to list a whole section of constants:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "const"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            text "\x0A  "            
            span(class="Comment"):              
              text t "# a comment can occur here too"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            text "\x0A  "            
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
          text "\x0A            "          
          h1():            
            a(class="toc-backref",id="the-let-statement",href="#the-let-statement"):              
              text t "The let statement"          
          text "\x0A            "          
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
            text "statement but the declared symbols are "            
            em():              
              text t "single assignment"            
            text t " "            
            text t "variables: After the initialization their value cannot change:"          
          text "\x0A            "          
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
              text "\""              
              text t "abc"              
              text "\""            
            text t " "            
            span(class="Comment"):              
              text t "# introduces a new variable `x` and binds a value to it"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "xyz"              
              text "\""            
            text t "     "            
            span(class="Comment"):              
              text t "# Illegal: assignment to `x`"          
          text "\x0A            "          
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
            text "\""            
            text "enforce compile time evaluation and put it into a data section"            
            text "\""            
            text t ":"          
          text "\x0A            "          
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
          text "\x0A            "          
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
          text "\x0A            "          
          h1():            
            a(class="toc-backref",id="control-flow-statements",href="#control-flow-statements"):              
              text "Control flow statements"          
          text "\x0A            "          
          p():            
            text "The greetings program consists of 3 statements that are executed sequentially. Only the most primitive programs can get away with that: branching and looping are needed too."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-if-statement",href="#control-flow-statements-if-statement"):              
              text t "If statement"          
          text "\x0A            "          
          p():            
            text t "The if statement is one way to branch the control flow:"          
          text "\x0A            "          
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
            text "\x0A"            
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
              text "\""              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Poor soul, you lost your name?"              
              text "\""            
            text "\x0A"            
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
              text "\""              
              text t "name"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Very funny, your name is name."              
              text "\""            
            text "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Hi, "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "!"              
              text "\""          
          text "\x0A            "          
          p():            
            text t "There can be zero or more "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "elif"            
            text t " "            
            text "parts, and the "            
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
            text ", and is useful to avoid excessive indentation. (The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\""                
                text "\""            
            text t " "            
            text "is the empty string. It contains no characters.)"          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-case-statement",href="#control-flow-statements-case-statement"):              
              text t "Case statement"          
          text "\x0A            "          
          p():            
            text t "Another way to branch is provided by the case statement. A case statement is a multi-branch:"          
          text "\x0A            "          
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
            text "\x0A"            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Poor soul, you lost your name?"              
              text "\""            
            text "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "name"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Very funny, your name is name."              
              text "\""            
            text "\x0A"            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Dave"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Frank"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Cool name!"              
              text "\""            
            text "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Hi, "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "!"              
              text "\""          
          text "\x0A            "          
          p():            
            text t "As it can be seen, for an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "of"            
            text t " "            
            text "branch a comma separated list of values is also allowed."          
          text "\x0A            "          
          p():            
            text "The case statement can deal with integers, other ordinal types and strings. (What an ordinal type is will be explained soon.) For integers or other ordinal types value ranges are also possible:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# this statement will be explained later:"            
            text "\x0A"            
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
            text "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "A number please: "              
              text "\""            
            text "\x0A"            
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
            text "\x0A"            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text "\x0A"            
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
              text "\""              
              text t "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"              
              text "\""            
            text "\x0A"            
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
              text "\""              
              text t "The number is 3 or 8"              
              text "\""          
          text "\x0A            "          
          p():            
            text t "However, the above code does not compile: the reason is that you have to cover every value that "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "n"            
            text t " "            
            text "may contain, but the code only handles the values "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "0..8"            
            text ". Since it is not very practical to list every other possible integer (though it is possible thanks to the range notation), we fix this by telling the compiler that for every other value nothing should be done:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Operator"):              
              text t "..."            
            text "\x0A"            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text "\x0A"            
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
              text "\""              
              text t "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"              
              text "\""            
            text "\x0A"            
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
              text "\""              
              text t "The number is 3 or 8"              
              text "\""            
            text "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "discard"          
          text "\x0A            "          
          p():            
            text t "The empty "            
            a(class="reference external",href="#discard-statement"):              
              text t "discard statement"            
            text t " "            
            text t "is a "            
            em():              
              text "do nothing"            
            text t " "            
            text "statement. The compiler knows that a case statement with an else part cannot fail and thus the error disappears. Note that it is impossible to cover all possible string values: that is why string cases always need an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "else"            
            text t " "            
            text t "branch."          
          text "\x0A            "          
          p():            
            text "In general the case statement is used for subrange types or enumerations where it is of great help that the compiler checks that you covered any possible value."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-while-statement",href="#control-flow-statements-while-statement"):              
              text t "While statement"          
          text "\x0A            "          
          p():            
            text t "The while statement is a simple looping construct:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "What's your name? "              
              text "\""            
            text "\x0A"            
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
            text "\x0A"            
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
              text "\""              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Please tell me your name: "              
              text "\""            
            text "\x0A  "            
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
            text "\x0A  "            
            span(class="Comment"):              
              text t "# no ``var``, because we do not declare a new variable here"          
          text "\x0A            "          
          p():            
            text "The example uses a while loop to keep asking the users for their name, as long as the user types in nothing (only presses RETURN)."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-for-statement",href="#control-flow-statements-for-statement"):              
              text t "For statement"          
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text "statement is a construct to loop over any element an "            
            em():              
              text t "iterator"            
            text t " "            
            text t "provides. The example uses the built-in "            
            a(class="reference external",href="system.html#countup"):              
              text t "countup"            
            text t " "            
            text t "iterator:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Counting to ten: "              
              text "\""            
            text "\x0A"            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Outputs 1 2 3 4 5 6 7 8 9 10 on different lines"          
          text "\x0A            "          
          p():            
            text t "The variable "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "i"            
            text t " "            
            text "is implicitly declared by the "            
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
            text "runs through the values 1, 2, .., 10. Each value is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "echo"            
            text t "-ed. This code does the same:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Counting to 10: "              
              text "\""            
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text "\x0A  "            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Outputs 1 2 3 4 5 6 7 8 9 10 on different lines"          
          text "\x0A            "          
          p():            
            text t "Counting down can be achieved as easily (but is less often needed):"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Counting down from 10 to 1: "              
              text "\""            
            text "\x0A"            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Outputs 10 9 8 7 6 5 4 3 2 1 on different lines"          
          text "\x0A            "          
          p():            
            text t "Since counting up occurs so often in programs, Nim also has a "            
            a(class="reference external",href="system.html#...i,S,T"):              
              text t ".."            
            text t " "            
            text t "iterator that does the same:"          
          text "\x0A            "          
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
            text "\x0A  "            
            span(class="Operator"):              
              text t "..."          
          text "\x0A            "          
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
            text "to simplify counting to one less than the higher index:"          
          text "\x0A            "          
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
            text "\x0A  "            
            span(class="Operator"):              
              text t "..."            
            text t "  "            
            span(class="Comment"):              
              text t "# 0..9"          
          text "\x0A            "          
          p():            
            text t "or"          
          text "\x0A            "          
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
              text "\""              
              text t "some string"              
              text "\""            
            text "\x0A"            
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
            text "\x0A  "            
            span(class="Operator"):              
              text t "..."          
          text "\x0A            "          
          p():            
            text t "Other useful iterators for collections (like arrays and sequences) are"          
          text "\x0A            "          
          ul(class="simple"):            
            text "\x0A              "            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "items"              
              text t " "              
              text t "and "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "mitems"              
              text ", which provides immutable and mutable elements respectively, and"            
            text "\x0A              "            
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
              text "which provides the element and an index number (immutable and mutable respectively)"            
            text "\x0A            "          
          text "\x0A            "          
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
              text "\""              
              text t "a"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            span(class="StringLit"):              
              text "\""              
              text t "b"              
              text "\""            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "pairs"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "item"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t " "              
              text t "at index "              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "index"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# ="              
              text t ">"              
              text t " "              
              text t "a at index 0"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# ="              
              text t ">"              
              text t " "              
              text t "b at index 1"          
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-scopes-and-the-block-statement",href="#control-flow-statements-scopes-and-the-block-statement"):              
              text t "Scopes and the block statement"          
          text "\x0A            "          
          p():            
            text "Control flow statements have a feature not covered yet: they open a new scope. This means that in the following example, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t " "            
            text "is not accessible outside the loop:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
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
              text "\""              
              text t "hi"              
              text "\""            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Comment"):              
              text t "# does not work"          
          text "\x0A            "          
          p():            
            text "A while (for) statement introduces an implicit block. Identifiers are only visible within the block they have been declared. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "block"            
            text t " "            
            text "statement can be used to open a new block explicitly:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "block"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
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
              text "\""              
              text t "hi"              
              text "\""            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Comment"):              
              text t "# does not work either"          
          text "\x0A            "          
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
            text "in the example) is optional."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-break-statement",href="#control-flow-statements-break-statement"):              
              text t "Break statement"          
          text "\x0A            "          
          p():            
            text t "A block can be left prematurely with a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "break"            
            text "\x0A              "            
            text t "statement. The break statement can leave a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "while"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text ", or a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "block"            
            text t " "            
            text "statement. It leaves the innermost construct, unless a label of a block is given:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "block"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "entering block"              
              text "\""            
            text "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "looping"              
              text "\""            
            text "\x0A    "            
            span(class="Keyword"):              
              text t "break"            
            text t " "            
            span(class="Comment"):              
              text t "# leaves the loop, but not the block"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "still in block"              
              text "\""            
            text "\x0A\x0A"            
            span(class="Keyword"):              
              text t "block"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock2"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "entering block"              
              text "\""            
            text "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "looping"              
              text "\""            
            text "\x0A    "            
            span(class="Keyword"):              
              text t "break"            
            text t " "            
            span(class="Identifier"):              
              text t "myblock2"            
            text t " "            
            span(class="Comment"):              
              text t "# leaves the block (and the loop)"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "still in block"              
              text "\""          
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-continue-statement",href="#control-flow-statements-continue-statement"):              
              text t "Continue statement"          
          text "\x0A            "          
          p():            
            text t "Like in many other programming languages, a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "continue"            
            text t " "            
            text t "statement starts the next iteration immediately:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
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
            text "\x0A  "            
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
              text "\""              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "continue"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"          
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="control-flow-statements-when-statement",href="#control-flow-statements-when-statement"):              
              text t "When statement"          
          text "\x0A            "          
          p():            
            text t "Example:"          
          text "\x0A            "          
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
              text "\""              
              text t "windows"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "running on Windows!"              
              text "\""            
            text "\x0A"            
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
              text "\""              
              text t "linux"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "running on Linux!"              
              text "\""            
            text "\x0A"            
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
              text "\""              
              text t "macosx"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "running on Mac OS X!"              
              text "\""            
            text "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "unknown operating system"              
              text "\""          
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "when"            
            text t " "            
            text "statement is almost identical to the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "if"            
            text t " "            
            text t "statement, but with these differences:"          
          text "\x0A            "          
          ul(class="simple"):            
            text "\x0A              "            
            li():              
              text t "Each condition must be a constant expression since it is evaluated by the compiler."            
            text "\x0A              "            
            li():              
              text t "The statements within a branch do not open a new scope."            
            text "\x0A              "            
            li():              
              text t "The compiler checks the semantics and produces code "              
              em():                
                text t "only"              
              text t " "              
              text "for the statements that belong to the first condition that evaluates to "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "true"              
              text ". "            
            text "\x0A            "          
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "when"            
            text t " "            
            text "statement is useful for writing platform specific code, similar to the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "#ifdef"            
            text "\x0A              "            
            text t "construct in the C programming language."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="statements-and-indentation",href="#statements-and-indentation"):              
              text "Statements and indentation"          
          text "\x0A            "          
          p():            
            text t "Now that we covered the basic control flow statements, let's return to Nim indentation rules."          
          text "\x0A            "          
          p():            
            text t "In Nim there is a distinction between "            
            em():              
              text t "simple statements"            
            text t " "            
            text t "and "            
            em():              
              text t "complex statements"            
            text ". "            
            em():              
              text t "Simple statements"            
            text t " "            
            text t "cannot contain other statements: Assignment, procedure calls or the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t " "            
            text "statement belong to the simple statements. "            
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
            text "can contain other statements. To avoid ambiguities, complex statements must always be indented, but single simple statements do not:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# no indentation needed for single assignment statement:"            
            text "\x0A"            
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
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# indentation needed for nested if statement:"            
            text "\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# indentation needed, because two statements follow the condition:"            
            text "\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "false"          
          text "\x0A            "          
          p():            
            em():              
              text t "Expressions"            
            text t " "            
            text "are parts of a statement which usually result in a value. The condition in an if statement is an example for an expression. Expressions can contain indentation at certain places for better readability:"          
          text "\x0A            "          
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
            text "\x0A    "            
            span(class="Identifier"):              
              text t "thisIsAnotherLongCondition"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ","            
            text "\x0A       "            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"          
          text "\x0A            "          
          p():            
            text "As a rule of thumb, indentation within expressions is allowed after operators, an open parenthesis and after commas."          
          text "\x0A            "          
          p():            
            text t "With parenthesis and semicolons "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "(;)"            
            text t " "            
            text "you can use statements where only an expression is allowed:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# computes fac(4) at compile time:"            
            text "\x0A"            
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
          text "\x0A            "          
          h1():            
            a(class="toc-backref",id="procedures",href="#procedures"):              
              text t "Procedures"          
          text "\x0A            "          
          p():            
            text t "To define new commands like "            
            a(class="reference external",href="system.html#echo"):              
              text t "echo"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#readLine,File"):              
              text t "readLine"            
            text t " "            
            text "in the examples, the concept of a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "procedure"            
            text t " "            
            text "is needed. (Some languages call them "            
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
          text "\x0A            "          
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "question"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t " "              
              text t "(y/n)"              
              text "\""            
            text "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A    "            
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
            text "\x0A    "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "y"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Y"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "yes"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Yes"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "return"            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text "\x0A    "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "n"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "N"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "no"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "No"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "return"            
            text t " "            
            span(class="Identifier"):              
              text t "false"            
            text "\x0A    "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Please be clear: yes or no"              
              text "\""            
            text "\x0A\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "yes"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text "\""              
              text t "Should I delete all your important files?"              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "I'm sorry Dave, I'm afraid I can't do that."              
              text "\""            
            text "\x0A"            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "I think you know what the problem is just as well as I do."              
              text "\""          
          text "\x0A            "          
          p():            
            text t "This example shows a procedure named "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "yes"            
            text t " "            
            text "that asks the user a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "question"            
            text t " "            
            text "and returns true if they answered "            
            text "\""            
            text t "yes"            
            text "\""            
            text t " "            
            text t "(or something similar) and returns false if they answered "            
            text "\""            
            text t "no"            
            text "\""            
            text t " "            
            text "(or something similar). A "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t " "            
            text "statement leaves the procedure (and therefore the while loop) immediately. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "(question: string): bool"            
            text t " "            
            text "syntax describes that the procedure expects a parameter named "            
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
            text ". The conditions in if or while statements must be of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t "."          
          text "\x0A            "          
          p():            
            text t "Some terminology: in the example "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "question"            
            text t " "            
            text "is called a (formal) "            
            em():              
              text t "parameter"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\""                
                text "Should I..."                
                text "\""            
            text t " "            
            text t "is called an "            
            em():              
              text t "argument"            
            text t " "            
            text t "that is passed to this parameter."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-result-variable",href="#procedures-result-variable"):              
              text "Result variable"          
          text "\x0A            "          
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
            text "statement with no expression is a shorthand for "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return result"            
            text t ". The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "result"            
            text t " "            
            text "value is always returned automatically at the end of a procedure if there is no "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text "\x0A              "            
            text t "statement at the exit."          
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A    "            
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
            text "\x0A      "            
            span(class="Keyword"):              
              text t "return"            
            text "\x0A    "            
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
            text "\x0A\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "result"            
            text t " "            
            text "variable is already implicitly declared at the start of the function, so declaring it again with \'var result\', for example, would shadow it with a normal variable of the same name. The result variable is also already initialised with the type\'s default value. Note that referential data types will be "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "nil"            
            text t " "            
            text "at the start of the procedure, and thus may require manual initialisation. "          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-parameters",href="#procedures-parameters"):              
              text t "Parameters"          
          text "\x0A            "          
          p():            
            text "Parameters are immutable in the procedure body. By default, their value cannot be changed because this allows the compiler to implement parameter passing in the most efficient way. If a mutable variable is needed inside the procedure, it has to be declared with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text "in the procedure body. Shadowing the parameter name is possible, and actually an idiom:"          
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A    "            
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
          text "\x0A            "          
          p():            
            text t "If the procedure needs to modify the argument for the caller, a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "var"            
            text t " "            
            text t "parameter can be used:"          
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
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
            text "\x0A"            
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "y"          
          text "\x0A            "          
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
            text ". Var parameters can be modified by the procedure and the changes are visible to the caller. Note that the above example would better make use of a tuple as a return value instead of using var parameters."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-discard-statement",href="#procedures-discard-statement"):              
              text "Discard statement"          
          text "\x0A            "          
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
            text "be used. Nim does not allow silently throwing away a return value:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "discard"            
            text t " "            
            span(class="Identifier"):              
              text t "yes"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text "\""              
              text t "May I ask a pointless question?"              
              text "\""            
            span(class="Punctuation"):              
              text t ")"          
          text "\x0A            "          
          p():            
            text t "The return value can be ignored implicitly if the called proc/iterator has been declared with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "discardable"            
            text t " "            
            text t "pragma:"          
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A\x0A"            
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
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "discard"            
            text t " "            
            text "statement can also be used to create block comments as described in the "            
            a(class="reference external",href="#comments"):              
              text t "Comments"            
            text "\x0A              "            
            text t "section."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-named-arguments",href="#procedures-named-arguments"):              
              text "Named arguments"          
          text "\x0A            "          
          p():            
            text "Often a procedure has many parameters and it is not clear in which order the parameters appear. This is especially true for procedures that construct a complex data type. Therefore the arguments to a procedure can be named, so that it is clear which argument belongs to which parameter:"          
          text "\x0A            "          
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
            text "\x0A                  "            
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
            text "\x0A   "            
            span(class="Operator"):              
              text t "..."            
            text "\x0A\x0A"            
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
              text "\""              
              text t "My Application"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text "\x0A                     "            
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
          text "\x0A            "          
          p():            
            text t "Now that we use named arguments to call "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "createWindow"            
            text t " "            
            text "the argument order does not matter anymore. Mixing named arguments with ordered arguments is also possible, but not very readable:"          
          text "\x0A            "          
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
              text "\""              
              text t "My Application"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text "\x0A                     "            
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
          text "\x0A            "          
          p():            
            text t "The compiler checks that each parameter receives exactly one argument."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-default-values",href="#procedures-default-values"):              
              text "Default values"          
          text "\x0A            "          
          p():            
            text t "To make the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "createWindow"            
            text t " "            
            text "proc easier to use it should provide "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "default values"            
            text "; these are values that are used as arguments if the caller does not specify them:"          
          text "\x0A            "          
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
            text "\x0A                  "            
            span(class="Identifier"):              
              text t "title"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "unknown"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text "\x0A                  "            
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
            text "\x0A   "            
            span(class="Operator"):              
              text t "..."            
            text "\x0A\x0A"            
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
              text "\""              
              text t "My Application"              
              text "\""            
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
          text "\x0A            "          
          p():            
            text t "Now the call to "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "createWindow"            
            text t " "            
            text "only needs to set the values that differ from the defaults."          
          text "\x0A            "          
          p():            
            text t "Note that type inference works for parameters with default values; there is no need to write "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "title: string = "                
                text "\""                
                text t "unknown"                
                text "\""            
            text ", for example. "          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-overloaded-procedures",href="#procedures-overloaded-procedures"):              
              text t "Overloaded procedures"          
          text "\x0A            "          
          p():            
            text t "Nim provides the ability to overload procedures similar to C++:"          
          text "\x0A            "          
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
            text "\x0A"            
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
            text "\x0A  "            
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
              text "\""              
              text t "true"              
              text "\""            
            text "\x0A  "            
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
              text "\""              
              text t "false"              
              text "\""            
            text "\x0A\x0A"            
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
            text "\x0A"            
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
          text "\x0A            "          
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
            text "operator in Nim.) The compiler chooses the most appropriate proc for the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "toString"            
            text t " "            
            text "calls. How this overloading resolution algorithm works exactly is not discussed here (it will be specified in the manual soon). However, it does not lead to nasty surprises and is based on a quite simple unification algorithm. Ambiguous calls are reported as errors."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-operators",href="#procedures-operators"):              
              text t "Operators"          
          text "\x0A            "          
          p():            
            text t "The Nim library makes heavy use of overloading - one reason for this is that each operator like "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "+"            
            text t " "            
            text "is just an overloaded proc. The parser lets you use operators in "            
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
                text "+ a"            
            text "). An infix operator always receives two arguments, a prefix operator always one. (Postfix operators are not possible, because this would be ambiguous: does "            
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
                text "(a@) @ (b)"            
            text t "? It always means "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "(a) @ (@b)"            
            text t ", because there are no postfix operators in Nim.)"          
          text "\x0A            "          
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
            text ", operators always consist of these characters: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "+ - * \\ / "                
                text t "<"                
                text t " "                
                text t ">"                
                text t " "                
                text t "= @ $ ~ "                
                text t "&"                
                text t " "                
                text "% ! ? ^ . |"          
          text "\x0A            "          
          p():            
            text t "User defined operators are allowed. Nothing stops you from defining your own "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "@!?+~"            
            text t " "            
            text "operator, but doing so may reduce readability."          
          text "\x0A            "          
          p():            
            text "The operator\'s precedence is determined by its first character. The details can be found in the manual. "          
          text "\x0A            "          
          p():            
            text t "To define a new operator enclose the operator in backticks "            
            text "\""            
            text t "``"            
            text "\""            
            text t ":"          
          text "\x0A            "          
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# now the $ operator also works with myDataType, overloading resolution"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# ensures that $ works for built-in types just like before"          
          text "\x0A            "          
          p():            
            text t "The "            
            text "\""            
            text t "``"            
            text "\""            
            text t " "            
            text t "notation can also be used to call an operator just like any other procedure:"          
          text "\x0A            "          
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
              text "\""              
              text t "True"              
              text "\""          
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="procedures-forward-declarations",href="#procedures-forward-declarations"):              
              text t "Forward declarations"          
          text "\x0A            "          
          p():            
            text "Every variable, procedure, etc. needs to be declared before it can be used. (The reason for this is that it is non-trivial to avoid this need in a language that supports meta programming as extensively as Nim does.) However, this cannot be done for mutually recursive procedures:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# forward declaration:"            
            text "\x0A"            
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
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A    "            
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
            text "\x0A\x0A"            
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A    "            
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
          text "\x0A            "          
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
            text "needs to be introduced to the compiler before it is completely defined. The syntax for such a forward declaration is simple: just omit the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "="            
            text t " "            
            text t "and the procedure's body. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "assert"            
            text t " "            
            text "just adds border conditions, and will be covered later in "            
            a(class="reference external",href="#modules"):              
              text t "Modules"            
            text t " "            
            text t "section."          
          text "\x0A            "          
          p():            
            text t "Later versions of the language will weaken the requirements for forward declarations."          
          text "\x0A            "          
          p():            
            text "The example also shows that a proc\'s body can consist of a single expression whose value is then returned implicitly."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="iterators",href="#iterators"):              
              text t "Iterators"          
          text "\x0A            "          
          p():            
            text t "Let's return to the simple counting example:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Counting to ten: "              
              text "\""            
            text "\x0A"            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "i"          
          text "\x0A            "          
          p():            
            text t "Can a "            
            a(class="reference external",href="system.html#countup"):              
              text t "countup"            
            text t " "            
            text "proc be written that supports this loop? Lets try:"          
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A    "            
            span(class="Keyword"):              
              text t "return"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "inc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "res"            
            span(class="Punctuation"):              
              text t ")"          
          text "\x0A            "          
          p():            
            text t "However, this does not work. The problem is that the procedure should not only "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "return"            
            text t ", but return and "            
            strong():              
              text t "continue"            
            text "\x0A              "            
            text t "after an iteration has finished. This "            
            em():              
              text t "return and continue"            
            text t " "            
            text t "is called a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "yield"            
            text t " "            
            text "statement. Now the only thing left to do is to replace the "            
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
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A    "            
            span(class="Keyword"):              
              text t "yield"            
            text t " "            
            span(class="Identifier"):              
              text t "res"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "inc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "res"            
            span(class="Punctuation"):              
              text t ")"          
          text "\x0A            "          
          p():            
            text t "Iterators look very similar to procedures, but there are several important differences:"          
          text "\x0A            "          
          ul(class="simple"):            
            text "\x0A              "            
            li():              
              text t "Iterators can only be called from for loops."            
            text "\x0A              "            
            li():              
              text t "Iterators cannot contain a "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "return"              
              text t " "              
              text "statement (and procs cannot contain a "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "yield"              
              text t " "              
              text "statement). "            
            text "\x0A              "            
            li():              
              text t "Iterators have no implicit "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "result"              
              text t " "              
              text "variable. "            
            text "\x0A              "            
            li():              
              text t "Iterators do not support recursion."            
            text "\x0A              "            
            li():              
              text "Iterators cannot be forward declared, because the compiler must be able to inline an iterator. (This restriction will be gone in a future version of the compiler.)"            
            text "\x0A            "          
          text "\x0A            "          
          p():            
            text t "However, you can also use a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "closure"            
            text t " "            
            text "iterator to get a different set of restrictions. See "            
            a(class="reference external",href="manual.html#iterators-and-the-for-statement-first-class-iterators"):              
              text t "first class iterators"            
            text t " "            
            text "for details. Iterators can have the same name and parameters as a proc, since essentially they have their own namespaces. Therefore it is common practice to wrap iterators in procs of the same name which accumulate the result of the iterator and return it as a sequence, like "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "split"            
            text t " "            
            text t "from the "            
            a(class="reference external",href="strutils.html"):              
              text "strutils module"            
            text t "."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="basic-types",href="#basic-types"):              
              text t "Basic types"          
          text "\x0A            "          
          p():            
            text "This section deals with the basic built-in types and the operations that are available for them in detail."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="basic-types-booleans",href="#basic-types-booleans"):              
              text t "Booleans"          
          text "\x0A            "          
          p():            
            text t "Nim's boolean type is called "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "bool"            
            text t " "            
            text "and consists of the two pre-defined values "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "true"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "false"            
            text ". Conditions in while, if, elif, and when statements must be of type bool."          
          text "\x0A            "          
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
                text "=, !=, =="            
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
            text "\x0A              "            
            text t "operators perform short-circuit evaluation. For example:"          
          text "\x0A            "          
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
              text "\""              
              text t "xyz"              
              text "\""            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Comment"):              
              text t "# p.name is not evaluated if p == nil"            
            text "\x0A  "            
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
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="basic-types-characters",href="#basic-types-characters"):              
              text t "Characters"          
          text "\x0A            "          
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
            text ". Its size is always one byte, so it cannot represent most UTF-8 characters; but it "            
            em():              
              text t "can"            
            text t " "            
            text "represent one of the bytes that makes up a multi-byte UTF-8 character. The reason for this is efficiency: for the overwhelming majority of use-cases, the resulting programs will still handle UTF-8 properly as UTF-8 was specially designed for this. Character literals are enclosed in single quotes."          
          text "\x0A            "          
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
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="basic-types-strings",href="#basic-types-strings"):              
              text t "Strings"          
          text "\x0A            "          
          p():            
            text t "String variables are "            
            strong():              
              text t "mutable"            
            text ", so appending to a string is possible, and quite efficient. Strings in Nim are both zero-terminated and have a length field. A string\'s length can be retrieved with the builtin "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "len"            
            text t " "            
            text "procedure; the length never counts the terminating zero. Accessing the terminating zero is an error, it only exists so that a Nim string can be converted to a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "cstring"            
            text t " "            
            text "without doing a copy."          
          text "\x0A            "          
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
          text "\x0A            "          
          p():            
            text "Strings are compared using their lexicographical order. All the comparison operators are supported. By convention, all strings are UTF-8 encoded, but this is not enforced. For example, when reading strings from binary files, they are merely a sequence of bytes. The index operation "            
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
          text "\x0A            "          
          p():            
            text t "A string variable is initialized with the empty string "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "\""                
                text "\""            
            text t "."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="basic-types-integers",href="#basic-types-integers"):              
              text t "Integers"          
          text "\x0A            "          
          p():            
            text t "Nim has these integer types built-in: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64"            
            text t "."          
          text "\x0A            "          
          p():            
            text t "The default integer type is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text ". Integer literals can have a "            
            em():              
              text t "type suffix"            
            text t " "            
            text t "to specify a non-default integer type:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "let"            
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A  "            
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
          text "\x0A            "          
          p():            
            text t "Most often integers are used for counting objects that reside in memory, so "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t " "            
            text t "has the same size as a pointer."          
          text "\x0A            "          
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
                text "\x0A                  "                
                text t ">"                
                text t "="            
            text t " "            
            text t "are defined for integers. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "and or xor not"            
            text t " "            
            text t "operators are also defined for integers, and provide "            
            em():              
              text t "bitwise"            
            text t " "            
            text "operations. Left bit shifting is done with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "shl"            
            text ", right shifting with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "shr"            
            text t " "            
            text "operator. Bit shifting operators always treat their arguments as "            
            em():              
              text t "unsigned"            
            text t ". For "            
            span(id="arithmetic-bit-shifts_1"):              
              text t "arithmetic bit shifts"            
            text t " "            
            text "ordinary multiplication or division can be used."          
          text "\x0A            "          
          p():            
            text t "Unsigned operations all wrap around; they cannot lead to over- or under-flow errors."          
          text "\x0A            "          
          p():            
            text t "Lossless "            
            span(id="automatic-type-conversion_1"):              
              text t "Automatic type conversion"            
            text t " "            
            text "is performed in expressions where different kinds of integer types are used. However, if the type conversion would cause loss of information, the "            
            span(id="eoutofrange_1"):              
              text t "EOutOfRange"            
            text t " "            
            text "exception is raised (if the error cannot be detected at compile time)."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="basic-types-floats",href="#basic-types-floats"):              
              text t "Floats"          
          text "\x0A            "          
          p():            
            text t "Nim has these floating point types built-in: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "float float32 float64"            
            text t "."          
          text "\x0A            "          
          p():            
            text t "The default float type is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "float"            
            text ". In the current implementation, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "float"            
            text t " "            
            text "is always 64-bits."          
          text "\x0A            "          
          p():            
            text t "Float literals can have a "            
            em():              
              text t "type suffix"            
            text t " "            
            text t "to specify a non-default float type:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A  "            
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
          text "\x0A            "          
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
                text "\x0A                  "                
                text t ">"                
                text t "="            
            text t " "            
            text t "are defined for floats and follow the IEEE-754 standard."          
          text "\x0A            "          
          p():            
            text "Automatic type conversion in expressions with different kinds of floating point types is performed: the smaller type is converted to the larger. Integer types are "            
            strong():              
              text t "not"            
            text t " "            
            text "converted to floating point types automatically, nor vice versa. Use the "            
            a(class="reference external",href="system.html#toInt"):              
              text t "toInt"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#toFloat"):              
              text t "toFloat"            
            text t " "            
            text t "procs for these conversions."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="basic-types-type-conversion",href="#basic-types-type-conversion"):              
              text "Type Conversion"          
          text "\x0A            "          
          p():            
            text t "Conversion between numerical types is performed by using the type as a function:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A  "            
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
          text "\x0A            "          
          h1():            
            a(class="toc-backref",id="internal-type-representation",href="#internal-type-representation"):              
              text "Internal type representation"          
          text "\x0A            "          
          p():            
            text t "As mentioned earlier, the built-in "            
            a(class="reference external",href="system.html#$"):              
              text t "$"            
            text t " "            
            text "(stringify) operator turns any basic type into a string, which you can then print to the console using the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "echo"            
            text t " "            
            text "proc. However, advanced types, and your own custom types, won\'t work with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text "operator until you define it for them. Sometimes you just want to debug the current value of a complex type without having to write its "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text "operator. You can use then the "            
            a(class="reference external",href="system.html#repr"):              
              text t "repr"            
            text t " "            
            text "proc which works with any type and even complex data graphs with cycles. The following example shows that even for basic types there is a difference between the "            
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
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "myBool"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "myCharacter"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="CharLit"):              
              text t "'n'"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "myString"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "nim"              
              text "\""            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "myInteger"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "42"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "myFloat"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="FloatNumber"):              
              text t "3.14"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myBool"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t ":"              
              text "\""            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "true:true"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myCharacter"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t ":"              
              text "\""            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "n:'n'"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myString"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t ":"              
              text "\""            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "nim:0x10fa8c050"              
              text "\""              
              text t "nim"              
              text "\""            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myInteger"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t ":"              
              text "\""            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "42:42"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "myFloat"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t ":"              
              text "\""            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "3.1400000000000001e+00:3.1400000000000001e+00"          
          text "\x0A            "          
          h1():            
            a(class="toc-backref",id="advanced-types",href="#advanced-types"):              
              text t "Advanced types"          
          text "\x0A            "          
          p():            
            text t "In Nim new types can be defined within a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "type"            
            text "\x0A              "            
            text t "statement:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A  "            
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
          text "\x0A            "          
          p():            
            text t "Enumeration and object types may only be defined within a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "type"            
            text t " "            
            text t "statement."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-enumerations",href="#advanced-types-enumerations"):              
              text t "Enumerations"          
          text "\x0A            "          
          p():            
            text "A variable of an enumeration type can only be assigned one of the enumeration\'s specified values. These values are a set of ordered symbols. Each symbol is mapped to an integer value internally. The first symbol is represented at runtime by 0, the second by 1 and so on. For example:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "Direction"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text "\x0A    "            
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
            text "\x0A\x0A"            
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text t "            "            
            span(class="Comment"):              
              text t "# writes "              
              text "\""              
              text t "south"              
              text "\""              
              text t " "              
              text t "to `stdout`"          
          text "\x0A            "          
          p():            
            text t "All the comparison operators can be used with enumeration types."          
          text "\x0A            "          
          p():            
            text t "An enumeration's symbol can be qualified to avoid ambiguities: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Direction.south"            
            text t "."          
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text "operator can convert any enumeration value to its name, and the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "ord"            
            text t " "            
            text "proc can convert it to its underlying integer value."          
          text "\x0A            "          
          p():            
            text "For better interfacing to other programming languages, the symbols of enum types can be assigned an explicit ordinal value. However, the ordinal values must be in ascending order."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-ordinal-types",href="#advanced-types-ordinal-types"):              
              text "Ordinal types"          
          text "\x0A            "          
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
            text "(and subranges) are called ordinal types. Ordinal types have quite a few special operations:"          
          text "\x0A            "          
          table(class="docutils",border="1"):            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              th():                
                text t "Operation"              
              text "\x0A                "              
              th():                
                text t "Comment"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "ord(x)"              
              text "\x0A                "              
              td():                
                text t "returns the integer value that is used to represent "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t "'s value"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "inc(x)"              
              text "\x0A                "              
              td():                
                text t "increments "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t " "                
                text t "by one"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "inc(x, n)"              
              text "\x0A                "              
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
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "dec(x)"              
              text "\x0A                "              
              td():                
                text t "decrements "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"                
                text t " "                
                text t "by one"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "dec(x, n)"              
              text "\x0A                "              
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
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "succ(x)"              
              text "\x0A                "              
              td():                
                text t "returns the successor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "succ(x, n)"              
              text "\x0A                "              
              td():                
                text t "returns the "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t "'th successor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "pred(x)"              
              text "\x0A                "              
              td():                
                text t "returns the predecessor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "pred(x, n)"              
              text "\x0A                "              
              td():                
                text t "returns the "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "n"                
                text t "'th predecessor of "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "x"              
              text "\x0A              "            
            text "\x0A            "          
          text "\x0A            "          
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
            text "exception. (If the code has been compiled with the proper runtime checks turned on.)"          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-subranges",href="#advanced-types-subranges"):              
              text t "Subranges"          
          text "\x0A            "          
          p():            
            text t "A subrange type is a range of values from an integer or enumeration type (the base type). Example:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
          text "\x0A            "          
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
            text "which can only hold the values 0 to 5. Assigning any other value to a variable of type "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "MySubrange"            
            text t " "            
            text "is a compile-time or runtime error. Assignments from the base type to one of its subrange types (and vice versa) are allowed."          
          text "\x0A            "          
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
            text "returns the maximal value). Other programming languages may suggest the use of unsigned integers for natural numbers. This is often "            
            strong():              
              text t "unwise"            
            text ": you don\'t want unsigned arithmetic (which wraps around) just because the numbers cannot be negative. Nim\'s "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Natural"            
            text t " "            
            text "type helps to avoid this common programming error."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-sets",href="#advanced-types-sets"):              
              text t "Sets"          
          text "The set type models the mathematical notion of a set. The set\'s basetype can only be an ordinal type of a certain size, namely:"          
          ul(class="simple"):            
            text "\x0A              "            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "int8"              
              text t "-"              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "int16"            
            text "\x0A              "            
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
            text "\x0A              "            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "char"            
            text "\x0A              "            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "enum"            
            text "\x0A            "          
          text "\x0A            "          
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
          text "\x0A            "          
          p():            
            text "The reason is that sets are implemented as high performance bit vectors. Attempting to declare a set with a larger type will result in an error:"          
          text "\x0A            "          
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
          text "\x0A            "          
          p():            
            text t "Sets can be constructed via the set constructor: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "{}"            
            text t " "            
            text "is the empty set. The empty set is type compatible with any concrete set type. The constructor can also be used to include elements (and ranges of elements):"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "CharSet"            
            text "\x0A"            
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
            text "\x0A                         "            
            span(class="Comment"):              
              text t "# letters from 'a' to 'z' and the digits"            
            text "\x0A                         "            
            span(class="Comment"):              
              text t "# from '0' to '9'"          
          text "\x0A            "          
          p():            
            text t "These operations are supported by sets:"          
          text "\x0A            "          
          table(class="docutils",border="1"):            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              th():                
                text t "operation"              
              text "\x0A                "              
              th():                
                text t "meaning"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A + B"              
              text "\x0A                "              
              td():                
                text t "union of two sets"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A * B"              
              text "\x0A                "              
              td():                
                text t "intersection of two sets"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A - B"              
              text "\x0A                "              
              td():                
                text t "difference of two sets (A without B's elements)"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A == B"              
              text "\x0A                "              
              td():                
                text t "set equality"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A "                    
                    text t "<"                    
                    text t "= B"              
              text "\x0A                "              
              td():                
                text t "subset relation (A is subset of B or equal to B)"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A "                    
                    text t "<"                    
                    text t " "                    
                    text t "B"              
              text "\x0A                "              
              td():                
                text t "strict subset relation (A is a proper subset of B)"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "e in A"              
              text "\x0A                "              
              td():                
                text t "set membership (A contains element e)"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "e notin A"              
              text "\x0A                "              
              td():                
                text t "A does not contain element e"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "contains(A, e)"              
              text "\x0A                "              
              td():                
                text t "A contains element e"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "card(A)"              
              text "\x0A                "              
              td():                
                text t "the cardinality of A (number of elements in A)"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "incl(A, elem)"              
              text "\x0A                "              
              td():                
                text t "same as "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A = A + {elem}"              
              text "\x0A              "            
            text "\x0A              "            
            tr():              
              text "\x0A                "              
              td():                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "excl(A, elem)"              
              text "\x0A                "              
              td():                
                text t "same as "                
                tt(class="docutils literal"):                  
                  span(class="pre"):                    
                    text t "A = A - {elem}"              
              text "\x0A              "            
            text "\x0A            "          
          text "\x0A            "          
          h3():            
            a(class="toc-backref",id="sets-bit-fields",href="#sets-bit-fields"):              
              text t "Bit fields"          
          text "\x0A            "          
          p():            
            text t "Sets are often used to define a type for the "            
            em():              
              text t "flags"            
            text t " "            
            text "of a procedure. This is a cleaner (and type safe) solution than defining integer constants that have to be "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "or"            
            text t "'ed together."          
          text "\x0A            "          
          p():            
            text t "Enum, sets and casting can be used together as in:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A    "            
            span(class="Identifier"):              
              text t "A"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "B"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "C"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "D"            
            text "\x0A  "            
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
            text "\x0A\x0A"            
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
            text "\x0A"            
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
            text "\x0A\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
          text "\x0A            "          
          p():            
            text t "Note how the set turns enum values into powers of 2."          
          text "\x0A            "          
          p():            
            text t "If using enums and sets with C, use distinct cint."          
          text "\x0A            "          
          p():            
            text t "For interoperability with C see also the "            
            a(class="reference external",href="#implementation-specific-pragmas-bitsize-pragma"):              
              text t "bitsize pragma"            
            text t ". "          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-arrays",href="#advanced-types-arrays"):              
              text t "Arrays"          
          text "\x0A            "          
          p():            
            text "An array is a simple fixed length container. Each element in an array has the same type. The array\'s index type can be any ordinal type."          
          text "\x0A            "          
          p():            
            text t "Arrays can be constructed using "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "[]"            
            text t ":"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "IntArray"            
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A  "            
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
          text "\x0A            "          
          p():            
            text t "The notation "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x[i]"            
            text t " "            
            text "is used to access the i-th element of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text ". Array access is always bounds checked (at compile-time or at runtime). These checks can be disabled via pragmas or invoking the compiler with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "--bound_checks:off"            
            text t " "            
            text "command line switch."          
          text "\x0A            "          
          p():            
            text "Arrays are value types, like any other Nim type. The assignment operator copies the whole array contents. "          
          text "\x0A            "          
          p():            
            text t "The built-in "            
            a(class="reference external",href="system.html#len,TOpenArray"):              
              text t "len"            
            text t " "            
            text "proc returns the array\'s length. "            
            a(class="reference external",href="system.html#low"):              
              text t "low(a)"            
            text t " "            
            text "returns the lowest valid index for the array "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#high"):              
              text t "high(a)"            
            text t " "            
            text t "the highest valid index."          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "Direction"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text "\x0A    "            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "BlinkLights"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text "\x0A    "            
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
            text "\x0A  "            
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
            text "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "level"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "LevelSetting"            
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
          text "\x0A            "          
          p():            
            text "The syntax for nested arrays (multidimensional) in other languages is a matter of appending more brackets because usually each dimension is restricted to the same index type as the others. In Nim you can have different dimensions with different index types, so the nesting syntax is slightly different. Building on the previous example where a level is defined as an array of enums indexed by yet another enum, we can add the following lines to add a light tower type subdivided in height levels accessed through their integer index:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "tower"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "LightTower"            
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# The following lines don't compile due to type mismatch errors"            
            text "\x0A"            
            span(class="Comment"):              
              text t "#tower[north][east] = on"            
            text "\x0A"            
            span(class="Comment"):              
              text t "#tower[0][1] = on"          
          text "\x0A            "          
          p():            
            text t "Note how the built-in "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "len"            
            text t " "            
            text "proc returns only the array\'s first dimension length. Another way of defining the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "LightTower"            
            text t " "            
            text "to better illustrate its nested nature would be to omit the previous definition of the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "LevelSetting"            
            text t " "            
            text "type and instead write it embedded directly as the type of the first dimension:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
          text "\x0A            "          
          p():            
            text "It is quite common to have arrays start at zero, so there\'s a shortcut syntax to specify a range from zero to the specified index minus one:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "IntArray"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "y"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "QuickArray"            
            text "\x0A"            
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            text "\x0A"            
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
            text "\x0A  "            
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
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-sequences",href="#advanced-types-sequences"):              
              text t "Sequences"          
          text "\x0A            "          
          p():            
            text "Sequences are similar to arrays but of dynamic length which may change during runtime (like strings). Since sequences are resizable they are always allocated on the heap and garbage collected."          
          text "\x0A            "          
          p():            
            text t "Sequences are always indexed with an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text "\x0A              "            
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
            text "can be used to access the i-th element of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t "."          
          text "\x0A            "          
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
            text ". Another way to allocate space for a sequence is to call the built-in "            
            a(class="reference external",href="system.html#newSeq"):              
              text t "newSeq"            
            text t " "            
            text t "procedure."          
          text "\x0A            "          
          p():            
            text t "A sequence may be passed to an openarray parameter."          
          text "\x0A            "          
          p():            
            text t "Example:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
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
            text "\x0A"            
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
          text "\x0A            "          
          p():            
            text t "Sequence variables are initialized with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "@[]"            
            text ". "          
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text "statement can be used with one or two variables when used with a sequence. When you use the one variable form, the variable will hold the value provided by the sequence. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text "statement is looping over the results from the "            
            a(class="reference external",href="system.html#items.i,seq[T]"):              
              text t "items()"            
            text t " "            
            text t "iterator from the "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text "module. But if you use the two variable form, the first variable will hold the index position and the second variable will hold the value. Here the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "for"            
            text t " "            
            text "statement is looping over the results from the "            
            a(class="reference external",href="system.html#pairs.i,seq[T]"):              
              text t "pairs()"            
            text t " "            
            text t "iterator from the "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text t "module. Examples:"          
          text "\x0A            "          
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "3"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "4"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "5"            
            text "\x0A\x0A"            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "index: "              
              text "\""            
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
              text "\""              
              text t ", value:"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "value"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "index: 0, value:3"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "index: 1, value:4"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "index: 2, value:5"          
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-open-arrays",href="#advanced-types-open-arrays"):              
              text "Open arrays"          
          text "\x0A            "          
          p():            
            strong():              
              text t "Note"            
            text t ": Openarrays can only be used for parameters."          
          text "\x0A            "          
          p():            
            text "Often fixed size arrays turn out to be too inflexible; procedures should be able to deal with arrays of different sizes. The "            
            span(id="openarray_1"):              
              text t "openarray"            
            text t " "            
            text "type allows this. Openarrays are always indexed with an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "int"            
            text t " "            
            text "starting at position 0. The "            
            a(class="reference external",href="system.html#len,TOpenArray"):              
              text t "len"            
            text t ", "            
            a(class="reference external",href="system.html#low"):              
              text t "low"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#high"):              
              text t "high"            
            text "\x0A              "            
            text "operations are available for open arrays too. Any array with a compatible base type can be passed to an openarray parameter, the index type does not matter."          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A\x0A"            
            span(class="Identifier"):              
              text t "capitals"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="StringLit"):              
              text "\""              
              text t "New York"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "London"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Berlin"              
              text "\""            
            span(class="Punctuation"):              
              text t "]"            
            text t "   "            
            span(class="Comment"):              
              text t "# array 'capitals' allows assignment of only three elements"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "fruits"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text "\""              
              text t "Banana"              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "          "            
            span(class="Comment"):              
              text t "# sequence 'fruits' is dynamically expandable during runtime"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "fruits"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text "\""              
              text t "Mango"              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A\x0A"            
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
            text "\x0A  "            
            span(class="Identifier"):              
              text t "oa"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            text "\x0A\x0A"            
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
            text "\x0A"            
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
          text "\x0A            "          
          p():            
            text "The openarray type cannot be nested: multidimensional openarrays are not supported because this is seldom needed and cannot be done efficiently."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-varargs",href="#advanced-types-varargs"):              
              text t "Varargs"          
          text "\x0A            "          
          p():            
            text t "A "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "varargs"            
            text t " "            
            text "parameter is like an openarray parameter. However, it is also a means to implement passing a variable number of arguments to a procedure. The compiler converts the list of arguments to an array automatically:"          
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A    "            
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
            text "\x0A  "            
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
              text "\""            
            span(class="EscapeSequence"):              
              text "\\n"            
            span(class="StringLit"):              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A\x0A"            
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
              text "\""              
              text t "abc"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "def"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "xyz"              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# is transformed by the compiler to:"            
            text "\x0A"            
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
              text "\""              
              text t "abc"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "def"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "xyz"              
              text "\""            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"          
          text "\x0A            "          
          p():            
            text "This transformation is only done if the varargs parameter is the last parameter in the procedure header. It is also possible to perform type conversions in this context:"          
          text "\x0A            "          
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
            text "\x0A  "            
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
            text "\x0A    "            
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
            text "\x0A  "            
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
              text "\""            
            span(class="EscapeSequence"):              
              text "\\n"            
            span(class="StringLit"):              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A\x0A"            
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
              text "\""              
              text t "abc"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="FloatNumber"):              
              text t "4.0"            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# is transformed by the compiler to:"            
            text "\x0A"            
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
              text "\""              
              text t "abc"              
              text "\""            
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
          text "\x0A            "          
          p():            
            text t "In this example "            
            a(class="reference external",href="system.html#$"):              
              text t "$"            
            text t " "            
            text "is applied to any argument that is passed to the parameter "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a"            
            text t ". Note that "            
            a(class="reference external",href="system.html#$"):              
              text t "$"            
            text t " "            
            text t "applied to strings is a nop."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-slices",href="#advanced-types-slices"):              
              text t "Slices"          
          text "\x0A            "          
          p():            
            text "Slices look similar to subranges types in syntax but are used in a different context. A slice is just an object of type Slice which contains two bounds, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b"            
            text ". By itself a slice is not very useful, but other collection types define operators which accept Slice objects to define ranges."          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Nim is a progamming language"              
              text "\""            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "b"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "Slices are useless."              
              text "\""            
            text "\x0A\x0A"            
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
            text "\x0A"            
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
              text "\""              
              text t "useful"              
              text "\""            
            text "\x0A"            
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
          text "\x0A            "          
          p():            
            text "In the previous example slices are used to modify a part of a string. The slice\'s bounds can hold any value supported by their type, but it is the proc using the slice object which defines what values are accepted."          
          text "\x0A            "          
          p():            
            text "To understand some of the different ways of specifying the indices of strings, arrays, sequences, etc., it must be remembered that Nim uses zero-based indices."          
          text "\x0A            "          
          p():            
            text t "So the string "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b"            
            text t " "            
            text "is of length 19, and two different ways of specifying the indices are"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="StringLit"):              
              text "\""              
              text t "Slices are useless."              
              text "\""            
            text "\x0A "            
            span(class="Operator"):              
              text t "|"            
            text t "          "            
            span(class="Operator"):              
              text t "|"            
            text t "     "            
            span(class="Operator"):              
              text t "|"            
            text "\x0A "            
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
            text "\x0A"            
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
          text "\x0A            "          
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
            text "provides a short-hand way of specifying the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b.len-1"            
            text t "."          
          text "\x0A            "          
          p():            
            text "In the above example, because the string ends in a period, to get the portion of the string that is "            
            text "\""            
            text t "useless"            
            text "\""            
            text t " "            
            text t "and replace it with "            
            text "\""            
            text t "useful"            
            text "\""            
            text t "."          
          text "\x0A            "          
          p():            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[11..^2]"            
            text t " "            
            text t "is the portion "            
            text "\""            
            text t "useless"            
            text "\""            
            text ", and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[11..^2] = "                
                text "\""                
                text t "useful"                
                text "\""            
            text t " "            
            text "replaces the "            
            text "\""            
            text t "useless"            
            text "\""            
            text t " "            
            text t "portion with "            
            text "\""            
            text t "useful"            
            text "\""            
            text t ", giving the result "            
            text "\""            
            text t "Slices are useful."            
            text "\""          
          text "\x0A            "          
          p():            
            text t "Note: alternate ways of writing this are "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "b[^8..^2] = "                
                text "\""                
                text t "useful"                
                text "\""            
            text t " "            
            text t "or as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text "b[11..b.len-2] = "                
                text "\""                
                text t "useful"                
                text "\""            
            text t " "            
            text t "or as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b[11.."                
                text t "<"                
                text "b.len-1] = "                
                text "\""                
                text t "useful"                
                text "\""            
            text t "."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-objects",href="#advanced-types-objects"):              
              text t "Objects"          
          text "\x0A            "          
          p():            
            text "The default type to pack different values together in a single structure with a name is the object type. An object is a value type, which means that when an object is assigned to a new variable all its components are copied as well."          
          text "\x0A            "          
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
            text "where all of its fields can be initialized. Unspecified fields will get their default value."          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "Person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text "\x0A\x0A"            
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
              text "\""              
              text t "Peter"              
              text "\""            
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
            text "\x0A\x0A"            
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
              text "\""              
              text t "Peter"              
              text "\""            
            text "\x0A"            
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
            text "\x0A\x0A"            
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
            text "\x0A\x0A"            
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
            text "\x0A\x0A"            
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
            text "\x0A"            
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
            text "\x0A\x0A\x0A"            
            span(class="Comment"):              
              text t "# the order may be changed"            
            text "\x0A"            
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
              text "\""              
              text t "Quentin"              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# not every member needs to be specified"            
            text "\x0A"            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# unspecified members will be initialized with their default"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# values. In this case it is the empty string."            
            text "\x0A"            
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
              text "\""              
              text "\""          
          text "\x0A            "          
          p():            
            text t "Object fields that should be visible from outside the defining module have to be marked with "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "*"            
            text t "."          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A    "            
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
            text "\x0A    "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Operator"):              
              text t "*:"            
            text t " "            
            span(class="Identifier"):              
              text t "int"          
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-tuples",href="#advanced-types-tuples"):              
              text t "Tuples"          
          text "\x0A            "          
          p():            
            text "Tuples are very much like what you have seen so far from objects. They are value types where the assignment operator copies each component. Unlike object types though, tuple types are structurally typed, meaning different tuple-types are "            
            em():              
              text t "equivalent"            
            text t " "            
            text "if they specify fields of the same type and of the same name in the same order."          
          text "\x0A            "          
          p():            
            text t "The constructor "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "()"            
            text t " "            
            text "can be used to construct tuples. The order of the fields in the constructor must match the order in the tuple\'s definition. But unlike objects, a name for the tuple type may not be used here."          
          text "\x0A            "          
          p():            
            text t "Like the object type the notation "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "t.field"            
            text t " "            
            text "is used to access a tuple\'s field. Another notation that is not available for objects is "            
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
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
            span(class="Comment"):              
              text t "# type representing a person:"            
            text "\x0A  "            
            span(class="Comment"):              
              text t "# A person consists of a name and an age."            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "Person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "tuple"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text "\x0A    "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text "\x0A  \x0A  "            
            span(class="Comment"):              
              text t "# Alternative syntax for an equivalent type."            
            text "\x0A  "            
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
            text "\x0A  \x0A  "            
            span(class="Comment"):              
              text t "# anonymous field syntax"            
            text "\x0A  "            
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
            text "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "person"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "personX"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "PersonX"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "personY"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "PersonY"            
            text "\x0A\x0A"            
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
              text "\""              
              text t "Peter"              
              text "\""            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# Person and PersonX are equivalent"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "personX"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# Create a tuple with anonymous fields:"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "personY"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text "\""              
              text t "Peter"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "30"            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# A tuple with anonymous fields is compatible with a tuple that has"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# field names."            
            text "\x0A"            
            span(class="Identifier"):              
              text t "person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "personY"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "personY"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "person"            
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# Usually used for short tuple initialization syntax"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "person"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text "\""              
              text t "Peter"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "30"            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A\x0A"            
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
              text "\""              
              text t "Peter"              
              text "\""            
            text "\x0A"            
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
            text "\x0A\x0A"            
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
              text "\""              
              text t "Peter"              
              text "\""            
            text "\x0A"            
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
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# You don't need to declare tuples in a separate type section."            
            text "\x0A"            
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "building"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text "\""              
              text t "Rue del Percebe"              
              text "\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="DecNumber"):              
              text t "13"            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "building"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "street"            
            text "\x0A\x0A"            
            span(class="Comment"):              
              text t "# The following line does not compile, they are different tuples!"            
            text "\x0A"            
            span(class="Comment"):              
              text t "#person = building"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# --"              
              text t ">"              
              text t " "              
              text t "Error: type mismatch: got (tuple[street: string, number: int])"            
            text "\x0A"            
            span(class="Comment"):              
              text t "#     but expected 'Person'"          
          text "\x0A            "          
          p():            
            text "Even though you don\'t need to declare a type for a tuple to use it, tuples created with different field names will be considered different objects despite having the same field types."          
          text "\x0A            "          
          p():            
            text t "Tuples can be "            
            em():              
              text t "unpacked"            
            text t " "            
            text "during variable assignment (and only then!). This can be handy to assign directly the fields of the tuples to individually named variables. An example of this is the "            
            a(class="reference external",href="os.html#splitFile"):              
              text t "splitFile"            
            text t " "            
            text t "proc from the "            
            a(class="reference external",href="os.html"):              
              text t "os module"            
            text t " "            
            text "which returns the directory, name and extension of a path at the same time. For tuple unpacking to work you must use parentheses around the values you want to assign the unpacking to, otherwise you will be assigning the same value to all the individual variables! For example:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "os"            
            text "\x0A\x0A"            
            span(class="Keyword"):              
              text t "let"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "path"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text "\""              
              text t "usr/local/nimc.html"              
              text "\""            
            text "\x0A  "            
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
            text "\x0A  "            
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
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "dir"            
            text t "      "            
            span(class="Comment"):              
              text t "# outputs `usr/local`"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "name"            
            text t "     "            
            span(class="Comment"):              
              text t "# outputs `nimc`"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "ext"            
            text t "      "            
            span(class="Comment"):              
              text t "# outputs `.html`"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# All the following output the same line:"            
            text "\x0A"            
            span(class="Comment"):              
              text t "# `(dir: usr/local, name: nimc, ext: .html)`"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "baddir"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "badname"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "badext"          
          text "\x0A            "          
          p():            
            text "Fields of tuples are always public, they don\'t need to be explicity marked to be exported, unlike for example fields in an object type."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-reference-and-pointer-types",href="#advanced-types-reference-and-pointer-types"):              
              text t "Reference and pointer types"          
          text "\x0A            "          
          p():            
            text "References (similar to pointers in other programming languages) are a way to introduce many-to-one relationships. This means different references can point to and modify the same location in memory."          
          text "\x0A            "          
          p():            
            text t "Nim distinguishes between "            
            span(id="traced_1"):              
              text t "traced"            
            text t " "            
            text t "and "            
            span(id="untraced_1"):              
              text t "untraced"            
            text "\x0A              "            
            text t "references. Untraced references are also called "            
            em():              
              text t "pointers"            
            text ". Traced references point to objects in a garbage collected heap, untraced references point to manually allocated objects or to objects elsewhere in memory. Thus untraced references are "            
            em():              
              text t "unsafe"            
            text ". However for certain low-level operations (e.g., accessing the hardware), untraced references are necessary."          
          text "\x0A            "          
          p():            
            text t "Traced references are declared with the "            
            strong():              
              text t "ref"            
            text t " "            
            text "keyword; untraced references are declared with the "            
            strong():              
              text t "ptr"            
            text t " "            
            text t "keyword."          
          text "\x0A            "          
          p():            
            text t "The empty "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "[]"            
            text t " "            
            text "subscript notation can be used to "            
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
            text "(array/string/sequence index operator) operators perform implicit dereferencing operations for reference types:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text "\x0A  "            
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
            text "\x0A    "            
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
            text "\x0A    "            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Node"            
            text "\x0A"            
            span(class="Identifier"):              
              text t "new"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A"            
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
            text "\x0A"            
            span(class="Comment"):              
              text t "# no need to write n[].data; in fact n[].data is highly discouraged!"          
          text "\x0A            "          
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
            text "\x0A              "            
            text t "can be used. The "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text "module\'s documentation contains further details."          
          text "\x0A            "          
          p():            
            text t "If a reference points to "            
            em():              
              text t "nothing"            
            text t ", it has the value "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "nil"            
            text t "."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-procedural-type",href="#advanced-types-procedural-type"):              
              text t "Procedural type"          
          text "\x0A            "          
          p():            
            text t "A procedural type is a (somewhat abstract) pointer to a procedure. "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "nil"            
            text t " "            
            text "is an allowed value for a variable of a procedural type. Nim uses procedural types to achieve "            
            span(id="functional_1"):              
              text t "functional"            
            text t " "            
            text t "programming techniques."          
          text "\x0A            "          
          p():            
            text t "Example:"          
          text "\x0A            "          
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
            text "\x0A\x0A"            
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
            text "\x0A  "            
            span(class="Keyword"):              
              text t "const"            
            text "\x0A    "            
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
            text "\x0A  "            
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
            text "\x0A    "            
            span(class="Identifier"):              
              text t "action"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "d"            
            span(class="Punctuation"):              
              text t ")"            
            text "\x0A\x0A"            
            span(class="Identifier"):              
              text t "forEach"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "echoItem"            
            span(class="Punctuation"):              
              text t ")"          
          text "\x0A            "          
          p():            
            text "A subtle issue with procedural types is that the calling convention of the procedure influences the type compatibility: procedural types are only compatible if they have the same calling convention. The different calling conventions are listed in the "            
            a(class="reference external",href="manual.html#types-procedural-type"):              
              text t "manual"            
            text t "."          
          text "\x0A\x0A            "          
          h2():            
            a(class="toc-backref",id="advanced-types-distinct-type",href="#advanced-types-distinct-type"):              
              text "Distinct type"          
          text "\x0A            "          
          p():            
            text t "A Distinct type allows for the creation of new type that "            
            text "\""            
            text "does not imply a subtype relationship between it and its base type"            
            text "\""            
            text t ". You must "            
            strong():              
              text t "explicitly"            
            text t " "            
            text "define all behaviour for the distinct type. To help with this, both the distinct type and its base type can cast from one type to the other. Examples are provided in the "            
            a(class="reference external",href="manual.html#types-distinct-type"):              
              text t "manual"            
            text t "."          
          text "\x0A\x0A            "          
          h1():            
            a(class="toc-backref",id="modules",href="#modules"):              
              text t "Modules"          
          text "\x0A            "          
          p():            
            text "Nim supports splitting a program into pieces with a module concept. Each module is in its own file. Modules enable "            
            span(id="information-hiding_1"):              
              text t "information hiding"            
            text t " "            
            text t "and "            
            span(id="separate-compilation_1"):              
              text t "separate compilation"            
            text ". A module may gain access to the symbols of another module by using the "            
            span(id="import_1"):              
              text t "import"            
            text t " "            
            text "statement. Only top-level symbols that are marked with an asterisk ("            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "*"            
            text t ") are exported:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module A"            
            text "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text "\x0A  "            
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
            text "\x0A\x0A"            
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
            text "\x0A  "            
            span(class="Comment"):              
              text t "# allocate a new sequence:"            
            text "\x0A  "            
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
            text "\x0A  "            
            span(class="Comment"):              
              text t "# multiply two int sequences:"            
            text "\x0A  "            
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
            text "\x0A\x0A"            
            span(class="Keyword"):              
              text t "when"            
            text t " "            
            span(class="Identifier"):              
              text t "isMainModule"            
            span(class="Punctuation"):              
              text t ":"            
            text "\x0A  "            
            span(class="Comment"):              
              text t "# test the new ``*`` operator for sequences:"            
            text "\x0A  "            
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
          text "\x0A            "          
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
          text "\x0A            "          
          p():            
            text "A module\'s top-level statements are executed at the start of the program. This can be used to initialize complex data structures for example."          
          text "\x0A            "          
          p():            
            text t "Each module has a special magic constant "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "isMainModule"            
            text t " "            
            text "that is true if the module is compiled as the main file. This is very useful to embed tests within the module as shown by the above example."          
          text "\x0A            "          
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
            text "be qualified. A symbol is ambiguous if it is defined in two (or more) different modules and both modules are imported by a third one:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module A"            
            text "\x0A"            
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
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module B"            
            text "\x0A"            
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
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module C"            
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A\x0A"            
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
            text "\x0A"            
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
          text "\x0A            "          
          p():            
            text t "But this rule does not apply to procedures or iterators. Here the overloading rules apply:"          
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module A"            
            text "\x0A"            
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
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module B"            
            text "\x0A"            
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
          text "\x0A            "          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# Module C"            
            text "\x0A"            
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
            text "\x0A"            
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
            text "\x0A"            
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
              text "\""              
              text "\""            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "  "            
            span(class="Comment"):              
              text t "# no error: B.x is called"            
            text "\x0A\x0A"            
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
            text "\x0A"            
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
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="modules-excluding-symbols",href="#modules-excluding-symbols"):              
              text "Excluding symbols"          
          text "\x0A            "          
          p():            
            text t "The normal "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "import"            
            text t " "            
            text "statement will bring in all exported symbols. These can be limited by naming symbols which should be excluded with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "except"            
            text t " "            
            text t "qualifier."          
          text "\x0A            "          
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
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="modules-from-statement",href="#modules-from-statement"):              
              text t "From statement"            
            text "\x0A            "          
          text "\x0A            "          
          p():            
            text t "We have already seen the simple "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "import"            
            text "\x0A              "            
            text "statement that just imports all exported symbols. An alternative that only imports listed symbols is the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "from import"            
            text t " "            
            text t "statement:"          
          text "\x0A            "          
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
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "from"            
            text t " "            
            text "statement can also force namespace qualification on symbols, thereby making symbols available, but needing to be qualified to be used."          
          text "\x0A            "          
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
            text "\x0A\x0A"            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "           "            
            span(class="Comment"):              
              text t "# use x without any qualification"          
          text "\x0A            "          
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
            text "\x0A\x0A"            
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
            text "\x0A\x0A"            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "           "            
            span(class="Comment"):              
              text t "# using x here without qualification is a compile error"          
          text "\x0A            "          
          p():            
            text "Since module names are generally long to be descriptive, you can also define a shorter alias to use when qualifying symbols."          
          text "\x0A            "          
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
            text "\x0A\x0A"            
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
          text "\x0A            "          
          h2():            
            a(class="toc-backref",id="modules-include-statement",href="#modules-include-statement"):              
              text "Include statement"          
          text "\x0A            "          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "include"            
            text t " "            
            text "statement does something fundamentally different than importing a module: it merely includes the contents of a file. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "include"            
            text t " "            
            text "statement is useful to split up a large module into several files:"          
          text "\x0A            "          
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
          text "\x0A            "          
          h1():            
            a(class="toc-backref",id="part-2",href="#part-2"):              
              text t "Part 2"          
          text "\x0A            "          
          p():            
            text "So, now that we are done with the basics, let\'s see what Nim offers apart from a nice syntax for procedural programming: "            
            a(class="reference external",href="tut2.html"):              
              text t "Part II"          
          text "\x0A          "        
        text "\x0A      "      
      text "\x0A\x0A      "      
      tdiv(class="row"):        
        text "\x0A        "        
        tdiv(class="twelve-columns footer"):          
          text "\x0A          "          
          text "\x0A          "          
          text "\x0A          "          
          small():            
            text t "Made with Nim. Generated: 2019-10-15 09:46:56 UTC"          
          text "\x0A        "        
        text "\x0A      "      
      text "\x0A    "    
    text "\x0A  "
    tdiv(style="position:absolute;right:0;top:5%;"):
      a(onclick = zhCN):span: text "Chinese |"
      a(onclick = enUS):span: text " English"  
  
setRenderer createDom
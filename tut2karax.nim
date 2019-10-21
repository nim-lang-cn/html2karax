import karax/[karaxdsl,vdom, karax, vstyles]
import translations

proc createDom():VNode = 
  buildHtml tdiv(class="document",id="documentId"):    
    text t "\x0A  "    
    tdiv(class="container"):      
      text t "\x0A    "      
      h1(class="title"):        
        text t "Nim Tutorial (Part II)"      
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
            li():              
              a(class="reference",id="pragmas_toc",href="#pragmas"):                
                text t "Pragmas"            
            text t "\x0A"            
            li():              
              a(class="reference",id="object-oriented-programming_toc",href="#object-oriented-programming"):                
                text t "Object Oriented Programming"            
            text t "\x0A"            
            ul(class="simple"):              
              li():                
                a(class="reference",id="object-oriented-programming-inheritance_toc",href="#object-oriented-programming-inheritance"):                  
                  text t "Inheritance"              
              text t "\x0A"              
              li():                
                a(class="reference",id="object-oriented-programming-mutually-recursive-types_toc",href="#object-oriented-programming-mutually-recursive-types"):                  
                  text t "Mutually recursive types"              
              text t "\x0A"              
              li():                
                a(class="reference",id="object-oriented-programming-type-conversions_toc",href="#object-oriented-programming-type-conversions"):                  
                  text t "Type conversions"              
              text t "\x0A"              
              li():                
                a(class="reference",id="object-oriented-programming-object-variants_toc",href="#object-oriented-programming-object-variants"):                  
                  text t "Object variants"              
              text t "\x0A"              
              li():                
                a(class="reference",id="object-oriented-programming-method-call-syntax_toc",href="#object-oriented-programming-method-call-syntax"):                  
                  text t "Method call syntax"              
              text t "\x0A"              
              li():                
                a(class="reference",id="object-oriented-programming-properties_toc",href="#object-oriented-programming-properties"):                  
                  text t "Properties"              
              text t "\x0A"              
              li():                
                a(class="reference",id="object-oriented-programming-dynamic-dispatch_toc",href="#object-oriented-programming-dynamic-dispatch"):                  
                  text t "Dynamic dispatch"              
              text t "\x0A"            
            li():              
              a(class="reference",id="exceptions_toc",href="#exceptions"):                
                text t "Exceptions"            
            text t "\x0A"            
            ul(class="simple"):              
              li():                
                a(class="reference",id="exceptions-raise-statement_toc",href="#exceptions-raise-statement"):                  
                  text t "Raise statement"              
              text t "\x0A"              
              li():                
                a(class="reference",id="exceptions-try-statement_toc",href="#exceptions-try-statement"):                  
                  text t "Try statement"              
              text t "\x0A"              
              li():                
                a(class="reference",id="exceptions-annotating-procs-with-raised-exceptions_toc",href="#exceptions-annotating-procs-with-raised-exceptions"):                  
                  text t "Annotating procs with raised exceptions"              
              text t "\x0A"            
            li():              
              a(class="reference",id="generics_toc",href="#generics"):                
                text t "Generics"            
            text t "\x0A"            
            li():              
              a(class="reference",id="templates_toc",href="#templates"):                
                text t "Templates"            
            text t "\x0A"            
            ul(class="simple"):              
              li():                
                a(class="reference",id="templates-examplecolon-lifting-procs_toc",href="#templates-examplecolon-lifting-procs"):                  
                  text t "Example: Lifting Procs"              
              text t "\x0A"            
            li():              
              a(class="reference",id="compilation-to-javascript_toc",href="#compilation-to-javascript"):                
                text t "Compilation to JavaScript"            
            text t "\x0A"            
            li():              
              a(class="reference",id="part-3_toc",href="#part-3"):                
                text t "Part 3"            
            text t "\x0A\x0A"          
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
                    text t "Andreas Rumpf"                
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
                text t "\"Repetition renders the ridiculous reasonable.\" -- Norman Wildberger"            
            text t "\x0A"          
          p():            
            text t "This document is a tutorial for the advanced constructs of the "            
            em():              
              text t "Nim"            
            text t " "            
            text t "programming language. "            
            strong():              
              text t "Note that this document is somewhat obsolete as the"            
            text t " "            
            a(class="reference external",href="manual.html"):              
              text t "manual"            
            text t " "            
            strong():              
              text t "contains many more examples of the advanced language features."          
          text t "\x0A\x0A"          
          h1():            
            a(class="toc-backref",id="pragmas",href="#pragmas"):              
              text t "Pragmas"          
          p():            
            text t "Pragmas are Nim's method to give the compiler additional information/ commands without introducing a massive number of new keywords. Pragmas are enclosed in the special "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "{."            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t ".}"            
            text t " "            
            text t "curly dot brackets. This tutorial does not cover pragmas. See the "            
            a(class="reference external",href="manual.html#pragmas"):              
              text t "manual"            
            text t " "            
            text t "or "            
            a(class="reference external",href="nimc.html#additional-features"):              
              text t "user guide"            
            text t " "            
            text t "for a description of the available pragmas."          
          text t "\x0A\x0A"          
          h1():            
            a(class="toc-backref",id="object-oriented-programming",href="#object-oriented-programming"):              
              text t "Object Oriented Programming"          
          p():            
            text t "While Nim's support for object oriented programming (OOP) is minimalistic, powerful OOP techniques can be used. OOP is seen as "            
            em():              
              text t "one"            
            text t " "            
            text t "way to design a program, not "            
            em():              
              text t "the only"            
            text t " "            
            text t "way. Often a procedural approach leads to simpler and more efficient code. In particular, preferring composition over inheritance is often the better design."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="object-oriented-programming-inheritance",href="#object-oriented-programming-inheritance"):              
              text t "Inheritance"          
          p():            
            text t "Inheritance in Nim is entirely optional. To enable inheritance with runtime type information the object needs to inherit from "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "RootObj"            
            text t ".  This can be done directly, or indirectly by inheriting from an object that inherits from "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "RootObj"            
            text t ".  Usually types with inheritance are also marked as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "ref"            
            text t " "            
            text t "types even though this isn't strictly enforced. To check at runtime if an object is of a certain type, the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "of"            
            text t " "            
            text t "operator can be used."          
          text t "\x0A"          
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
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "RootObj"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Operator"):              
              text t "*:"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t "  "            
            span(class="Comment"):              
              text t "# the * means that `name` is accessible from other modules"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "       "            
            span(class="Comment"):              
              text t "# no * means that the field is hidden from other modules"            
            text t "\x0A  \x0A  "            
            span(class="Identifier"):              
              text t "Student"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
            text t " "            
            span(class="Comment"):              
              text t "# Student inherits from Person"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "id"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "                      "            
            span(class="Comment"):              
              text t "# with an id field"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "student"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Student"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "person"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "student"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "Student"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# is true"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# object construction:"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "student"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "Student"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="StringLit"):              
              text t "\"Anton\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "age"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="DecNumber"):              
              text t "5"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "id"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "student"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Punctuation"):              
              text t "]"          
          p():            
            text t "Inheritance is done with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "object of"            
            text t " "            
            text t "syntax. Multiple inheritance is currently not supported. If an object type has no suitable ancestor, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "RootObj"            
            text t " "            
            text t "can be used as its ancestor, but this is only a convention. Objects that have no ancestor are implicitly "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "final"            
            text t ". You can use the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "inheritable"            
            text t " "            
            text t "pragma to introduce new object roots apart from "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "system.RootObj"            
            text t ". (This is used in the GTK wrapper for instance.)"          
          text t "\x0A"          
          p():            
            text t "Ref objects should be used whenever inheritance is used. It isn't strictly necessary, but with non-ref objects assignments such as "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "let person: Person = Student(id: 123)"            
            text t " "            
            text t "will truncate subclass fields."          
          text t "\x0A"          
          p():            
            strong():              
              text t "Note"            
            text t ": Composition ("            
            em():              
              text t "has-a"            
            text t " "            
            text t "relation) is often preferable to inheritance ("            
            em():              
              text t "is-a"            
            text t " "            
            text t "relation) for simple code reuse. Since objects are value types in Nim, composition is as efficient as inheritance."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="object-oriented-programming-mutually-recursive-types",href="#object-oriented-programming-mutually-recursive-types"):              
              text t "Mutually recursive types"          
          p():            
            text t "Objects, tuples and references can model quite complex data structures which depend on each other; they are "            
            em():              
              text t "mutually recursive"            
            text t ". In Nim these types can only be declared within a single type section. (Anything else would require arbitrary symbol lookahead which slows down compilation.)"          
          text t "\x0A"          
          p():            
            text t "Example:"          
          text t "\x0A"          
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
            text t "  "            
            span(class="Comment"):              
              text t "# a reference to an object with the following field:"            
            text t "\x0A    "            
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
            text t "     "            
            span(class="Comment"):              
              text t "# left and right subtrees"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "sym"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Identifier"):              
              text t "Sym"            
            text t "     "            
            span(class="Comment"):              
              text t "# leaves contain a reference to a Sym"            
            text t "\x0A  \x0A  "            
            span(class="Identifier"):              
              text t "Sym"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t "       "            
            span(class="Comment"):              
              text t "# a symbol"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "name"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t "     "            
            span(class="Comment"):              
              text t "# the symbol's name"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "line"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "        "            
            span(class="Comment"):              
              text t "# the line the symbol was declared in"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "code"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Node"            
            text t "       "            
            span(class="Comment"):              
              text t "# the symbol's abstract syntax tree"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="object-oriented-programming-type-conversions",href="#object-oriented-programming-type-conversions"):              
              text t "Type conversions"          
          p():            
            text t "Nim distinguishes between "            
            span(id="type-casts_1"):              
              text t "type casts"            
            text t " "            
            text t "and "            
            span(id="type-conversions_1"):              
              text t "type conversions"            
            text t ". Casts are done with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "cast"            
            text t " "            
            text t "operator and force the compiler to interpret a bit pattern to be of another type."          
          text t "\x0A"          
          p():            
            text t "Type conversions are a much more polite way to convert a type into another: They preserve the abstract "            
            em():              
              text t "value"            
            text t ", not necessarily the "            
            em():              
              text t "bit-pattern"            
            text t ". If a type conversion is not possible, the compiler complains or an exception is raised."          
          text t "\x0A"          
          p():            
            text t "The syntax for type conversions is "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "destination_type(expression_to_convert)"            
            text t " "            
            text t "(like an ordinary call):"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "getID"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Person"            
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
              text t "Student"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "id"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "InvalidObjectConversionError"            
            text t " "            
            text t "exception is raised if "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "x"            
            text t " "            
            text t "is not a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Student"            
            text t "."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="object-oriented-programming-object-variants",href="#object-oriented-programming-object-variants"):              
              text t "Object variants"          
          p():            
            text t "Often an object hierarchy is overkill in certain situations where simple variant types are needed."          
          text t "\x0A"          
          p():            
            text t "An example:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Comment"):              
              text t "# This is an example how an abstract syntax tree could be modelled in Nim"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "NodeKind"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "enum"            
            text t "  "            
            span(class="Comment"):              
              text t "# the different node types"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "nkInt"            
            span(class="Punctuation"):              
              text t ","            
            text t "          "            
            span(class="Comment"):              
              text t "# a leaf with an integer value"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "nkFloat"            
            span(class="Punctuation"):              
              text t ","            
            text t "        "            
            span(class="Comment"):              
              text t "# a leaf with a float value"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "nkString"            
            span(class="Punctuation"):              
              text t ","            
            text t "       "            
            span(class="Comment"):              
              text t "# a leaf with a string value"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "nkAdd"            
            span(class="Punctuation"):              
              text t ","            
            text t "          "            
            span(class="Comment"):              
              text t "# an addition"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "nkSub"            
            span(class="Punctuation"):              
              text t ","            
            text t "          "            
            span(class="Comment"):              
              text t "# a subtraction"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "nkIf"            
            text t "            "            
            span(class="Comment"):              
              text t "# an if statement"            
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
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "kind"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "NodeKind"            
            text t "  "            
            span(class="Comment"):              
              text t "# the ``kind`` field is the discriminator"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "nkInt"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "intVal"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "nkFloat"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "floatVal"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "float"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "nkString"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "strVal"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "nkAdd"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "nkSub"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
            span(class="Identifier"):              
              text t "leftOp"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "rightOp"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Node"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "nkIf"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
            span(class="Identifier"):              
              text t "condition"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "thenPart"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "elsePart"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Node"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "Node"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "kind"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "nkFloat"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "floatVal"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="FloatNumber"):              
              text t "1.0"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# the following statement raises an `FieldError` exception, because"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# n.kind's value does not fit:"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "strVal"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\"\""          
          p():            
            text t "As can been seen from the example, an advantage to an object hierarchy is that no conversion between different object types is needed. Yet, access to invalid object fields raises an exception."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="object-oriented-programming-method-call-syntax",href="#object-oriented-programming-method-call-syntax"):              
              text t "Method call syntax"          
          p():            
            text t "There is a syntactic sugar for calling routines: The syntax "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "obj.method(args)"            
            text t " "            
            text t "can be used instead of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "method(obj, args)"            
            text t ". If there are no remaining arguments, the parentheses can be omitted: "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "obj.len"            
            text t " "            
            text t "(instead of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "len(obj)"            
            text t ")."          
          text t "\x0A"          
          p():            
            text t "This method call syntax is not restricted to objects, it can be used for any type:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "strutils"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"abc\""            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            text t " "            
            span(class="Comment"):              
              text t "# is the same as echo len(\"abc\")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"abc\""            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "toUpperAscii"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t "{"            
            span(class="CharLit"):              
              text t "'a'"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="CharLit"):              
              text t "'b'"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="CharLit"):              
              text t "'c'"            
            span(class="Punctuation"):              
              text t "}"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "card"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"Hallo\""            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# the same as writeLine(stdout, \"Hallo\")"          
          p():            
            text t "(Another way to look at the method call syntax is that it provides the missing postfix notation.)"          
          text t "\x0A"          
          p():            
            text t "So \"pure object oriented\" code is easy to write:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "strutils"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "sequtils"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"Give a list of numbers (separated by spaces): \""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "write"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stdin"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "splitWhitespace"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "map"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "parseInt"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "max"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "$"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\" is the maximum!\""            
            span(class="Punctuation"):              
              text t ")"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="object-oriented-programming-properties",href="#object-oriented-programming-properties"):              
              text t "Properties"          
          p():            
            text t "As the above example shows, Nim has no need for "            
            em():              
              text t "get-properties"            
            text t ": Ordinary get-procedures that are called with the "            
            em():              
              text t "method call syntax"            
            text t " "            
            text t "achieve the same. But setting a value is different; for this a special setter syntax is needed:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Socket"            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "RootObj"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "h"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t " "            
            span(class="Comment"):              
              text t "# cannot be accessed from the outside of the module due to missing star"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Identifier"):              
              text t "host"            
            span(class="Operator"):              
              text t "="            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "Socket"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "inline"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "## setter of host address"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "h"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "host"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Socket"            
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
              text t "inline"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "## getter of host address"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "h"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Socket"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "new"            
            text t " "            
            span(class="Identifier"):              
              text t "s"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "s"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "host"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="DecNumber"):              
              text t "34"            
            text t "  "            
            span(class="Comment"):              
              text t "# same as `host=`(s, 34)"          
          p():            
            text t "(The example also shows "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "inline"            
            text t " "            
            text t "procedures.)"          
          text t "\x0A"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "[]"            
            text t " "            
            text t "array access operator can be overloaded to provide "            
            span(id="array-properties_1"):              
              text t "array properties"            
            text t ":"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Vector"            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t "\x0A    "            
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
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "float"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Operator"):              
              text t "="            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "v"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "Vector"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "float"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# setter"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "v"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "x"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "v"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "y"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "v"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "z"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "value"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "assert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "false"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "*"            
            text t " "            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "v"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Vector"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
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
              text t "float"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# getter"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "case"            
            text t " "            
            span(class="Identifier"):              
              text t "i"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "v"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "x"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "v"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "y"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "v"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "z"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "assert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "false"            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "The example is silly, since a vector is better modelled by a tuple which already provides "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "v[]"            
            text t " "            
            text t "access."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="object-oriented-programming-dynamic-dispatch",href="#object-oriented-programming-dynamic-dispatch"):              
              text t "Dynamic dispatch"          
          p():            
            text t "Procedures always use static dispatch. For dynamic dispatch replace the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "proc"            
            text t " "            
            text t "keyword by "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "method"            
            text t ":"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Expression"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "RootObj"            
            text t " "            
            span(class="Comment"):              
              text t "## abstract base class for an expression"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Literal"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "Expression"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "PlusExpr"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "Expression"            
            text t "\x0A    "            
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
              text t "Expression"            
            text t "\x0A\x0A"            
            span(class="Comment"):              
              text t "# watch out: 'eval' relies on dynamic binding"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "method"            
            text t " "            
            span(class="Identifier"):              
              text t "eval"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "e"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Expression"            
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
              text t "base"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# override this base method"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "quit"            
            text t " "            
            span(class="StringLit"):              
              text t "\"to override!\""            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "method"            
            text t " "            
            span(class="Identifier"):              
              text t "eval"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "e"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Literal"            
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
            span(class="Identifier"):              
              text t "e"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "x"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "method"            
            text t " "            
            span(class="Identifier"):              
              text t "eval"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "e"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "PlusExpr"            
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
            span(class="Identifier"):              
              text t "eval"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "e"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="Identifier"):              
              text t "eval"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "e"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "newLit"            
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
              text t "Literal"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "Literal"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "newPlus"            
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
              text t "Expression"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "PlusExpr"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "PlusExpr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
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
              text t "b"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "eval"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "newPlus"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "newPlus"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "newLit"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "1"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "newLit"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "2"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "newLit"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "4"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "Note that in the example the constructors "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newLit"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newPlus"            
            text t " "            
            text t "are procs because it makes more sense for them to use static binding, but "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "eval"            
            text t " "            
            text t "is a method because it requires dynamic binding."          
          text t "\x0A"          
          p():            
            strong():              
              text t "Note:"            
            text t " "            
            text t "Starting from Nim 0.20, to use multi-methods one must explicitly pass "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "--multimethods:on"            
            text t " "            
            text t "when compiling."          
          text t "\x0A"          
          p():            
            text t "In a multi-method all parameters that have an object type are used for the dispatching:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Thing"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "RootObj"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "Unit"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Keyword"):              
              text t "of"            
            text t " "            
            span(class="Identifier"):              
              text t "Thing"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "int"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "method"            
            text t " "            
            span(class="Identifier"):              
              text t "collide"            
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
              text t "Thing"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "inline"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "quit"            
            text t " "            
            span(class="StringLit"):              
              text t "\"to override!\""            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "method"            
            text t " "            
            span(class="Identifier"):              
              text t "collide"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Thing"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Unit"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "inline"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"1\""            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "method"            
            text t " "            
            span(class="Identifier"):              
              text t "collide"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Unit"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "Thing"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "inline"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"2\""            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
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
              text t "Unit"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "new"            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "new"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "collide"            
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
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# output: 2"          
          p():            
            text t "As the example demonstrates, invocation of a multi-method cannot be ambiguous: Collide 2 is preferred over collide 1 because the resolution works from left to right. Thus "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Unit, Thing"            
            text t " "            
            text t "is preferred over "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "Thing, Unit"            
            text t "."          
          text t "\x0A"          
          p():            
            strong():              
              text t "Performance note"            
            text t ": Nim does not produce a virtual method table, but generates dispatch trees. This avoids the expensive indirect branch for method calls and enables inlining. However, other optimizations like compile time evaluation or dead code elimination do not work with methods."          
          text t "\x0A\x0A"          
          h1():            
            a(class="toc-backref",id="exceptions",href="#exceptions"):              
              text t "Exceptions"          
          p():            
            text t "In Nim exceptions are objects. By convention, exception types are suffixed with 'Error'. The "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text t "module defines an exception hierarchy that you might want to stick to. Exceptions derive from "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "system.Exception"            
            text t ", which provides the common interface."          
          text t "\x0A"          
          p():            
            text t "Exceptions have to be allocated on the heap because their lifetime is unknown. The compiler will prevent you from raising an exception created on the stack. All raised exceptions should at least specify the reason for being raised in the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "msg"            
            text t " "            
            text t "field."          
          text t "\x0A"          
          p():            
            text t "A convention is that exceptions should be raised in "            
            em():              
              text t "exceptional"            
            text t " "            
            text t "cases: For example, if a file cannot be opened, this should not raise an exception since this is quite common (the file may not exist)."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="exceptions-raise-statement",href="#exceptions-raise-statement"):              
              text t "Raise statement"          
          p():            
            text t "Raising an exception is done with the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "raise"            
            text t " "            
            text t "statement:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "e"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Identifier"):              
              text t "OSError"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "new"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "e"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "e"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "msg"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="StringLit"):              
              text t "\"the request to the OS failed\""            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "raise"            
            text t " "            
            span(class="Identifier"):              
              text t "e"          
          p():            
            text t "If the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "raise"            
            text t " "            
            text t "keyword is not followed by an expression, the last exception is "            
            em():              
              text t "re-raised"            
            text t ". For the purpose of avoiding repeating this common code pattern, the template "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "newException"            
            text t " "            
            text t "in the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "system"            
            text t " "            
            text t "module can be used:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "raise"            
            text t " "            
            span(class="Identifier"):              
              text t "newException"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "OSError"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\"the request to the OS failed\""            
            span(class="Punctuation"):              
              text t ")"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="exceptions-try-statement",href="#exceptions-try-statement"):              
              text t "Try statement"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "try"            
            text t " "            
            text t "statement handles exceptions:"          
          text t "\x0A"          
          pre(class="listing"):            
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
            span(class="Comment"):              
              text t "# read the first two lines of a text file that should contain numbers"            
            text t "\x0A"            
            span(class="Comment"):              
              text t "# and tries to add them"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "File"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "open"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\"numbers.txt\""            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "try"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "a"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "b"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "readLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"sum: \""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "parseInt"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "a"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "+"            
            text t " "            
            span(class="Identifier"):              
              text t "parseInt"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "b"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "except"            
            text t " "            
            span(class="Identifier"):              
              text t "OverflowError"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"overflow!\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "except"            
            text t " "            
            span(class="Identifier"):              
              text t "ValueError"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"could not convert string to integer\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "except"            
            text t " "            
            span(class="Identifier"):              
              text t "IOError"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"IO error!\""            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "except"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"Unknown exception!\""            
            text t "\x0A    "            
            span(class="Comment"):              
              text t "# reraise the unknown exception:"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "raise"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "finally"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "close"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "The statements after the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "try"            
            text t " "            
            text t "are executed unless an exception is raised. Then the appropriate "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "except"            
            text t " "            
            text t "part is executed."          
          text t "\x0A"          
          p():            
            text t "The empty "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "except"            
            text t " "            
            text t "part is executed if there is an exception that is not explicitly listed. It is similar to an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "else"            
            text t " "            
            text t "part in "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "if"            
            text t " "            
            text t "statements."          
          text t "\x0A"          
          p():            
            text t "If there is a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "finally"            
            text t " "            
            text t "part, it is always executed after the exception handlers."          
          text t "\x0A"          
          p():            
            text t "The exception is "            
            em():              
              text t "consumed"            
            text t " "            
            text t "in an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "except"            
            text t " "            
            text t "part. If an exception is not handled, it is propagated through the call stack. This means that often the rest of the procedure - that is not within a "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "finally"            
            text t " "            
            text t "clause - is not executed (if an exception occurs)."          
          text t "\x0A"          
          p():            
            text t "If you need to "            
            em():              
              text t "access"            
            text t " "            
            text t "the actual exception object or message inside an "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "except"            
            text t " "            
            text t "branch you can use the "            
            a(class="reference external",href="system.html#getCurrentException"):              
              text t "getCurrentException()"            
            text t " "            
            text t "and "            
            a(class="reference external",href="system.html#getCurrentExceptionMsg"):              
              text t "getCurrentExceptionMsg()"            
            text t " "            
            text t "procs from the "            
            a(class="reference external",href="system.html"):              
              text t "system"            
            text t " "            
            text t "module. Example:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "try"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "doSomethingHere"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "except"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "e"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "getCurrentException"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "msg"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "getCurrentExceptionMsg"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="StringLit"):              
              text t "\"Got exception \""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "repr"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "e"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\" with message \""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "msg"          
          text t "\x0A"          
          h2():            
            a(class="toc-backref",id="exceptions-annotating-procs-with-raised-exceptions",href="#exceptions-annotating-procs-with-raised-exceptions"):              
              text t "Annotating procs with raised exceptions"          
          p():            
            text t "Through the use of the optional "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "{.raises.}"            
            text t " "            
            text t "pragma you can specify that a proc is meant to raise a specific set of exceptions, or none at all. If the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "{.raises.}"            
            text t " "            
            text t "pragma is used, the compiler will verify that this is true. For instance, if you specify that a proc raises "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "IOError"            
            text t ", and at some point it (or one of the procs it calls) starts raising a new exception the compiler will prevent that proc from compiling. Usage example:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "complexProc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "raises"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "IOError"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "ArithmeticError"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Operator"):              
              text t "..."            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "simpleProc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "raises"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Punctuation"):              
              text t "["            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Operator"):              
              text t "..."          
          p():            
            text t "Once you have code like this in place, if the list of raised exception changes the compiler will stop with an error specifying the line of the proc which stopped validating the pragma and the raised exception not being caught, along with the file and line where the uncaught exception is being raised, which may help you locate the offending code which has changed."          
          text t "\x0A"          
          p():            
            text t "If you want to add the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "{.raises.}"            
            text t " "            
            text t "pragma to existing code, the compiler can also help you. You can add the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "{.effects.}"            
            text t " "            
            text t "pragma statement to your proc and the compiler will output all inferred effects up to that point (exception tracking is part of Nim's effect system). Another more roundabout way to find out the list of exceptions raised by a proc is to use the Nim "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "doc2"            
            text t " "            
            text t "command which generates documentation for a whole module and decorates all procs with the list of raised exceptions. You can read more about Nim's "            
            a(class="reference external",href="manual.html#effect-system"):              
              text t "effect system and related pragmas in the manual"            
            text t "."          
          text t "\x0A\x0A"          
          h1():            
            a(class="toc-backref",id="generics",href="#generics"):              
              text t "Generics"          
          p():            
            text t "Generics are Nim's means to parametrize procs, iterators or types with "            
            span(id="type-parameters_1"):              
              text t "type parameters"            
            text t ". They are most useful for efficient type safe containers:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "type"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "ref"            
            text t " "            
            span(class="Keyword"):              
              text t "object"            
            text t " "            
            span(class="Comment"):              
              text t "# BinaryTree is a generic type with"            
            text t "\x0A                              "            
            span(class="Comment"):              
              text t "# generic param ``T``"            
            text t "\x0A    "            
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
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            text t "     "            
            span(class="Comment"):              
              text t "# left and right subtrees; may be nil"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "T"            
            text t "                   "            
            span(class="Comment"):              
              text t "# the data stored in a node"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "newNode"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# constructor for a node"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "new"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "result"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "result"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "data"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "data"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "add"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# insert a node into the tree"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "root"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "root"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "it"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "root"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "it"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
            span(class="Comment"):              
              text t "# compare the data items; uses the generic ``cmp`` proc"            
            text t "\x0A      "            
            span(class="Comment"):              
              text t "# that works for any type that has a ``==`` and ``"              
              text t "<"              
              text t "`` operator"            
            text t "\x0A      "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "c"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "cmp"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "it"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A      "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "c"            
            text t " "            
            span(class="Operator"):              
              text t "<"            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A        "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "it"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "le"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A          "            
            span(class="Identifier"):              
              text t "it"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "le"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t "\x0A          "            
            span(class="Keyword"):              
              text t "return"            
            text t "\x0A        "            
            span(class="Identifier"):              
              text t "it"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "it"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "le"            
            text t "\x0A      "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A        "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "it"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "ri"            
            text t " "            
            span(class="Operator"):              
              text t "=="            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A          "            
            span(class="Identifier"):              
              text t "it"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "ri"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t "\x0A          "            
            span(class="Keyword"):              
              text t "return"            
            text t "\x0A        "            
            span(class="Identifier"):              
              text t "it"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "it"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "ri"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "add"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# convenience proc:"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "newNode"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "data"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "iterator"            
            text t " "            
            span(class="Identifier"):              
              text t "preorder"            
            span(class="Operator"):              
              text t "*"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "T"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# Preorder traversal of a binary tree."            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# Since recursive iterators are not yet implemented,"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "# this uses an explicit stack (which is more efficient anyway):"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "stack"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "seq"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t "]"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "stack"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            text t " "            
            span(class="Operator"):              
              text t ">"            
            text t " "            
            span(class="DecNumber"):              
              text t "0"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "stack"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "pop"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "while"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="Keyword"):              
              text t "nil"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
            span(class="Keyword"):              
              text t "yield"            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "data"            
            text t "\x0A      "            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "stack"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "ri"            
            span(class="Punctuation"):              
              text t ")"            
            text t "  "            
            span(class="Comment"):              
              text t "# push right subtree onto the stack"            
            text t "\x0A      "            
            span(class="Identifier"):              
              text t "n"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "n"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "le"            
            text t "          "            
            span(class="Comment"):              
              text t "# and follow the left pointer"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "BinaryTree"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t "]"            
            text t " "            
            span(class="Comment"):              
              text t "# instantiate a BinaryTree with ``string``"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "newNode"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"hello\""            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# instantiates ``newNode`` and ``add``"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "add"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\"world\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "          "            
            span(class="Comment"):              
              text t "# instantiates the second ``add`` proc"            
            text t "\x0A"            
            span(class="Keyword"):              
              text t "for"            
            text t " "            
            span(class="Identifier"):              
              text t "str"            
            text t " "            
            span(class="Keyword"):              
              text t "in"            
            text t " "            
            span(class="Identifier"):              
              text t "preorder"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "root"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "str"            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "The example shows a generic binary tree. Depending on context, the brackets are used either to introduce type parameters or to instantiate a generic proc, iterator or type. As the example shows, generics work with overloading: the best match of "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "add"            
            text t " "            
            text t "is used. The built-in "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "add"            
            text t " "            
            text t "procedure for sequences is not hidden and is used in the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "preorder"            
            text t " "            
            text t "iterator."          
          text t "\x0A\x0A"          
          h1():            
            a(class="toc-backref",id="templates",href="#templates"):              
              text t "Templates"          
          p():            
            text t "Templates are a simple substitution mechanism that operates on Nim's abstract syntax trees. Templates are processed in the semantic pass of the compiler. They integrate well with the rest of the language and share none of C's preprocessor macros flaws."          
          text t "\x0A"          
          p():            
            text t "To "            
            em():              
              text t "invoke"            
            text t " "            
            text t "a template, call it like a procedure."          
          text t "\x0A"          
          p():            
            text t "Example:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "template"            
            text t " "            
            span(class="Punctuation"):              
              text t "`"            
            span(class="Operator"):              
              text t "!="            
            span(class="Punctuation"):              
              text t "`"            
            text t " "            
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
              text t "# this definition exists in the System module"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "not"            
            text t " "            
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
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "assert"            
            span(class="Punctuation"):              
              text t "("            
            span(class="DecNumber"):              
              text t "5"            
            text t " "            
            span(class="Operator"):              
              text t "!="            
            text t " "            
            span(class="DecNumber"):              
              text t "6"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Comment"):              
              text t "# the compiler rewrites that to: assert(not (5 == 6))"          
          p():            
            text t "The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "!="            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t ">"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t ">="            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "in"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "notin"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "isnot"            
            text t " "            
            text t "operators are in fact templates: this has the benefit that if you overload the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "=="            
            text t " "            
            text t "operator, the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "!="            
            text t " "            
            text t "operator is available automatically and does the right thing. (Except for IEEE floating point numbers - NaN breaks basic boolean logic.)"          
          text t "\x0A"          
          p():            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a > b"            
            text t " "            
            text t "is transformed into "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "b "                
                text t "<"                
                text t " "                
                text t "a"            
            text t ". "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "a in b"            
            text t " "            
            text t "is transformed into "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "contains(b, a)"            
            text t ". "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "notin"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "isnot"            
            text t " "            
            text t "have the obvious meanings."          
          text t "\x0A"          
          p():            
            text t "Templates are especially useful for lazy evaluation purposes. Consider a simple proc for logging:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "const"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "debug"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "log"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "msg"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Punctuation"):              
              text t "{"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "inline"            
            span(class="Operator"):              
              text t "."            
            span(class="Punctuation"):              
              text t "}"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "debug"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "msg"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
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
              text t "log"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"x has the value: \""            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "This code has a shortcoming: if "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "debug"            
            text t " "            
            text t "is set to false someday, the quite expensive "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "$"            
            text t " "            
            text t "and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "&"            
            text t " "            
            text t "operations are still performed! (The argument evaluation for procedures is "            
            em():              
              text t "eager"            
            text t ")."          
          text t "\x0A"          
          p():            
            text t "Turning the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "log"            
            text t " "            
            text t "proc into a template solves this problem:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "const"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "debug"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "true"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "template"            
            text t " "            
            span(class="Identifier"):              
              text t "log"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "msg"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "debug"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "stdout"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "msg"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "var"            
            text t "\x0A  "            
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
              text t "log"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"x has the value: \""            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Operator"):              
              text t "$"            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "The parameters' types can be ordinary types or the meta types "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "untyped"            
            text t ", "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "typed"            
            text t ", or "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "type"            
            text t ". "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "type"            
            text t " "            
            text t "suggests that only a type symbol may be given as an argument, and "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "untyped"            
            text t " "            
            text t "means symbol lookups and type resolution is not performed before the expression is passed to the template."          
          text t "\x0A"          
          p():            
            text t "If the template has no explicit return type, "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "void"            
            text t " "            
            text t "is used for consistency with procs and methods."          
          text t "\x0A"          
          p():            
            text t "To pass a block of statements to a template, use "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "untyped"            
            text t " "            
            text t "for the last parameter:"          
          text t "\x0A"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "template"            
            text t " "            
            span(class="Identifier"):              
              text t "withFile"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "filename"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "string"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "mode"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "FileMode"            
            span(class="Punctuation"):              
              text t ","            
            text t "\x0A                  "            
            span(class="Identifier"):              
              text t "body"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "untyped"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "let"            
            text t " "            
            span(class="Identifier"):              
              text t "fn"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "filename"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "File"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "if"            
            text t " "            
            span(class="Identifier"):              
              text t "open"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "fn"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "mode"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "try"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
            span(class="Identifier"):              
              text t "body"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "finally"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
            span(class="Identifier"):              
              text t "close"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "f"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "else"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "quit"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"cannot open: \""            
            text t " "            
            span(class="Operator"):              
              text t "&"            
            text t " "            
            span(class="Identifier"):              
              text t "fn"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "withFile"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "txt"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="StringLit"):              
              text t "\"ttempl3.txt\""            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="Identifier"):              
              text t "fmWrite"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "txt"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"line 1\""            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A  "            
            span(class="Identifier"):              
              text t "txt"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "writeLine"            
            span(class="Punctuation"):              
              text t "("            
            span(class="StringLit"):              
              text t "\"line 2\""            
            span(class="Punctuation"):              
              text t ")"          
          p():            
            text t "In the example the two "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "writeLine"            
            text t " "            
            text t "statements are bound to the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "body"            
            text t " "            
            text t "parameter. The "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "withFile"            
            text t " "            
            text t "template contains boilerplate code and helps to avoid a common bug: to forget to close the file. Note how the "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "let fn = filename"            
            text t " "            
            text t "statement ensures that "            
            tt(class="docutils literal"):              
              span(class="pre"):                
                text t "filename"            
            text t " "            
            text t "is evaluated only once."          
          text t "\x0A\x0A"          
          h2():            
            a(class="toc-backref",id="templates-examplecolon-lifting-procs",href="#templates-examplecolon-lifting-procs"):              
              text t "Example: Lifting Procs"          
          pre(class="listing"):            
            span(class="Keyword"):              
              text t "import"            
            text t " "            
            span(class="Identifier"):              
              text t "math"            
            text t "\x0A\x0A"            
            span(class="Keyword"):              
              text t "template"            
            text t " "            
            span(class="Identifier"):              
              text t "liftScalarProc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "fname"            
            span(class="Punctuation"):              
              text t ")"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "## Lift a proc taking one scalar parameter and returning a"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "## scalar value (eg ``proc sssss[T](x: T): float``),"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "## to provide templated procs that can handle a single"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "## parameter of seq[T] or nested seq[seq[]] or the same type"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "##"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "## .. code-block:: Nim"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "##  liftScalarProc(abs)"            
            text t "\x0A  "            
            span(class="Comment"):              
              text t "##  # now abs(@[@[1,-2], @[-2,-3]]) == @[@[1,2], @[2,3]]"            
            text t "\x0A  "            
            span(class="Keyword"):              
              text t "proc"            
            text t " "            
            span(class="Identifier"):              
              text t "fname"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "openarray"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "T"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "auto"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "var"            
            text t " "            
            span(class="Identifier"):              
              text t "temp"            
            span(class="Punctuation"):              
              text t ":"            
            text t " "            
            span(class="Identifier"):              
              text t "T"            
            text t "\x0A    "            
            span(class="Keyword"):              
              text t "type"            
            text t " "            
            span(class="Identifier"):              
              text t "outType"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Keyword"):              
              text t "type"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "fname"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "temp"            
            span(class="Punctuation"):              
              text t ")"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A    "            
            span(class="Identifier"):              
              text t "result"            
            text t " "            
            span(class="Operator"):              
              text t "="            
            text t " "            
            span(class="Identifier"):              
              text t "newSeq"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "outType"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A    "            
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
              text t "x"            
            span(class="Operator"):              
              text t "."            
            span(class="Identifier"):              
              text t "len"            
            span(class="Punctuation"):              
              text t ":"            
            text t "\x0A      "            
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
              text t "fname"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "x"            
            span(class="Punctuation"):              
              text t "["            
            span(class="Identifier"):              
              text t "i"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            text t "\x0A\x0A"            
            span(class="Identifier"):              
              text t "liftScalarProc"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Identifier"):              
              text t "sqrt"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# make sqrt() work for sequences"            
            text t "\x0A"            
            span(class="Identifier"):              
              text t "echo"            
            text t " "            
            span(class="Identifier"):              
              text t "sqrt"            
            span(class="Punctuation"):              
              text t "("            
            span(class="Operator"):              
              text t "@"            
            span(class="Punctuation"):              
              text t "["            
            span(class="FloatNumber"):              
              text t "4.0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="FloatNumber"):              
              text t "16.0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="FloatNumber"):              
              text t "25.0"            
            span(class="Punctuation"):              
              text t ","            
            text t " "            
            span(class="FloatNumber"):              
              text t "36.0"            
            span(class="Punctuation"):              
              text t "]"            
            span(class="Punctuation"):              
              text t ")"            
            text t "   "            
            span(class="Comment"):              
              text t "# => @[2.0, 4.0, 5.0, 6.0]"          
          text t "\x0A"          
          h1():            
            a(class="toc-backref",id="compilation-to-javascript",href="#compilation-to-javascript"):              
              text t "Compilation to JavaScript"          
          p():            
            text t "Nim code can be compiled to JavaScript. However in order to write JavaScript-compatible code you should remember the following:"          
          text t "\x0A"          
          ul(class="simple"):            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "addr"              
              text t " "              
              text t "and "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "ptr"              
              text t " "              
              text t "have slightly different semantic meaning in JavaScript. It is recommended to avoid those if you're not sure how they are translated to JavaScript."            
            text t "\x0A"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "cast[T](x)"              
              text t " "              
              text t "in JavaScript is translated to "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "(x)"              
              text t ", except for casting between signed/unsigned ints, in which case it behaves as static cast in C language."            
            text t "\x0A"            
            li():              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "cstring"              
              text t " "              
              text t "in JavaScript means JavaScript string. It is a good practice to use "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "cstring"              
              text t " "              
              text t "only when it is semantically appropriate. E.g. don't use "              
              tt(class="docutils literal"):                
                span(class="pre"):                  
                  text t "cstring"              
              text t " "              
              text t "as a binary data buffer."            
            text t "\x0A"          
          text t "\x0A\x0A"          
          h1():            
            a(class="toc-backref",id="part-3",href="#part-3"):              
              text t "Part 3"          
          p():            
            text t "Next part will be entirely about metaprogramming via macros: "            
            a(class="reference external",href="tut3.html"):              
              text t "Part III"            
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
            text t "Made with Nim. Generated: 2019-10-21 08:34:45 UTC"          
          text t "\x0A      "        
        text t "\x0A    "      
      text t "\x0A  "    
    text t "\x0A"
    tdiv(style="position:fixed;right:0;top:5%;"):
      a(onclick = zhCN):span: text "Chinese |"
      a(onclick = enUS):span: text " English"  
  
setRenderer createDom
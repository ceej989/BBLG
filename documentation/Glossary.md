##Glossary

###Ruby 
* a programming language defined by its implementation. It is dynamic, duck-typed, and frankly rather slow at executing - but has a very charming and programmer-friendly design. It is multi-platform thanks to other Ruby implementations such as jRuby, but is almost always used on POSIX-compliant machines.

###Rails 
* a web framework - in other words a big program (and set of libraries) written in the language Ruby. It is built with a lot of pragmatic assumptions about how to best make a web app, and these "opinionated" assumptions can make life easy as long as you are going down the intended path. It includes defaults for common things like talking to databases, managing session state, testing, and more.

###HTML and CSS 
* the primary visual display languages of the web, and increasingly other platforms.

###Javascript 
* a dynamic language, which has both server and client side implementations, but of course can run in browsers, in the v8 engine, or the node framework (which is itself based on v8). It is an object oriented language, but with prototypical inheritance which is somewhat uncommon.

###HAML and SCSS 
* languages which can be compiled into HTML and CSS, respectively. This compilation is done by programs of the same name, written in the Ruby language. They tend to be much faster and more elegant to write then the equivalent "plain" HTML and CSS. This mechanism can be used within frameworks like Rails or as a stand-alone convenience to web-authoring.

###CoffeeScript 
* a language that "compiles" into javascript, but offers some more user-friendly design choices, and terser syntax.

###Git 
* a distributed version control system, or DVCS. It allows us to share code, manage parallel edits and branches, and easily distribute that code either to deployment machines or to "central" locations like GitHub.

###Firebase 
* a hosted platform or "Platform as a Service" (PaaS). It has client libraries for javascript and other languages, but basically takes care of data persistence and synchronization for you. If you use it a lot they want money, if you use it a little they let you skate by on free. To implement the same features without it as a service you would persist data yourself using a database of some kind, and then synchronize that data with either a "pub sub" message system, or "long poll" approach; either probably in javascript on the client(s). This is built into the libraries Firebase offers with their service.

###Middleman 
* a static site generator, again written in Ruby. It makes it convenient to pull together tools like HAML, and SCSS into one "thing", such that you write a bunch of stuff in convenient templates, and then Middleman spits out all of the compiled assets ready to throw on a web-server.

### POSIX 
* a set of standards for how an operating system can be used & should respond, with APIs like forking, threads, files, etc. UNIX and LINUX are both POSIX compliant. Windows has always either struggled with it, or only offered a subset of POSIX compliance, which is why there are so many programm-y tools which work on the former two, but don't work on Windows. Ruby is a strong example of this, as it relies on POSIX features for much of its functionality.
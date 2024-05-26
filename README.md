# BeginningClojureEnv

## Problems:
> I'm not a developer but I've been told clojure is great.  The commandline though is confusing and infuriating.

> Leiningen was easy but no longer used and had package issues. (The author of this repo had issues if packages were placed in an airgapped environemt)

> How do I build an uberjar again, because I just want to compile and run this?

> Templating projects that I just need to get working, feel complicated, though I know I need testing ...

> Do I need to explore make files and multi-alais deps.edn to make this work?

> I can't bring in babashka in this environment.  Infact, my dev environment needs to be air-gapped from the internet.

> I'm on windows, and because I am not a developer, I can't used Visual Studio.

## Answer:
Clojure environment at the command line (or dev environment), can be daunting, with information overload. 
This is especially true if you were never a Java programmer.  
To further complicate matters, depending on where this environment is, you may not have the ability modify packages or setup systems to make this easier.  

You may be allowed to suggest design and include small functions at the commandline environment (e.g. bash, powershell, etc.)  

This repo attempts to bridge a gap of initial setting up an environemt that is run at the commandline to present a sane environment for those who may need to run clojure, but have no larger dev requirement.

## Assumption:
- The users using these packages will be persons who are familiar at the command line or are versed in small projects in languages like Python, bash scripting or even Powershell.
- There will be a specific task that they will need to perform in clojure that a dev will have already built for them. (So they are mostly operating at the repl)
- There might be flexibility to extend functions based upon the user's task or work.

### Vision of the end user
Anyone who needs more power, but cannot introduce binaries into an environment. 
In order to explore, manipulate, and transform data as part of their work, end users need tools to extend their capabilities. 
End user tools may require accessing api's, interacting with shell commands, generating reports and websites, etc., and they will need to process and understand large amounts of raw data.  
They however, are not developers and will need to be given tools that will not break systems and process they don't own.

Leveraging the Java ecosystem (and maven repositories that report identified vulnerabilities in versioned packages), can enable safe libraries to be brought into multiple os environments (with explicit library versioning).  Because Clojure is also a functional language that favours immutable data structure, program and software development in a Clojure environment is safer when multi-threading is required. (removing race conditions as an example).  Clojure and Clojurescript  


(HINT about the type of end user: A cyber security analyst will have many tools to operate with, but will have issues integrating, processing large amount of data, or operating in different environments based upon security requirements, package issues, etc.  They may be forced to operating with bash, using grep, cut and awk to manipulate data.  They may be operating in powershell, to leverage the cmdlets but are incurring significant time penalties as full objects are created when all that is needed is data.  They may even think that Kali is really cool, but will only have a passing understanding of the linux command line, or tools that are not python.  Depending on their corporate security requirements, random binary packages from the internet (no matter how familiar they are to the open source world), may be severly restricted or banned.)


## Why Clojure, and not just stick with a python repl (a question I expect from those outside the Clojure community)

### Solving problems
Clojure is a language designed to solve problems.  
Once a problem is solved, it doesn't need to be solved again.  In fact, the solution should be easily integrated into solving other problems.  

Forget python's "batteries included" when you have to step outside the language (to C binaries), to ensure performance, because you might not be allowed to just run any software in your environment. If your batteries are 2 x 9Vs, but you need to connect to them to the controller of the local hydro electric dam to handle your data (and the data can change underneath you), there might be an issue. 

But if you were given a raw java environment and jars from your dev team that hold only approved packaged libraries (that are pinned and version controlled), then you may have tools at your disposal that ensure you do not overly call an api, but still is able to process an infinite stream of info with lazy evaluation, all by running a couple of functions.  
If the function breaks because of a format change (that you are allow to inspect and view, because everything is data), then you could either transform the information in the data stream before sending to the function.  
If the user is the subject expert of the data, should they not be able to easily explore, transform, and modify that data before sending it to a tool that produces actions.  Clojure allows that sort of pipeline guarenttee, especially in a multi-threaded environment.

### Corporate adoption of java as it relates to security
Many corporate tools and databases will have something running Java, and it will be available to the environment.  
These java environmnets are known and will have libraries that are pinned at a version.  
Because Java has been a part of the corporate environment for so long, exploits and CVEs against Java are constantly being discovered, and repositories like Maven, ensure that if a CVE is found against a package and version (including those listed as dependencies), it is annotated as a vulnerability.  

Clojure uses Maven and Clojars for package management, so all that information is made available.

### Immutibility means that change is not required for change's sake
Clojure packages rarely change once core functionality has be created.  
Most clojure packages and programs are either wrappers around a java package, or are self contained code that follows a very functional design, allowing all code to be reasoned about.  

This greatly helps anyone looking at a code base for security issues and compliance.  The immutibiliy of the language also makes it very hard to introduce mutation within a list that clojure is processing, giving a seperation between code that does calculations on data and code that produces actions in the world (side effects).  



#! /bin/bash

# This will hold various aliases and funcitons related to clojure
# at the user level within bash

# Underscore functions are the main functions to run, while calling functions
# will be used to a common api.  (e.g. passing in events)

########## Core functions Start ##########

_run_clojure_repl () {
  /usr/local/bin/clojure -Sdeps "{:deps {com.bhauman/rebel-readline {:mvn/version \"0.1.4\"}}}" -M -m rebel-readline.main
}

_run_clojure_tool_docs () {
  /usr/local/bin/clojure -A:deps -T$1 help/doc
}

########## Core functions End ##########

########## Wrapping functions Start ##########

clojure-repl () {
  if [ ! -d ~/.m2 ] ; then
    echo -e "Missing local .m2 library.\nExiting!!!" ;
    exit 1
  fi

  if [ ! -d ~/.clojure ] ; then
    echo -e "Missing .clojure directory.\nWill affect capabilities."
  fi

  if [ ! -d ~/.gitlibs ] ; then
    echo -e "Missing .gitlibs dir locally.\nClojure tools will not be available."
  fi

  echo -e "Starting clojure repl (with rebel-readline)"
  echo -e
  echo -e "Type either :repl/quit or Ctrl-D to exit"
  echo -e
  _run_clojure_repl

}


clojure-tool-docs () {


  _run_clojure_tool_docs $1


}

########## Wrapping function End ##########

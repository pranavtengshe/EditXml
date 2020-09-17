@echo off
setlocal

set "NbrThread="


for /f "skip=1 usebackq delims=," %%I in ("TestData.csv") do (
    if not defined first set "NbrThread=%%~I"
   
)



type Test_Plan_2.jmx|repl "(<stringProp name=.?ThreadGroup.num_threads.?>).*<" "<stringProp name='ThreadGroup.num_threads'>%NbrThread%<"  >Test_Plan_2.jmx



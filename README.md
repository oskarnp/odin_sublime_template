# odin_sublime_template

## Dependencies
* Optional: git
  * Only needed for submodule. As long as Odin compiler exists in subdirectory (or ODIN variable pointing to another installation) it is no longer needed.
  * Benefit of submodule is remembering exactly which revision of the compiler is compatible with a given revision of your own project. So e.g. if checkout out an older revision then the corresponding revision of the compiler for that revision would be checked out, too. I consider this a good feature to have as older builds are then reproducable. Others might disagree.
* GNU Make
  * Windows: http://gnuwin32.sourceforge.net/packages/make.htm
* Sublime Text 3+
* Odin compiler:
  * LLVM/Clang 12
  * Windows: Visual Studio and(/or?) Windows SDK

## How to use

0. git submodule update --init
1. rename projectname.sublime-project
2. rename PROJECT=projectname in Makefile
3. open misc/env.bat 
4. Sublime Text editor should now be open with x64 environment initialized
5. Press Ctrl+Shift+B for list of build system targets
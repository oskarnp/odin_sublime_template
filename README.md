# odin_sublime_template

## Dependencies
* Optional: git
  * Only needed for submodule. As long as Odin compiler exists in subdirectory (or ODIN variable in Makefile pointing to another installation) it is no longer needed.
  * Benefit of submodule is remembering exactly which revision of the compiler is compatible with a given revision of your own project. So e.g. if checking out an older revision then the corresponding revision of the compiler for that revision would be checked out, too. I consider this a good feature to have as older builds are then reproducable. Others might disagree.
* GNU Make
  * Windows: http://gnuwin32.sourceforge.net/packages/make.htm
* Sublime Text 3+
* Odin compiler:
  * LLVM/Clang 12
  * Windows: Visual Studio and(/or?) Windows SDK

## How to use

1. Click "Use this template" and copy to new repo
2. Run `git submodule update --init` to checkout compiler submodule (or clone using `--recurse-submodules`)
3. Rename project
   * `projectname` package directory
   * projectname.sublime-project
   * PROJECT=projectname in Makefile
   * `package projectname` directive
4. Open misc/env.bat 
5. Sublime Text editor should now be open with x64 environment initialized
6. Press Ctrl+Shift+B for list of build system targets

## License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>


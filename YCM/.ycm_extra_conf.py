import os
import ycm_core
flags = ['-std=c++17',
         '-x', 'c++', # <- I had an extra comma here :(
         '-DUSE_CLANG_COMPLETER',
         '-I/usr/local/include',
         '-I/usr/include/clang/3.5/include',
         '-I/usr/include/x86_64-linux-gnu',
         '-I/usr/bin/../lib/gcc/x86_64-linux-gnu/4.9/include',
         '-I/usr/include',
         '-I/usr/include/c++/4.9']

# youcompleteme is calling this function to get flags
# You can also set database for flags. Check: JSONCompilationDatabase.html in
# clang-3.2-doc package

def FlagsForFile( filename ):
  return {
    'flags': flags,
    'do_cache': True
  }

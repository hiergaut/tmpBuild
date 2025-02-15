file(REMOVE_RECURSE
  "static/libhubd.a"
  "static/libhubd.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/hub_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()

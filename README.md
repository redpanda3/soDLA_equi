# soDLA Equivalence Check & Unittest

equivalence checking & testing for soDLA

In yosys
```
read_verilog target.v
opt_clean -purge
equiv_make gold gate equiv
hierarchy -top equiv
clean -purge; show
equiv_induct or equiv_simple
equiv_status ­assert
```

## Risk Assessment 

TODO



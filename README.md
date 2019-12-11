# soDLA_equi
equivalence checking for soDLA

```
read_verilog target.v
opt_clean -purge
equiv_make gold gate equiv
hierarchy -top equiv
clean -purge; show
equiv_induct
equiv_status ­assert
```


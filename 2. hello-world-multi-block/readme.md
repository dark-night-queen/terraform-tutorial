In case, you have multiple blocks in terraform, then all the block will be printed when using 

>>> terraform plan
```shell
Changes to Outputs:
  + first-output-block  = "This is the first output block"
  + second-output-block = "This is the second output block"
  + third-output-block  = "This is the third output block"
```
However, when scaling a product, keeping all the infra blocks in one file is bad for maintainability. Hence, we will split the blocks across multiple files.
## File Destructure

When scaling a product, keeping all the infra blocks in one file is bad for maintainability. Hence, we will split the blocks across multiple files.

Note:
The files will be executed in alphabetic order.

\> `terraform plan`

```shell
Changes to Outputs:
  + abc-output-block    = "This is the abc output block"
  + first-output-block  = "This is the first output block"
  + second-output-block = "This is the second output block"
  + third-output-block  = "This is the third output block"
```

In variable.tf, you are taking the value for username from the user.
And the output printname, is printing that value.

>>> terraform plan
```shell
var.username
  Enter a value: sdkfksd


Changes to Outputs:
  + printname = "Hello, sdkfksd!"
```

Note:
1. In case of output, we need to wrap var in ${} to extract value within str or simply refer the var. e.g.

  >>> value = var.username # -> Shreya
  >>> value = "Hello, var.username!" # -> "Hello, var.username!"
  >>> value = "Hello, ${var.username}!" # -> "Hello, Shreya!"

2. In case of non-interactive mode, use the following command
>>> terraform plan --var="username=Shreya"

```shell
Changes to Outputs:
  + printname = "Hello, Shreya!"
```
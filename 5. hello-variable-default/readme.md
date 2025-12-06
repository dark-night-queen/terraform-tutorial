## Default variables

To make the variables non-interactive, we can do two things.

1. Use the `--var` flag

   \> `terraform plan --var="username=Shreya"`

   ```shell
   Changes to Outputs:
     + printname = "Hello, Shreya!"
   ```

2. Add default within variable.

   ```tf
   variable "username" {
     default = "World"
   }
   ```

   ```shell
   Changes to Outputs:
     + printname = "Hello, World!"
   ```

   In either case, the terminal won't ask for user input, b/c it already has an idea what value needs to be set to the variable.

   Note:
   Even with default value you can use `--var` flag and change the variable value.

3. In case of multiple variables use multiple `--var` flag, b/c if used one flag:

   \> `terraform plan --var="username=Shreya, age=34"`

   ```shell
   var.age
     Enter a value: e


   Changes to Outputs:
     + printname = "Hello, Shreya, age=34! Your age is e."
   ```

   \> `terraform plan --var="username=Shreya" --var="age=34"`

   ```shell
   Changes to Outputs:
     + printname = "Hello, Shreya! Your age is 34."
   ```

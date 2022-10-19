# terraform-ch5
## Task 1: Loops with the count Parameter

## Task 2: Loop with for_each

## Task 3: Loop with expression
- list to list
- map to list
- list to map
- map to map

## Task 4: Loops with the for String Directive
    "%{ for <ITEM> in <COLLECTION> }<BODY>%{ endfor }"
    %{ for <INDEX>, <ITEM> in <COLLECTION> }<BODY>%{ endfor }

## Task 5: Conditionals
- If-statements with the count parameter
- If-else-statements with the count parameter: E.G. only read access or both read and write access
- Conditionals with for_each and for Expressions

1. be aware of remote backend key should put in each sub folder
1. general backend config put to backend.hcl
1. use module variables ![](./Screenshot.png)
    ref: https://stackoverflow.com/questions/61587712/cannot-get-the-outputs-when-terraform-output-is-run 
1. Add local variables in module
1. Module Output
1. Inline blocks and File paths

# Essential Command
1. `terraform init -backend-config ~/terraform-ch5/backend.hcl`
1. `terraform plan`
1. `terraform apply`
1. `terraform output`
1. `terraform destroy`

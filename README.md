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
- Conditionals with the if String Directive
- Zero Down time


# Essential Command
1. `terraform init -backend-config ~/terraform-ch5/backend.hcl`
1. `terraform plan`
1. `terraform apply`
1. `terraform output`
1. `terraform destroy`

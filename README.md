# terraform-module-tutorial
terraform 모듈 생성 저장용

## 구조

```
├── configuration.tf
├── main.tf
├── modules
│   └── launch-template
│       ├── data.tf
│       ├── files
│       │   └── user_data.sh
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
```

최상위 디렉토리 main.tf에 사용할 모듈 등록.
```bash
module "launch_template" {
  source = "modules/launch-template"
  
  name = "launch-template-kyunam-${uuid()}"
}

module "alb" {
  source = "modules/alb"
  
  name = "alb-kyunam-${uuid()}"
}

```
## variables

module에 정의한 값들은 같은 이름으로 정의한 모듈 하위 디렉토리의 variables 값에 주입된다.


```bash
module "launch_template" {
  source = "modules/launch-template"
  name = "Hi"
}
```

modules/launch-template/variables.tf의 name에 위의 name 값이 주입되는 구조.

```bash
variable "name" {} # this is the input parameter of the module
```

variables.tf에 정의된 name은 Hi 값을 주입받게 된다.


## Outputs

모듈별로 출력할 정보들을 미리 지정할 수 있음. 

```bash
output "id" {
  value = "${aws_launch_template.launch_template.id}"
}
```

```bash

terraform output # only root output print

terraform output module=launch_template # print launch_template module output

```
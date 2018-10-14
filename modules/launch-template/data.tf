##################################
# 외부 파일 data로 등록
##################################
data "template_file" "user_data" {
  template = "${file("${path.module}/files/user_data.sh")}"
}
#Create internet gateway
resource "aws_internet_gateway" "gateway" {
     vpc_id = "${aws_vpc.vpc.id}"
       tags = {
    Name = "${var.environment}-gateway"
  }
 }

 resource "aws_internet_gateway_attachment" "gateway_attachment" {
  internet_gateway_id = aws_internet_gateway.id
  vpc_id              = aws_vpc.vpc.id
}
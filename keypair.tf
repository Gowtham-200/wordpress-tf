# Define key pair resource
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"            # Name for your key pair
  public_key = file(ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2w79JJKvD4VN+KpnK2pVN6g578BYIdlRI7E5qW2g4lX0kixTVhuaTwX02Ecc8QbAsmrp5kvyfhfTFKmIgqscKh7khfsK4Pb7YjZb4WDqsAS3zJVC32zQdWHJJ8/04r+qMzhAhAY2ZR9um6qUIss+PqY4t7JL2a7+tDvjiyCuV3n2Pbo18zntsOb+NlKU62/aO6I7Z0+ZCU0ExFj/utJl28VCryvW43lBes0AhTZuO7IOtJ7uTcpYCG1bSqIF5Gmdyikn8tbb4xR6+hK5Xc5J4xhOopB/ZPGCXoSjFvvqpH6xmFV5tqb6e6JGZraX7kgvKmTL+ESe5AM2gK4zSrsMJ ec2-user@ip-10-0-6-178.ec2.internal) # Path to your public key file
}

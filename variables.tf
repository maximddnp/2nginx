
variable "aws_public_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5cy6FgtjyboJlWh9qu0KS3Ppbfxl5Nj8vR6F0Ct1KyIU8StWns5cbysont5kOnRGuDLii7BUEKyOiFzFP0kq/4i6irxvlla2xxDxwMj6bUN0VIZ2exzWd/Q1Du0AzqdqXbCXM2lzx3U0pmZMmu+qO/2uN+tuiOUk91SRFpEWPGTlFaTzCIqUOYMryPBJg8E2E2BuiQIuZ+0ezV+OmsBOephwFFMbSRJAajG01KkCvB61+yZ/jpMvjrpOgjID9lz2l1vU0dqHd4l+DMHZ4LItZBiKtkNiOYcu/v1sUOmxiC7HQ/clEcE3BK5QgP5vkTMxbB7Mg4NCFQPOYuXzHnqRgHCcgPlLjSRkH9KA7zSpLEa6N85q69vJLyOQ4+UnUclqSFaNfc2MalHdsumDUBPL3AAOxNmv7DLP763mam6tQWdvlfCyPDFzpkP/ZDLaSOppkaY3+OQzV7Td5humMOPiKKcNBKJutqb03zlPaIY7ne8zbSzm4hrL2cr3sYcsbMzNiaRVdOG13pfRTYYUhWguITuoj0OlCv5Q52wxEQ5ypRjglWJXMNVaRv2b1gECkBhoIYyOdUXuifu/BC4tdXTo9uqqa7Ox7uYwrdmA0fFuz0yE73c4DDoEUIN0UvWNHktRwhgoMm/TcwwpK+iCkR0gjWM8xcyn6YloJowyulFLnw== your_email@example.com"
}

variable "availability_zone" {
  type    = string
  default = "eu-west-1a"
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]
}
variable "ami_ubuntu_18_eu_west_1" {
  type    = string
  default = "ami-0e5657f6d3c3ea350"
}
variable "ingress_ports" {
  type    = list
  default = ["22", "80", "443"]
}
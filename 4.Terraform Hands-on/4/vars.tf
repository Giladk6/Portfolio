variable "region" {
  default = "il-central-1"
}

variable "zone1" {
  default = "il-central-1a"
}

variable "webuser" {
  default = "ubuntu"
}

variable "amiID" {
  type = map(any)
  default = {
    il-central-1 = "ami-0ae7e1e8fb8251940"
  }
}

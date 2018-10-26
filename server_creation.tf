provider "scaleway" {
  organization = "${var.scaleway_org_token}"
  token        = "${var.scaleway_sec_token}"
  region       = "ams1"
}

resource "scaleway_ip" "ip" {
  server = "${scaleway_server.base.id}"
}

resource "scaleway_server" "base" {
  name  = "server-name"
  image = "90d69ee1-2049-49ef-819c-dce675037477"
  type  = "START1-XS"

}

resource "scaleway_security_group" "http" {
  name        = "http"
  description = "allow HTTP and HTTPS traffic"
}

resource "scaleway_security_group_rule" "http_accept" {
  security_group = "${scaleway_security_group.http.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 80
}

resource "scaleway_security_group_rule" "https_accept" {
  security_group = "${scaleway_security_group.http.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 443
}

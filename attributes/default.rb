default["apache"]["package"] = "httpd"
default["apache"]["service"] = "httpd"
default["apache"]["document_root"] = "/var/www/html"

if node["platform_family"] == "debian"
  default["apache"]["package"] = "apache2"
  default["apache"]["service"] = "apache2"
  default["apache"]["document_root"] = "/var/www/"
end

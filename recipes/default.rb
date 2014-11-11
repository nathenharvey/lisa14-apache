#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
#
#
package node["apache"]["package"]

service node["apache"]["service"] do
  action [:start, :enable]
end

template "#{node['apache']['document_root']}/index.html" do
  source "index.html.erb"
end

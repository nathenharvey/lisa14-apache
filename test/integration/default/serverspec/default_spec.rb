require 'serverspec'
set :backend, :exec

describe 'apache' do
  it "is awesome" do
    expect(true).to eq true
  end

  it "is installed" do
    expect(package 'httpd').to be_installed
  end

  it "is running" do
    expect(service 'httpd').to be_running
  end

  it "is enabled" do
    expect(service 'httpd').to be_enabled
  end

  it "is listening on port 80" do
    expect(port(80)).to be_listening
  end

  it "displays a custom home page" do
    expect(command("curl localhost").stdout).to match /hello/i
  end
end


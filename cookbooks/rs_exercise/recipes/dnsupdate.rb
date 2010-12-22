
remote_recipe "power update" do
    recipe "update_dns_early"
    recipients_tags 'dns_server:type=master'
end


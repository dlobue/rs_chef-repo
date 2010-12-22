
remote_recipe "make noise somewhere" do
    recipe "rs_exercise::noise"
    #recipients_tags "rs_login:state=active"
    recipients_tags 'dns_server:type=master'
end


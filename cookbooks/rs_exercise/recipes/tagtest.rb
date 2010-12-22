

log "getting all machine tags"

server_collection "all" do
    tags 'rs_login:state=active'
end

log "got 'em"
#log "got 'em: #{@node.inspect}"
#log "got 'em: #{@node[:server_collection]['all'].inspect}"
#log "got 'em: #{@node['server_collection']['all'].inspect}"

log "now to see what we got"
ruby_block "pprinter" do
    action :create
    block do
        require 'pp'
        File.open( '/tmp/tagoutput.pp', 'w') do |out|
            pp( @node["server_collection"], out )
        end
    end
end
log "done printing what was found"


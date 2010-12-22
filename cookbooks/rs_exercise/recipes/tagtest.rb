

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
        @node[:server_collection]["all"].each_pair do |k,v|
            Chef::Log.info("key: #{k}, value: #{v}")
        end
#        require 'pp'
#        File.open( '/tmp/tagoutput.pp', 'w') do |o|
#            pp( @node[:server_collection]["all"], out=o )
#        end
    end
end
log "done printing what was found"


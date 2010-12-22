

log "getting all machine tags"

server_collection "all" do
    tags 'rs_login:state=active'
end

#log "got 'em"
#log "got 'em: #{@node.inspect}"
log "got 'em: #{@node[:server_collection]}"
log "got 'em: #{@node['server_collection']}"

#log "now to see what we got"
#ruby_block "pprinter" do
#    action :create
#    block do
#        require 'yaml'
#        File.open( '/tmp/tagoutput.yaml', 'w') do |out|
#            YAML.dump( @node["server_collection"], out )
#        end
#    end
#end
#log "done printing what was found"
#

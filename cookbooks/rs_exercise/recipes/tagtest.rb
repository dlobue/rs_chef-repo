

log "getting all machine tags"

server_collection "all" do
    tags 'rs_login:state=active'
end

log "got 'em: #{@node[:server_collection]}"

log "now to see what we got"
ruby_block "pprinter" do
    action :create
    block do
        @node[:server_collection].each_pair do |k,v1|
            log "key: #{k} value: #{v1.inspect}"
        end
    end
end
log "done printing what was found"


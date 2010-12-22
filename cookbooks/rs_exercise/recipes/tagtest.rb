

log "getting all machine tags"

server_collection "all" do
    tags nil
end

log "got 'em: #{@node[:server_collection]['all']}"

log "now to see what we got"
ruby_block "pprinter" do
    action :create
    block do
        require 'pp'
        pp @node[:server_collection]["all"]
    end
end
log "done printing what was found"


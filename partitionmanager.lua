function createPartition( name )
  fs.createDir( "Partitions/" .. name )
end
function deletePartition( name )
  fs.delete( "Partitions/" .. name )
end
function checkPartition( name )
  if fs.exists( "Partitions/" .. name ) then
    return true
  else
    return false
  end
end

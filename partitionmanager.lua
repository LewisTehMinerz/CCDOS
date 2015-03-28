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
function gotoPartition( name )
  if not fs.exists( "Partitions/" .. name  ) then
    error( "CC-DOS PARTITION MANAGER ERROR >>> Invalid partition was selected when trying to goto partition \"" .. name .. "\".")
  else
    shell.setDir( "Partitions/" .. name )
  end
end

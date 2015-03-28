_G.CCDOS = {
  [ "ERROR" ] = function( err )
    error( "CC-DOS ERROR >>> " .. err, 0 )
  end,
  [ "PARTITION" ] = {
    [ "MASTER" ]  = {
      [ "PRIMARY_DOS_PARTITION" ] = true,
    },
  },
}





if not partitionmanager.partitionExists( "PRIMARY_DOS_PARTITION" ) then
  partitionmanager.createPartition( "PRIMARY_DOS_PARTITION" )
end

shell.run( "AUTO" )

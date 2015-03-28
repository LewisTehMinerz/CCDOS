_G.CCDOS = {
  [ "ERROR" ] = function( err )
    error( "CC-DOS ERROR >>> " .. err, 0 )
  end,
}





if not partitionmanager.partitionExists( "DOS" ) then
  partitionmanager.createPartition( "DOS" )
end

shell.run( "AUTO" )


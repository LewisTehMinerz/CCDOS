_G.CCDOS = {
  [ "ERROR" ] = function( err )
    error( "CC-DOS ERROR >>> " .. err, 0 )
  end,
  [ "IMPORT_FILE" ] = function( f )
    os.loadAPI( f )
  end,
}

CCDOS.IMPORT_FILE( "partitionmanager" )

if not partitionmanager.partitionExists( "DOS" ) then
  partitionmanager.createPartition( "DOS" )
end

shell.run( "AUTO" )
partitionmanager.gotoPartition( "DOS" )

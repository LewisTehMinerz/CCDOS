_G.CCDOS = {
  [ "RUNNING" ] = true,
  [ "ERROR" ] = function( err )
    error( "CC-DOS ERROR >>> " .. err, 0 )
  end,
  [ "IMPORT_FILE" ] = function( f )
    os.loadAPI( f )
  end,
  [ "LOAD_PLUGIN" ] = function( p )
    print( "CC-DOS >>> " .. p .. " is type plugin. For the plugin to work, you must load it. Allow action? (Read up on the dangers of plugins @ http://www.github.com/LewisTehMinerz/CCDOS/PluginDanger.md)" )
    write( "CC-DOS >>> " )
    i = read()
    if i:lower() == "y" then
      print( "CC-DOS >>> Loading plugin..." )
      dofile( p )
      print( "CC-DOS >>> Plugin loaded." )
    elseif i:lower() == "n" then
      print( "CC-DOS >>> Plugin has not been loaded." )
    else
      print( "CC-DOS >>> Invalid option. Denied." )
    end
  end,
}

CCDOS.IMPORT_FILE( "partitionmanager" )

if not partitionmanager.partitionExists( "DOS" ) then
  partitionmanager.createPartition( "DOS" )
end

shell.run( "AUTO" )
partitionmanager.gotoPartition( "DOS" )
while CCDOS.RUNNING do
  write( shell.getDir() .. "> " )
  input = read()
  os.run( {}, input )
end

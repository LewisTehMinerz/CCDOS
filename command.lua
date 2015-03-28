_G.CCDOS = {
  [ "PARTITION" ] = {
    [ "MASTER" ]  = {
      [ "PRIMARY_DOS_PARTITION" ] = true,
    },
  },
}

if not fs.exists( "PARTITIONS/MASTER/PRIMARY_DOS_PARTITION/DOS" ) then fs.create( "/PARTITIONS/MASTER/PRIMARY_DOS_PARTITION/DOS" ) end

shell.run( "AUTO" )

SID=$(curl -sk 'http://192.168.7.14:5000/webapi/auth.cgi?api=SYNO.API.Auth&version=3&method=login&account=ginrai&passwd=IxionX21!&session=test&format=sid')

#| python3 -c "import sys,json; print(json.load(sys.stdin)['data']['sid'])")

echo $SID

curl -sk 'http://192.168.7.14:5000/webapi/entry.cgi?api=SYNO.Core.ISCSI.Target&version=1&method=list&_sid=$SID'

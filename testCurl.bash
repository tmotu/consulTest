#bin/bash
status=$(curl --silent http://localhost:8500/v1/kv/test?raw)

if [ $status -eq 0 ]
then
echo every thing is ok
fi
if [ $status -eq 1 ]
then
echo something is wrong
fi
if [ $status -eq 2 ]
then
echo oh no!w
fi

exit $status

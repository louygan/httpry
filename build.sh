# usage
# aa=$(script_path)
script_path()
{
  CURDIR=$PWD
  SCRIPT_PATH="${BASH_SOURCE[0]}";
  while([ -h "${SCRIPT_PATH}" ]); do
    cd "`dirname "${SCRIPT_PATH}"`"
    SCRIPT_PATH="$(readlink "`basename "${SCRIPT_PATH}"`")";
  done
  cd "`dirname "${SCRIPT_PATH}"`" > /dev/null
  SCRIPT_PATH="`pwd`";
  cd $CURDIR
  echo "$SCRIPT_PATH"
}

DIR=$PWD

cd $(script_path)

docker build . -t packetstat:static

docker run -it -v$PWD:/work packetstat:static cp /tmp/packetstat.s /work

cd $DIR

#!/bin/bash

_help()
{
  echo ""
  echo "usage:"
  echo ""
  echo "   uca createCA | build_collection ... "
  echo ""
  echo "examples:"
  echo ""
  echo "   uca init"
  echo "   uca createCA"
  echo "   uca build_collection meinipsecserver.de hugo karl"
  echo ""
  exit 0
}

if [ "$1" = "" ] ; then
  _help
fi

if [ "$1" = "init" ] ; then
  cp -va /uCA/* /storage/
  cp /storage/openssl.cnf.template /storage/openssl.cnf
  echo ""
  echo "initialize <storage>. Modify <openssl.cnf> first."
  echo ""
  exit 0
fi

if [ ! -e /storage/openssl.cnf ] ;then
   echo "missing openssl.cnf. Do init first."
   exit 0
fi

rm -Rf /storage/scripts
mv /scripts /storage/
export HOME=/storage
cd $HOME
./scripts/$*
rm -Rf /storage/scripts
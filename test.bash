#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Riku Kinjo
# SPDX-License-Identifier: BSD-3-Clause

ng () {
         echo ${1}行目に問題有
         res=1
}

res=0


#正常な変換
out=$(echo "1 c m"| ./rrtask1)
[ "${out}" = "10.0 m" ] || ng "$LINENO"

#文字
out=$(echo "A c m"| ./rrtask1)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ]       || ng "$LINENO"



[ "${res}" = 0 ] && echo no problem
exit $res

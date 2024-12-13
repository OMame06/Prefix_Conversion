#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Riku Kinjo
# SPDX-License-Identifier: BSD-3-Clause

ng () {
         echo ${1}行目に問題有
         res=1
}

res=0


#正常な変換(センチからミリ)
out=$(echo "1 c m"| ./prefix_conversion)
[ "${out}" = "10.0 m" ] || ng "$LINENO"


#文字を入力した場合
out=$(echo "A c m"| ./prefix_conversion)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ]       || ng "$LINENO"

#入力内容が不足した場合
out=$(echo "10"| ./prefix_conversion)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ]       || ng "$LINENO"

#空白が無い場合
out=$(echo "1cm"| ./prefix_conversion)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ]       || ng "$LINENO"

[ "${res}" = 0 ] && echo no problem
exit $res

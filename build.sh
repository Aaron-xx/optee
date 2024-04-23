#!/bin/bash
# script-name: build.sh
# version: 1.0
# date: 2023-04-08
# author: alientek
#本脚本用作编译ATK-DLM135的OP-TEE脚本
#

#删除上层目录的编译文件
if [[ "$CLEAN" == "clean" ]]; then
	rm build deploy -rf
	exit 0
fi

#运行编译
make -f Makefile.sdk CFG_WITH_TUI=n all -j$(($(nproc)+1))

#!/bin/bash
#=================================================
Pakages="DEFAULT_PACKAGES.router:=*"
Default_Pakages="$(cat "${1}" 2>/dev/null)"
sed -i '/'${Pakages}'/a\	uhttpd \\' include/target.mk
function Default() {
for pakage in $(echo ${Default_Pakages} | sed 's/ / /')
do
	# echo ${pakage}
	if [ "${pakage:0:1}" == "-" ]; then
		echo 卸载${pakage:1-0}
		sed -i "s/${pakage:1-0} //" include/target.mk
		sed -i '/\t\\/d' include/target.mk
		
	else
		echo 安装${pakage}
		sed -i '/'${Pakages}'/a\\t'${pakage}' \\' include/target.mk
		Pakages=${pakage}
	fi	
	# sed -i '/'${Pakages}'/a\	'${pakage}' \\' include/target.mk
	# Pakages=${pakage}
done
}
([ -n "${Default_Pakages}" ] && {
	Default
})
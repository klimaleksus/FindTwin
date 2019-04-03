
s_res=""
a_dirs="$(find . -maxdepth 1 -type d)"
for p_dir in $a_dirs; do
 a_files="$(find $p_dir -maxdepth 1 -type f \( -iname \*.jpg -o -iname \*.png \) )"
 s_one=""
 for p_file in $a_files; do
  s_one="${s_one}'${p_file//\'/\\\'}',"$'\r\n'
 done;
 if [ "${s_one}" != "" ]; then
  s_name="${p_dir/.\//}"
  echo "\"${s_name}\""
  s_res="${s_res}'${s_name//\'/\\\'}""':["$'\r\n'"${s_one}],"$'\r\n'
 fi
done;
s_json="window.local_waifus={"$'\r\n'"$s_res""};"$'\r\n'
echo "${s_json}" > "./local_waifus.js"
echo "DONE"

echo "Enter comment: "
read input_variable

git add --all
git commit -m "$input_variable"
git push -u origin --all
#read -rsp $'Done. \nPress any key to continue...\n' -n1 key
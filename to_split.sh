#this script is fow spliting our file and pushing into CODE_SPACE_BRANCH!!!! 
#only and only USE CODESPACE BRANCH
split -b 94M 1.rar
mv 1.rar /workspaces/codespaces-blank/A_dir/Upper_dir
for f in *
do
 echo "Processing $f" 

 git add $f

git commit -m "file added"
git branch -M branch_name
git remote add origin https://github.com/tamakeri/rep_name
git push -u origin branch_name

done

echo "nome do projeto: "
read nomeProjeto
echo "Descrição do projeto: "
read descricaoProjeto

mkdir $nomeProjeto
cd $nomeProjeto

git clone git@github.com:TagFernandes/TemplateLacuna.git

mv TemplateLacuna "$nomeProjeto"
cd "$nomeProjeto"

git remote remove origin

sed -i 's/<projeto>/'"$nomeProjeto"'/g' README.md
sed -i 's/<description>/'"$descricaoProjeto"'/g' README.md

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

git init
git add .
git commit -m "Primeiro commit"

echo "Insira a URL do repositório no GitHub (ex: git@github.com:usuario/repo.git): "
read repoGitHub

git remote add origin $repoGitHub

git branch -M main

git push --force origin main

echo "Criado"

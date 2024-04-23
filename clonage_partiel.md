## Clonage partiel "sparse-checkcout"

> [!warning]
> commande expérimentale ajouter à git 2.25.0 , regarder si changement à l'avenir

Dans le terminal 

  ```
  mkdir <repo>
  cd <repo>
  git remote add -f origin <url git> 
  git sparse-checkout init
  git sparse-checkout set "chemin dossier"
  git sparse-checkout list
  git pull origin <branche>

  ```


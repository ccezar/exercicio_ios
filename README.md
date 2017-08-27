# APP de Posts e Álbuns

O objetivo deste exercício é colocar em prática o uso dos seguintes componentes/técnicas:  

  - TableViews e CollectionViews
  - Delegates e Notifications
  - Paginação de dados
  - Armazenamento de dados locais
  - Consumo de API's

# O que deve ser feito?

  - Criar um servidor local de dados fakes a partir do modelo do JSONPlaceholder
    - https://jsonplaceholder.typicode.com/
    - https://github.com/typicode/json-server#install
    - Após configurado, pegar os dados do json do site deles (https://raw.githubusercontent.com/typicode/jsonplaceholder/master/data.json) e jogar no seu arquivo db.json

- Criar um aplicativo com 4 abas:
    - **Home**: Deve mostrar os dois últimos albuns seguidos dos 5 ultimos posts
        - Usar CollectionView seguindo o layout
    - **Posts**: Listagem, paginando de 15 em 15, com os mais novos no topo da lista
        - Usar Tablaview seguindo o layout
    - **Álbuns**: Listagem, paginando de 10 em 10, com os mais novos no topo da lista
        - Usar CollectionView seguindo o layout
    - **Favoritos**: Deve conter uma segmented onde é possível selecionar posts ou albuns
        - Cada segmented mostra os itens favoritados seguindo a mesma lógica da tela de listagem padrão
            - Listagem, sem paginação porque os dados são locais e com os mais novos no topo da lista
            - CollectionView para os albuns
            - Tablaview para os posts
    
- Deverá ser possível favoritar posts e albums
    - Itens favoritados devem ser salvos localmente no device
        - Sugestão de persistencia de dados: Realm (https://realm.io/docs/swift/latest/#installation)
- Ao selecionar/tocar um post ou album o usuário deve ser levado a tela de detalhes do mesmo
- As telas de detalhes só devem chamar a API caso o item em questão não seja um favorito
- Toda vez que um item for favoritado/desfavoritado todos os locais onde o mesmo é apresentado devem ser sensibilizados pela alteração
- As telas de detalhes são livres (não tem nenhum layout a ser seguido)

# Layout
![N|Solid](https://raw.githubusercontent.com/ccezar/exercicio_ios/master/Layout.png)

using my.bookshop2 as my from '../db/data-model';

service CatalogService {

    entity Authors as projection on my.Authors;

    entity Books   as projection on my.Books {
        *,
        author.name as author_name
    };
    entity Authors2 as projection on my.Authors2;
}

using { bookshop } from '../db/schemas';

service Main {

    entity Books as projection on bookshop.Books;
    entity Categories as projection on bookshop.Categories;
}
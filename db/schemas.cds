namespace bookshop;

entity Books {
    key BookID   : Integer;
        BookName : String;
        Price    : Integer;
        Category : Association to Categories;
}

entity Categories {
    key CategoryID  : Integer;
        CategoryName: String;
        Description : String;
        Books       : Association to many Books on Books.Category = $self;
}
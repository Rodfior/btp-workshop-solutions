namespace my.bookshop2;

using {cuid, managed} from '@sap/cds/common';


entity Books: cuid, managed {
  title  : String;
  stock  : Integer;
  price: Decimal;
  author: Association to Authors;
}

entity Authors{
  key ID: Integer;
  name: String;
  dateOfBirth: Date;
  books: Association to many Books
          on books.author = $self;
}
@cds.persistence.exists
entity Authors2 {
    key ID: Integer;
    name: String;
}
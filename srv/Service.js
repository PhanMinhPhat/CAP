module.exports = (srv) => {
  srv.after("READ", "Books", (items) => {
    return items.map((item) => {
      if (item.Price > 15) {
        item.BookName += " SALE NOW ON!";
      }
      return item;
    });
  });
};

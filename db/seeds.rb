CartedProduct.create!([
  {status: "ordered", user_id: 5, product_id: 3, quantity: 1, order_id: 1},
  {status: "ordered", user_id: 5, product_id: 4, quantity: 3, order_id: 1},
  {status: "removed", user_id: 5, product_id: 2, quantity: 3, order_id: 0},
  {status: "ordered", user_id: 5, product_id: 3, quantity: 3, order_id: 2},
  {status: "ordered", user_id: 5, product_id: 4, quantity: 1, order_id: 2}
])
Image.create!([
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_07_a01_50131_12696_on_b.jpg", product_id: 1},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_03_a01_61073_13147_on_b.jpg", product_id: 2},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_03_a01_61073_13147_on_a.jpg", product_id: 2},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_07_a01_51878_12284_off_a.jpg", product_id: 3},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_07_a01_51878_12284_on_d.jpg", product_id: 3},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_02_a01_58741_1274_off_a.jpg", product_id: 4},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_02_a01_58741_1274_on_c.jpg", product_id: 4},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_02_a01_58741_1274_on_a.jpg", product_id: 4},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_07_a01_51878_12284_on_b.jpg", product_id: 3},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_01_a02_63294_11902_on_b.jpg", product_id: 5},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_04_a02_62958_13031_on_b.jpg", product_id: 6}
])
Order.create!([
  {user_id: 5, subtotal: "125.0", tax: "0.09", total: "136.09", confirmation_id: "bh7dse6584"},
  {user_id: 5, subtotal: "135.0", tax: "0.09", total: "146.98", confirmation_id: "ih37ny6p48"}
])
Product.create!([
  {name: "Andrews Tee", price: 50},
  {name: "Jamilla Tee", price: 35},
  {name: "Talula Cami", price: 30},
  {name: "Babaton Blouse", price: 90},
  {name: "Wilfred Blouse", price: 100},
  {name: "Winberg Tank", price: 30}
])
User.create!([
  {name: "Janice", email: "janice@janice", password_digest: "$2a$10$40x//ZyH1xUmD9SVILlke.p2qxnL4x5Xntema4nLzr1.ggvIARsfq", admin: nil},
  {name: "bob", email: "bob@gmail.com", password_digest: "$2a$10$1j9zyK8IbUGv1HOxDK630ur0odIIuhkn7X8PKH0JyimA8jWtBU.tO", admin: true}
])

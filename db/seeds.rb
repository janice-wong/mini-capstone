CartedProduct.all.destroy_all
Order.all.destroy_all
Image.all.destroy_all
Product.all.destroy_all
User.all.destroy_all

Product.create!([
  {name: "Betsy Tee", price: 50},
  {name: "Veronica Tee", price: 35},
  {name: "Archie Cami", price: 30},
  {name: "Reggie Blouse", price: 90},
  {name: "Emily Blouse", price: 100},
  {name: "Lauren Tank", price: 30}
])

User.create!([
  {name: "Janice", email: "janice@janice", password_digest: "$2a$10$40x//ZyH1xUmD9SVILlke.p2qxnL4x5Xntema4nLzr1.ggvIARsfq", admin: nil},
  {name: "bob", email: "bob@gmail.com", password_digest: "$2a$10$1j9zyK8IbUGv1HOxDK630ur0odIIuhkn7X8PKH0JyimA8jWtBU.tO", admin: true}
])

Image.create!([
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_07_a01_50131_12696_on_b.jpg", product_id: Product.find_by(name: "Betsy Tee").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_03_a01_61073_13147_on_b.jpg", product_id: Product.find_by(name: "Veronica Tee").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_03_a01_61073_13147_on_a.jpg", product_id: Product.find_by(name: "Veronica Tee").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_07_a01_51878_12284_off_a.jpg", product_id: Product.find_by(name: "Archie Cami").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_07_a01_51878_12284_on_d.jpg", product_id: Product.find_by(name: "Archie Cami").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_02_a01_58741_1274_off_a.jpg", product_id: Product.find_by(name: "Reggie Blouse").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_02_a01_58741_1274_on_c.jpg", product_id: Product.find_by(name: "Reggie Blouse").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/large/s17_02_a01_58741_1274_on_a.jpg", product_id: Product.find_by(name: "Reggie Blouse").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_07_a01_51878_12284_on_b.jpg", product_id: Product.find_by(name: "Archie Cami").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_01_a02_63294_11902_on_b.jpg", product_id: Product.find_by(name: "Emily Blouse").id},
  {url: "http://s7d9.scene7.com/is/image/Aritzia/medium/s17_04_a02_62958_13031_on_b.jpg", product_id: Product.find_by(name: "Lauren Tank").id}
])

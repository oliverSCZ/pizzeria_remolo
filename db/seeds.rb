# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
cat1 = Category.create(nombre: "Pizzas", descripcion: "Todos los productos de esta categoria son pizzas")
cat2 = Category.create(nombre: "Bebidas", descripcion: "Todos los productos de esta categoria son bebidas")
cat3 = Category.create(nombre: "Postres", descripcion: "Todos los productos de esta categoria son postres")
p3 = Product.create(nombre: "Pizza de anana", cantidad: 0, stock: 14, precio: 45, descripcion: "Pizza familiar, no es una de las mas populares del mundo, pero hay gente que la consume.", imagen: "https://image.lexica.art/md/8f7a4a61-92cb-4bb1-87db-39d2bec701b1", category_id: 1)
p3 = Product.create(nombre: "Pizza de anana", cantidad: 0, stock: 14, precio: 45, descripcion: "Pizza familiar, no es una de las mas populares del mundo, pero hay gente que la consume.", imagen: "https://image.lexica.art/md/8f7a4a61-92cb-4bb1-87db-39d2bec701b1", category_id: 1)
p3 = Product.create(nombre: "Pizza de anana", cantidad: 0, stock: 14, precio: 45, descripcion: "Pizza familiar, no es una de las mas populares del mundo, pero hay gente que la consume.", imagen: "https://image.lexica.art/md/8f7a4a61-92cb-4bb1-87db-39d2bec701b1", category_id: 1)
p4 = Product.create(nombre: "Limonada de Jengibre", cantidad: 0, stock:20, precio: 25, descripcion: "Limonada familiar a base de limon y jengibre.", imagen: "https://cdn.pixabay.com/photo/2021/04/29/16/08/tea-6216919_960_720.jpg", category_id: 2)
p5 = Product.create(nombre: "Agua mineral", cantidad: 0, stock:18, precio: 20, descripcion: "Agua mineral con gas o sin gas.", imagen: "https://media.istockphoto.com/id/1183424538/es/foto/agua-que-vierte-en-el-vidrio.jpg?s=612x612&w=is&k=20&c=5fhTeS36HF9NsTZhwVyK5-kDpXKLCwCQkrKSR4VSMNQ=", category_id: 2)
p6 = Product.create(nombre: "Postre de Mora", cantidad: 0, stock:18, precio: 40, descripcion: "Se puede preparar con el sabor de su gelatina favorita, mora, fresa, durazno, piña, limón, la que prefieran.", imagen: "https://cdn.pixabay.com/photo/2018/02/23/09/43/juice-3175117_960_720.jpg", category_id: 3)
p7 = Product.create(nombre: "Pastel de Naranja", cantidad: 0, stock:18, precio: 35, descripcion: "Se puede preparar con el sabor de su gelatina favorita, mora, fresa, durazno, piña, limón, la que prefieran.", imagen: "https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716_960_720.jpg", category_id: 3)
p8 = Product.create(nombre: "Helado frutal", cantidad: 0, stock:15, precio: 50, descripcion: "Se puede servir con su sabor favorito, mora, fresa, durazno, piña, limón.", imagen: "https://cdn.pixabay.com/photo/2016/10/31/18/14/dessert-1786311__340.jpg", category_id: 3)
p "Se crearon #{Category.count} categorias y #{Product.count} productos"
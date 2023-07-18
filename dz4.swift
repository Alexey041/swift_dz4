//Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).


enum PizzaType{
    case pepperoni
    case margarita
    case fourCheeses
    case mexico
    case pinocchio
}

//Создать структуру пиццы. Она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки
//(например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для
//структуры пиццы.

struct Pizza {
    var type: PizzaType
    var price: Double
    var dough: Bool
    var suppl: Supplements 
}

enum Supplements {
    case spices
    case sauce
    case cheese
    case tomatoes
    case bacon

}


//Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть
//приватной. Массив задаётся в инициализаторе.

class Pizzeria {
    private var pizzas: [Pizza]

    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }

    //Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.

    
    func addNewPizzaType(pizzas: Pizza){
        self.pizzas.append(pizzas)
    }

    
    func getAvailablePizza() {
        print(pizzas)
        
    }
    
}

//Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.

var pizza1 = Pizza(type: PizzaType.pepperoni, price: 12, dough: false, suppl: Supplements.cheese)
var pizza2 = Pizza(type: PizzaType.margarita, price: 21, dough: true, suppl: Supplements.tomatoes)
var pizza3 = Pizza(type: PizzaType.mexico, price: 18.7, dough: false, suppl: Supplements.bacon)

var pizzeria = Pizzeria(pizzas: [pizza1, pizza2, pizza3])

pizzeria.getAvailablePizza()


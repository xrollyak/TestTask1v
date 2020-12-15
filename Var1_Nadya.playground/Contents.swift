import UIKit


/*

 1. Создайте перечисление Transport с видами транспорта: метро, трамвай, троллейбус, автобус и маршрутка.
 Для этого перечисления реализуйте связанное значение с названием транспорта на русском языке
 2. Создайте перечисление PaymentType: наличные, карта и мобильные приложения.
 3. Создайте словарь cityTransport, в котором ключ — вид транспорта, а значение — массив типа PaymentType, который соответствует возможным вариантам оплаты в данном виде транспорта
 4. На основе словаря cityTransport, создайте новый словарь transportPaymentTypes, в котором ключ - имя транспорта, а значение - количество способов оплаты. (Добавление значений в словарь происходит в цикле. Также, как и вычисление количества способов оплаты).
 Выведите в консоль в формате: "имяТранспорта позволяет оплатить проезд x способ(ом/ами)".
 5. Посчитайте среднее количество способов оплаты в городском транспорте (количество способов оплаты в каждом транспорте, делённое на количество видов транспорта)
 6. Создайте случайный тип транспорта. Если не удалось, то установите дефолтный транспорт - метро
 7. Создайте случайный тип оплаты проезда. Если не удалось, то установите дефолтный - наличные.
 8. Создайте тьюпл passenger с 2 аргументами:
 тип транспорта
 тип оплаты
 Проинициализируйте их случайными значениями из пункта 4 и 5.
 9. Если тип оплаты, которым решил воспользоваться пассажир, поддерживается в транспорте, на который он сел (есть такое значение для данного ключа из словаря cityTransport), то выведите информацию о том, что пассажир может ехать.
 В противном случае, высаживайте пассажира из транспорта, выведя об этом информацию в консоль (воспользуйтесь интерполяцией для вывода локализированного на русский язык типа транспорта)
 10.(со звёздочкой) Если выбранный пассажиром транспорт не поддерживает заданный тип оплаты, то предложите пассажиру пересесть на любой другой транспорт, в котором есть такой тип оплаты.
 
*/


enum Transport: String {
    case metro = "метро"
    case tramvai = "трамвай"
    case trolleibus = "тролейбул"
    case bus = "автобус"
    case marshrutka = "маршрутка"
}
enum PaymentType: String {
    case cash, card, mobileApp
    
}
var cityTransport: [Transport:[PaymentType]] = [.bus: [PaymentType.card, PaymentType.cash, PaymentType.mobileApp],
                                                .marshrutka: [PaymentType.card, PaymentType.cash],
                                                .metro: [PaymentType.card, PaymentType.mobileApp],
                                                .tramvai: [PaymentType.card, PaymentType.cash, PaymentType.mobileApp],
                                                .trolleibus: [PaymentType.card, PaymentType.cash, PaymentType.mobileApp]]
var transportPaymentTypes: [Transport: Int] = [:]
for (key, value) in cityTransport {
    transportPaymentTypes.updateValue(value.count, forKey: key)
    print("transpor \(key) have \(value.count) payment metods")
}

var totalPay: Int = 0
for value in transportPaymentTypes.values {
    totalPay += value
}
print("среднее значение \((totalPay)/transportPaymentTypes.keys.count)")

let newTransport = Transport.RawValue.init("самолет")
let paymetMetod = PaymentType.RawValue.init("монеты")

var passenger:(Transport,PaymentType) = (.metro, .cash)
for (key, value) in cityTransport {
    for val in value {
        if val != nil, passenger.1 == val {
            
        }
}
    if key == passenger.0 {
        print("Пассажир может ехать")
    } else {
        print("Пассажир должен выйти из транспорта")
    }
}




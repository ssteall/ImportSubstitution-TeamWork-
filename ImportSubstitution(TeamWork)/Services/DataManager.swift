//
//  DataManager.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Дмитрий Мирошников on 09.04.2022.
//

class DataManager {

    static let shared = DataManager()
    
    let importProduct = [ImportProduct(name: "Coca-cola",
                                       description: "Газированный безалкогольный напиток, производимый компанией Coca-Cola. Первоначально продававшийся как напиток для замены алкоголя и предназначавшийся в качестве патентного лекарства",
                                       analogues: [RussianProduct(name: "Байкал",
                                                                  description: "Сильногазированный тонизирующий напиток, разработанный в СССР как местный аналог «Кока-колы» и «Пепси-колы»",
                                                                  price: 50.0,
                                                                  rate: 6.0),
                                                   RussianProduct(name: "Cola Grink",
                                                                  description: " Cola Grink изготовлена на основе природной минеральной воды, а ее вкус максимально приближен к Coca-Cola. Газировку разливают в бутылки по 0,5 и 1,4 литра на заводе «Скит»",
                                                                  price: 100,
                                                                  rate: 5.0),
                                                  RussianProduct(name: "БАЙКАЛ Черноголовка",
                                                                 description: "езалкогольный сильногазированный напиток на пряно-ароматическом растительном сырье Напиток Черноголовка Байкал – 100% качество, напиток в лучших советских традициях, натуральные ингредиенты",
                                                                 price: 120.1,
                                                                 rate: 9.2)],
                                       category: .food),
                         ImportProduct(name: "Пармезан",
                                       description: "Итальянский сорт твёрдого сыра долгого созревания, отмеченный знаком качества DOP (Denominazione di Origine Protetta — наименование, защищённое по происхождению). Текстура ломкая, сыр с неровным срезом, крошится при нарезании. Вкус нежный, с пикантным послевкусием.",
                                       analogues: [RussianProduct(name: "Алтайский «Швейцарский сыр» ",
                                                                  description: "твердый сыр из молока алтайских коров. Его еще называют российский пармезан за схожие вкусовые свойства с итальянским сыром, при этом стоимость его в разы меньше.",
                                                                  price: 1000.0,
                                                                  rate: 8.1),
                                                   RussianProduct(name: "Брендамур",
                                                                  description: "Амурский сыр. По виду его головки очень похожи на трюфели, соответствуя своему названию. Текстура — крошащаяся. Острый, пикантный вкус с кисловатыми цитрусовыми нотками ему придают чеснок и свежемолотый черный перец.",
                                                                  price: 500.0,
                                                                  rate: 8.0),
                                                  RussianProduct(name: "Винный",
                                                                 description: "Пряный сыр с винными нотками. Технология изготовления зародилась случайно, как множество других гениальных изобретений человечества.",
                                                                 price: 400,
                                                                 rate: 7)],
                                       category: .food),
                         ImportProduct(name: "Шаммпанское",
                                       description: "игристое вино, произведённое во французском регионе Шампань из установленных сортов винограда методом вторичного брожения вина в бутылке. Название напитка происходит от названия провинции Шампань, где расположен данный регион.",
                                       analogues: [RussianProduct(name: "МИЛЬСТРИМ – ЧЕРНОМОРСКИЕ ВИНА",
                                                                  description: "Вино прозрачное, с продолжительной игрой мелких пузырьков. Цвет светло-соломенный, с блеском. Аромат чистый, очень интенсивный, свежий. Букет вина тонкий, достаточно развитый, с превалированием цитрусовых и плодовых оттенков, нот полевых и садовых цветов на фоне ягодных тонов, отмечен умеренный сортовой тон. Во вкусе яркое, полное, слаженное, шелковистое, с приятным продолжительным ягодным послевкусием. Вино с хорошим балансом. Оставляет приятное впечатление.",
                                                                  price: 0.1,
                                                                  rate: 4.2),
                                                  RussianProduct(name: "БАЛАКЛАВА",
                                                                 description: "Вино прозрачное, с продолжительной игрой пузырьков. Цвет золотисто-желтый, с блеском. Букет вина развитый, многогранный, интенсивный, в аромате превалируют тона садовых и полевых цветов, плодовые ноты, отмечен яркий сортовой тон, во второй волне – ягодные, цитрусовые, медовые ноты и тона тропических фруктов. Во вкусе яркое, насыщенное, полное, слаженное, с продолжительным послевкусием. Гармоничное вино с хорошим балансом. Оставляет яркое впечатление.",
                                                                 price: 550,
                                                                 rate: 4.1),
                                                  RussianProduct(name: "КУБАНЬ-ВИНО",
                                                                 description: "Вино прозрачное, с продолжительной игрой пузырьков. Цвет золотисто-желтый, с блеском. Аромат свежий, интенсивный. Букет вина тонкий, превалируют ноты полевых цветов, цитрусовые и плодовые тона на фоне оттенков садовых цветов, легких сливочно-ванильных и медовых нот. Во вкусе яркое, слаженное, гармоничное, с продолжительным свежим послевкусием. Гармоничное вино с хорошим балансом.",
                                                                 price: 200,
                                                                 rate: 4)],
                                       category: .food)
    ]
    
    private init() {}
}

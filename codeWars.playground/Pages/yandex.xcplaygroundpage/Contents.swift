//: [Previous](@previous)

//import Foundation
//
//func timeToDelayParty(_ tasks: [Int], _ position: Int) -> Int {
//    var tasks = tasks
//    var pos = 0
//    var long = 0
//
//    while tasks[position] != 0 {
//        if pos == tasks.count  {
//            pos = 0
//        }
//        if tasks[pos] == 0 {
//            continue
//        }
//        tasks[pos] -= 1
//        pos += 1
//        long += 1
//    }
//    print("\(long)")
//    return long
//}
//
//timeToDelayParty([2,3,2], 2)

//## Условие
//
//Известная IT-компания решила провести мероприятие для мобильных разработчиков.
//
//Чтобы на мероприятие не попали незаинтересованные люди, для участия необходимо решить две задачи. Компания очень крупная, поэтому в обработке заявок может принять участие **от 1 до 1 000 000** рекрутеров компании. Каждый рекрутер в итоге получил разное количество решенных задач (**от 1 до 1 000 000 000**), потому что не все претенденты прислали решения.
//
//Проверка задач не автоматизирована целиком и её должны делать разработчики, но оказалось, что все разработчики заняты, кроме Аркадия. Аркадий очень продуктивный и проверяет задачи за 1 секунду. Он берет по одной задаче от рекрутеров, после проверки рекрутер отправляется в конец очереди и ждет, пока будут проверены по 1 задаче у оставшихся рекрутеров, после чего может отдать на проверку свою следующую задачу. Если же у рекрутера не осталось задач для проверки, то он покидает очередь и уходит домой.
//
//Рекрутера Юлю ждут на вечеринке и не хотят начинать без неё, но просят сказать, когда она освободится. Помогите Юле ответить на этот вопрос, если вы знаете её положение в очереди до начала проверок.
//
//**Ввод:**
//
//`tasks = [2,3,2], position = 2`
//
//**Вывод:**


//Тимлид попросил реализовать нового разработчика фичу по показу карточек товаров. Отображать эти карточки нужно в замкнутой горизонтальной карусели (т.е. скроллить её можно бесконечно по кругу). Карточка представляет из себя квадрат 100x100 с картинкой на заднем фоне и 2 строки с текстом. Данные для этих карточек нужно получать двумя запросами. Первый скачивает конфигурацию, которая представляет собой массив ссылок на данные с самими карточками. После скачивания всех данных их нужно объединить в один список, отсортировать по неубыванию даты создания. Также тимлид попросил реализовать обработку ошибок в процессе получения и отображения карточек.
//
//Побудь тимлидом этого разработчика и проведи Code Review созданного кода. Постарайся найти все проблемы и описать их для нового разработчика, чтобы он смог понять и исправить проблему:
//
//- Укажи номера строк, в которых найдешь ошибку
//- Объясни что за ошибка и почему она может возникнуть
//- Предложи как лучше поправить ошибку, можно небольшим сниппетом кода, псевдокодом или просто словами
//
//```swift
//001  class DataService {
//002    struct CarouselItem: Codable {
//003        let title: String
//004        let subtitle: String
//005        let imageUrl: String
//006        let dateCreated: String
//007    }
//008
//009    var config: [String] = []
//010    var models: [CarouselItem] = []
//011
//012    private let host: String
//013
//014    private let decodeQueue: DispatchQueue = DispatchQueue(
//015        label: "DecodeQueue",
//016        qos: .background,
//017        attributes: .concurrent
//018    )
//019
//020    init(host: String) {
//021        self.host = host
//022    }
//023
//024    func loadData(completion: @escaping (([CarouselItemViewModel]) -> Void)) {
//025        loadConfig { config in
//026            self.config = config
//027            self.loadCarousels()
//028
//029            var viewModels: [CarouselItemViewModel] = []
//030            DispatchQueue.concurrentPerform(iterations: self.models.count) { index in
//031                let group = DispatchGroup()
//032                group.enter()
//033
//034                let df = DateFormatter()
//035                let date = df.date(from: self.models[index].dateCreated) ?? Date()
//036
//037                URLSession.shared.dataTask(with: URL(string: self.models[index].imageUrl)!) { data, _, _ in
//038                    guard let unwrappedData = data else { return }
//039                    group.enter()
//040                    var image = UIImage()
//041                    DispatchQueue.main.async {
//042                        image = UIImage(data: unwrappedData) ?? UIImage()
//043                    }
//044                    viewModels.append(.init(
//045                        title: self.models[index].title,
//046                        subtitle: self.models[index].subtitle,
//047                        image: image,
//048                        dateCreated: date)
//049                    )
//050                }
//051
//052                group.leave()
//053                group.wait()
//054            }
//055
//056            viewModels.sort(by: { $0.dateCreated < $1.dateCreated })
//057            completion(viewModels)
//058        }
//059    }
//060
//061    func loadConfig(completion: @escaping (([String]) -> Void)) {
//062        URLSession.shared.dataTask(with: URL(string: host + "/config")!) { data, _, _ in
//063            guard let data = data else { completion([]); return }
//064            let config = try! JSONDecoder().decode([String].self, from: data)
//065            completion(config)
//066        }
//067    }
//068
//069    func loadCarousels() {
//070        let group = DispatchGroup()
//071        config.forEach { url in
//072            group.enter()
//073            URLSession.shared.dataTask(with: URL(string: url)!) { [weak self] data, _, _ in
//074                guard let data = data else { return }
//075                self?.decodeQueue.async { [weak self] in
//076                    let models = try! JSONDecoder().decode([CarouselItem].self, from: data)
//077                    self?.models.append(contentsOf: models)
//078                    group.leave()
//079                }
//080            }
//081        }
//082        group.wait()
//083    }
//084}
//085
//086 struct CarouselItemViewModel {
//087    let title: String
//088    let subtitle: String
//089    let image: UIImage
//090    let dateCreated: Date
//091}
//092
//093 class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//094    var dataSource: [CarouselItemViewModel] = []
//095    var dataSourceExtended: [CarouselItemViewModel] = []
//096
//097    private lazy var collectionViewLayout: UICollectionViewFlowLayout = {
//098        let layout = UICollectionViewFlowLayout()
//099        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
//100        layout.scrollDirection = .horizontal
//101        layout.minimumLineSpacing = 0
//102        return layout
//103    }()
//104
//105    private let collectionView = UICollectionView()
//106
//107    fileprivate var scrollViewContentSize: CGFloat {
//108        get {
//109            collectionView.contentSize.width
//110        }
//111    }
//112
//113    fileprivate var collectionViewBoundsValue: CGFloat {
//114        get {
//115            collectionView.bounds.size.width
//116        }
//117    }
//118
//119    fileprivate var numberOfBoundaryElements: Int = 0
//120
//121    override func viewDidLoad() {
//122        super.viewDidLoad()
//123
//124        loadData()
//125
//126        collectionView.dataSource = self
//127        collectionView.delegate = self
//128
//129        view.addSubview(collectionView)
//130        collectionView.translatesAutoresizingMaskIntoConstraints = false
//131        NSLayoutConstraint.activate([
//132            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
//133            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//134            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//135            collectionView.heightAnchor.constraint(equalToConstant: 100)
//136        ])
//137
//138        numberOfBoundaryElements = Int(view.bounds.width / 100)
//139        dataSourceExtended = dataSource + dataSource + dataSource
//140    }
//141
//142    internal func loadData() {
//143        let service = DataService(host: "example.com")
//144        service.loadData { data in
//145            self.dataSource = data
//146            if data.isEmpty {
//147                print("No data")
//148            } else {
//149                self.collectionView.reloadData()
//150            }
//151        }
//152    }
//153
//154    private func indexInOriginalDataSet(forIndexInBoundaryDataSet index: Int) -> Int {
//155        let difference = index - numberOfBoundaryElements
//156        if difference < 0 {
//157            let originalIndex = dataSource.count + difference
//158            return abs(originalIndex % dataSource.count)
//159        } else if difference < dataSource.count {
//160            return difference
//161        } else {
//162            return abs((difference - dataSource.count) % dataSource.count)
//163        }
//164    }
//165
//166    func numberOfSections(in collectionView: UICollectionView) -> Int {
//167        1
//168    }
//169
//170    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//171        return dataSourceExtended.count
//172    }
//173
//174    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//175        let cell = ItemViewCell()
//176        cell.translatesAutoresizingMaskIntoConstraints = false
//177
//178        let originalIndex = indexInOriginalDataSet(forIndexInBoundaryDataSet: indexPath.item)
//179
//180        cell.configure(with: dataSource[originalIndex])
//181        return cell
//182    }
//183
//184    func collectionView(
//185        _ collectionView: UICollectionView,
//186        layout collectionViewLayout: UICollectionViewLayout,
//187        sizeForItemAt indexPath: IndexPath
//188    ) -> CGSize {
//189        .init(width: 100, height: 100)
//190    }
//191
//192    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//193        let contentOffsetValue = scrollView.contentOffset.x
//194
//195        if contentOffsetValue >= (scrollViewContentSize - CGFloat(dataSource.count * 100)) {
//196            scrollView.contentOffset = CGPoint(x: CGFloat(dataSource.count * 100), y: 0)
//197        } else if contentOffsetValue <= 0 {
//198            scrollView.contentOffset = CGPoint(x: CGFloat(dataSource.count * 100), y: 0)
//199        }
//200    }
//201}
//202
//203 class ItemViewCell: UICollectionViewCell {
//204    private let imageView = UIImageView()
//205    private let renderQueue = OperationQueue()
//206
//207    private var model: CarouselItemViewModel?
//208
//209    override init(frame: CGRect) {
//210        super.init(frame: frame)
//211
//212        [imageView].forEach {
//213            $0.translatesAutoresizingMaskIntoConstraints = false
//214            addSubview($0)
//215        }
//216
//217        NSLayoutConstraint.activate([
//218            imageView.topAnchor.constraint(equalTo: topAnchor),
//219            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
//220            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
//221            imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
//222        ])
//223    }
//224
//225    required init?(coder: NSCoder) {
//226        fatalError("init(coder:) has not been implemented")
//227    }
//228
//229    override func layoutSubviews() {
//230        imageView.layer.cornerRadius = imageView.frame.height / 2
//231    }
//232
//233    func configure(with model: CarouselItemViewModel) {
//234        self.model = model
//235
//236        renderQueue.addOperation {
//237            let paragraph = NSMutableParagraphStyle()
//238            paragraph.alignment = .center
//239
//240            let titleAttributedString = NSAttributedString(
//241                string: model.title,
//242                attributes: [
//243                    NSAttributedString.Key.foregroundColor: UIColor.red,
//244                    NSAttributedString.Key.paragraphStyle: paragraph
//245                ]
//246            )
//247
//248            let subtitleAttributedString = NSAttributedString(
//249                string: model.subtitle,
//250                attributes: [
//251                    NSAttributedString.Key.foregroundColor: UIColor.brown,
//252                    NSAttributedString.Key.paragraphStyle: paragraph
//253                ]
//254            )
//255
//256            UIGraphicsBeginImageContextWithOptions(.init(width: 100, height: 100), false, 0)
//257
//258            UIColor.green.setFill()
//259            UIRectFill(.init(origin: .zero, size: .init(width: 100, height: 100)))
//260
//261            model.image.draw(in: .init(origin: .zero, size: .init(width: 100, height: 100)))
//262
//263            titleAttributedString.draw(at: .init(x: 0, y: 10))
//264            subtitleAttributedString.draw(at: .init(x: 0, y: 20))
//265
//266            let result = UIGraphicsGetImageFromCurrentImageContext()
//267            UIGraphicsEndImageContext()
//268
//269            self.imageView.image = result
//270        }
//271    }
//272 }
//```


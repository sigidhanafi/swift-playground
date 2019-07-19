import AsyncDisplayKit
import PlaygroundSupport

//public struct TableViewData {
//    public let label: String
//}
//
//public class TableViewController: ASViewController<ASDisplayNode> {
//    private let tableNode = ASTableNode()
//    private let textLabel = ASTextNode()
//    private let textView = ASDisplayNode()
//
//    private let headerNode = ASDisplayNode()
//    private let headerTextNode = ASTextNode()
//
//    private var data = [TableViewData]()
//
//    init() {
//        super.init(node: tableNode)
//
////        tableNode.automaticallyManagesSubnodes = true
//
//        data.append(TableViewData(label: "Name"))
//        data.append(TableViewData(label: "First Name"))
//        data.append(TableViewData(label: "Last Name"))
//        data.append(TableViewData(label: "Full Name"))
//
////        let headerView = ASDisplayNode()
////        headerView.backgroundColor = .green
////        tableNode.view.tableHeaderView = headerView.view
////        tableNode.view.sectionHeaderHeight = 100
//
////        headerNode.backgroundColor = .green
////        headerNode.style.height = ASDimensionMake(10)
//
//        headerTextNode.automaticallyManagesSubnodes = true
//        headerTextNode.attributedText = NSAttributedString(string: "Hallo gaes", attributes: [
//            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12),
//            NSAttributedString.Key.foregroundColor: UIColor.black
//            ])
//        headerTextNode.style.preferredSize = CGSize(width: 100, height: 100)
//
//        headerNode.backgroundColor = .green
//        headerNode.automaticallyManagesSubnodes = true
//        headerNode.layoutSpecBlock = { (_, _) -> ASLayoutSpec in
//            let wrapper = ASStackLayoutSpec.horizontal()
//            wrapper.children = [self.headerTextNode]
//
//            return wrapper
//        }
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    public override func viewDidLoad() {
////        let headerView = ASDisplayNode()
////        headerView.backgroundColor = .green
////        tableNode.view.tableHeaderView = headerView.view
////        tableNode.view.sectionHeaderHeight = 100
//
////        headerNode.backgroundColor = .green
////        headerNode.layoutSpecBlock = { (_, _) -> ASLayoutSpec in }
////        headerNode.style.height = ASDimensionMake(100)
////        headerNode.style.preferredSize = CGSize(width: 10, height: 10)
////        headerNode.frame = CGRect(x: 0, y: 0, width: 0, height: 100)
//
//        tableNode.delegate = self
//        tableNode.dataSource = self
//
////        let headerView = ASDisplayNode()
////        headerView.backgroundColor = .green
////        tableNode.view.tableHeaderView = headerNode.view
////        tableNode.view.sectionHeaderHeight = 100
//
//    }
//}
//
//extension TableViewController: ASTableDelegate, ASTableDataSource {
//    public func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
//        // let cellData = data[indexPath.row]
//        let cellNodeBlock = { () -> ASCellNode in
//             let cellNode = ASCellNode()
//            cellNode.automaticallyManagesSubnodes = true
//            cellNode.layoutSpecBlock = { (_, _) -> ASLayoutSpec in
//                let contentNode = ASDisplayNode()
//                contentNode.backgroundColor = .blue
//                contentNode.style.preferredSize = CGSize(width: 100, height: 100)
//
//                let horizontalView = ASStackLayoutSpec.horizontal()
//                horizontalView.children = [contentNode]
//
//                return horizontalView
//            }
//            return cellNode
//        }
//
//        return cellNodeBlock
//    }
//
//    public func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//
//    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        return self.headerNode.view
//    }
//
//    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 100
//    }
//
//}

class TestShadowVC: ASViewController<ASDisplayNode>
{
    private let shadowNode = ASDisplayNode()
    private let customNode = CustomShadowNode()
    
    init() {
        let node = ASDisplayNode()
        node.automaticallyManagesSubnodes = true
        node.backgroundColor = .white
        super.init(node: node)
        
        generateView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func generateView() {
        shadowNode.style.preferredSize = CGSize(width: 100, height: 100)
        self.shadowNode.backgroundColor = .white
        
        node.layoutSpecBlock = { (_, _) -> ASLayoutSpec in
            let wrapper = ASStackLayoutSpec.horizontal()
            wrapper.spacing = 16
            wrapper.children = [self.shadowNode, self.customNode]

            return wrapper
        }
    }
    
    override func viewDidLoad() {
        shadowNode.borderColor = UIColor.blue.cgColor
        shadowNode.shadowColor = UIColor.black.cgColor
        shadowNode.shadowRadius = 3
        shadowNode.shadowOpacity = 0.2
        shadowNode.shadowOffset = CGSize(width: 3, height: 3)
    }
}

class CustomShadowNode: ASDisplayNode {
    private let customNode = ASDisplayNode()
    private let textInsideNode = ASTextNode()
    
    override init() {
        super.init()
        
        self.automaticallyManagesSubnodes = true
        self.style.preferredSize = CGSize(width: 100, height: 100)
        self.backgroundColor = .red
        
        self.customNode.automaticallyManagesSubnodes = true
        self.customNode.style.preferredSize = CGSize(width: 20, height: 20)
        
        self.textInsideNode.attributedText = NSAttributedString(string: "Halo", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didLoad() {
        self.borderColor = UIColor.blue.cgColor
        self.shadowColor = UIColor.black.cgColor
        self.shadowRadius = 3
        self.shadowOpacity = 0.7
        self.shadowOffset = CGSize(width: 3, height: 3)
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        let wrapperLagi = ASStackLayoutSpec.vertical()
        wrapperLagi.children = [self.customNode, self.textInsideNode]

//        let wrapper =  ASStackLayoutSpec.vertical()
//        wrapper.children = [wrapperLagi]
        return wrapperLagi
    }
}

PlaygroundPage.current.liveView = TestShadowVC()

import Foundation

struct Story{
    let title: String
    let choi1: String
    let choi2: String
    let choi1Des: Int
    let choi2Des: Int
    
    init(title:String, choi1:String, choi1Des:Int, choi2:String, choi2Des:Int) {
        self.title = title
        self.choi1 = choi1
        self.choi2 = choi2
        self.choi1Des = choi1Des
        self.choi2Des = choi2Des
    }
    
    init(story: Story) {
        self.title = story.title
        self.choi1 = story.choi1
        self.choi2 = story.choi2
        self.choi1Des = story.choi1Des
        self.choi2Des = story.choi2Des
    }
}

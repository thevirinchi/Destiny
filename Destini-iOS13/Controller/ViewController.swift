import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var story:Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        story = Story(story: storyBrain.getStory())
        storyLabel.text = story?.title
        choice1Button.setTitle(story?.choi1, for: .normal)
        choice2Button.setTitle(story?.choi2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if(!storyBrain.proceed(title: sender.currentTitle!)){
            storyLabel.text = "The End."
        }
        else{
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
    }
    
    @objc func updateUI(){
        story = Story(story: storyBrain.getStory())
        storyLabel.text = story?.title
        choice1Button.setTitle(story?.choi1, for: .normal)
        choice2Button.setTitle(story?.choi2, for: .normal)
    }


}


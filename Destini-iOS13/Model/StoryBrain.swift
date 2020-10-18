import Foundation
struct StoryBrain{
    let stories = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choi1: "I'll hop in. Thanks for the help!", choi1Des: 2,
            choi2: "Better ask him if he's a murderer first.", choi2Des: 1
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choi1: "At least he's honest. I'll climb in.", choi1Des: 2,
            choi2: "Wait, I know how to change a tire.", choi2Des: 3
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choi1: "I love Elton John! Hand him the cassette tape.", choi1Des: 5,
            choi2: "It's him or me! You take the knife and stab him.", choi2Des: 4
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choi1: "The", choi1Des: 0,
            choi2: "End", choi2Des: 0
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choi1: "The", choi1Des: 0,
            choi2: "End", choi2Des: 0
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choi1: "The", choi1Des: 0,
            choi2: "End", choi2Des: 0
        )
    ]
    var curr = 0
    
    mutating func proceed(title:String)->Bool{
        if(stories[curr].choi1Des == stories[curr].choi2Des && stories[curr].choi1Des == 0){
            return (false)
        }
        else if(title == stories[curr].choi1){
            curr = stories[curr].choi1Des
            return (true)
        }
        else{
            curr = stories[curr].choi2Des
            return (true)
        }
    }

    func getStory() -> Story{
        return (stories[curr])
    }
}


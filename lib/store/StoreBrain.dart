import 'package:positivesurvival/store/story.dart';

class StoreBrain {
  int track;
  List<Story> _story = [
    Story(
        StoryTitle: 'Elephant Rope',
        StoryDesc:
            'A gentleman was walking through an elephant camp, and he spotted that the elephants weren\’t being kept in cages or held by the use of chains.\nAll that was holding them back from escaping the camp, was a small piece of rope tied to one of their legs.\nAs the man gazed upon the elephants, he was completely confused as to why the elephants didn\’t just use their strength to break the rope and escape the camp. They could easily have done so, but instead, they didn\’t try to at all.\nCurious and wanting to know the answer, he asked a trainer nearby why the elephants were just standing there and never tried to escape.\nThe trainer replied;\n\“when they are very young and much smaller we use the same size rope to tie them and, at that age, it\’s enough to hold them. As they grow up, they are conditioned to believe they cannot break away. They believe the rope can still hold them, so they never try to break free.\”\nThe only reason that the elephants weren\’t breaking free and escaping from the camp was that over time they adopted the belief that it just wasn\’t possible.',
        choiceOne: 'Impact on your Life',
        choiceTwo: 'Moral it depicts'),
    Story(
      StoryTitle: 'Group of Frogs',
      StoryDesc:
          'As a group of frogs was traveling through the woods, two of them fell into a deep pit. When the other frogs crowded around the pit and saw how deep it was, they told the two frogs that there was no hope left for them.\n However, the two frogs decided to ignore what the others were saying and they proceeded to try and jump out of the pit.\nDespite their efforts, the group of frogs at the top of the pit were still saying that they should just give up. That they would never make it out.\nEventually, one of the frogs took heed to what the others were saying and he gave up, falling down to his death. The other frog continued to jump as hard as he could. Again, the crowd of frogs yelled at him to stop the pain and just die.\nHe jumped even harder and finally made it out. When he got out, the other frogs said, \“Did you not hear us?\”\nThe frog explained to them that he was deaf. He thought they were encouraging him the entire time.',
      choiceOne: 'Impact on your Life',
      choiceTwo: 'Moral it depicts',
    ),
    Story(
        StoryTitle: 'The Obstacle In Our Path',
        StoryDesc:
            'In ancient times, a King had a boulder placed on a roadway. He then hid himself and watched to see if anyone would move the boulder out of the way. Some of the king’s wealthiest merchants and courtiers came by and simply walked around it.\nMany people loudly blamed the King for not keeping the roads clear, but none of them did anything about getting the stone out of the way.\nA peasant then came along carrying a load of vegetables. Upon approaching the boulder, the peasant laid down his burden and tried to push the stone out of the road. After much pushing and straining, he finally succeeded.\nAfter the peasant went back to pick up his vegetables, he noticed a purse lying in the road where the boulder had been.\nThe purse contained many gold coins and a note from the King explaining that the gold was for the person who removed the boulder from the roadway.',
        choiceOne: 'Impact on your Life',
        choiceTwo: 'Moral it depicts'),
  ];

  List<Morale> _moral = [
    Morale(
        Moral:
            'No matter how much the world tries to hold you back, always continue with the belief that what you want to achieve is possible. Believing you can become successful is the most important step in actually achieving it.'),
    Morale(
        Moral:
            'People’s words can have a big effect on other’s lives. Think about what you say before it comes out of your mouth. It might just be the difference between life and death.'),
    Morale(
        Moral:
            'Every obstacle we come across in life gives us an opportunity to improve our circumstances, and whilst the lazy complain, the others are creating opportunities through their kind hearts, generosity, and willingness to get things done.'),
  ];

  getStoryTitle(int i) {
    return _story[i].StoryTitle;
  }

  getStoryBoddy(i) {
    return _story[i].StoryDesc;
  }

  getOptOne(i) {
    return _story[i].choiceOne;
  }

  getOptTwo(i) {
    return _story[i].choiceTwo;
  }

  getMorale(i) {
    return _moral[i].Moral;
  }

  getFocus(ix) {
    track = 0;
    track += ix;
  }

  sendFocus() {
    if (track == null) {
      return 0;
    }
    return track;
  }
}

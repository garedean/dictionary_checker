# Software Developer Exercises

Thanks for applying to Cozy!

As part of the application, we ask applicants to complete one or more of the following programming tasks.
The person handling your interview should tell you which you need to complete, or specify that you can choose.
These exercises will help us gauge your abilities, and give us some topics to discuss later in the interview process.

Limit yourself to a few hours for each exercise.
If you don't complete everything, that's okay, but try to complete some portion.
If no timeframe to return the test was specified, assume there is no limit.

Use Git locally to add commits to this repository.
Do not put this repository into a public GitHub repo.
Leave this `README.md` file in place.

When you complete your programming test, create a new file named `REVIEW.md` in your repo.
In it, explain your choices and why you did things the way you did.
Why did you use the libraries, frameworks, or languages you did? Are you happy with the result?
What would you have done differently if you did it again?
Include any information that would be relevant to someone evaluating your programming test.

Contact rob@cozy.co if you have any questions, suggestions, or corrections.

When you are finished with your test, tar or zip up the entire repository (directory) and send it back to rob@cozy.co.
It should include your `.git` folder and all of your working tree.

## Frontend Programming Test

Your assignment is to build a Twitter-like feed for the Github issues in on a public GitHub repository of your choosing.

### Requirements and Rubric

- Use knockout.js <http://knockoutjs.com> to arrange the issues in a single column feed, like Twitter.
- Style it using a CSS framework that you like or have been meaning to try.
- Use GitHub's REST API directly; do not use a client library like `gh3`.
- You should use an AJAX library. Do not directly create and configure `XMLHttpResponse` objects to communicate with GitHub's API. We use `qajax` <https://github.com/gre/qajax>, which relies on `q.js` <https://github.com/kriskowal/q>.
- Sort issues newest first. We use `moment.js` <http://momentjs.com> as our date time library, and `lodash` <http://lodash.com> for working with collections.
- It is up to you how much detail you show for each issue (repo, creator, assignee, issue vs. pull request, etc). What would be most useful for users?
- Commit frequently so we can see your thought process.
- Bonus points for the ability to create a new issue (even if it's just in memory). 
- Bonus points for polling for updates.
- Bonus points for automated tests.
- Bonus points for mobile-friendly.

You should be able to do this test through an entirely static site without any server code.

## Backend Programming Test

This assignment is to build a JSON web service that will pull a compliment from http://emergencycompliment.com,
and return it and separately list any words not found in your system's dictionary
(you may need to install a package like `wamerican` if you do not have a `/usr/share/dict` or equivalent file).

For example (on my OSX machine):

```bash
$ curl http://myservice.herokuapp.com/testing
{
    it: "You are your parent's greatest accomplishment, unless they invented the \"spork\".",
    w: [ "spork" ]
}
```

(You should use a better return object)

### Requirements and Rubric

- We prefer you use Ruby or Python, but you are free to use any language you wish if you are not comfortable in either of those.
- Do not use Rails or Django. While great frameworks, they provide boilerplate that hides your code and thinking for such a small exercise.
- You can determine how you handle details of the algorithm, such as case sensitivity and punctuation, 
  but make sure the choices are explicit.
- The service should return a proper JSON response (watch your headers).
- Use whatever framework or libraries you want.
- Automated tests of some sort are a requirement.
- Commit frequently so we can see your thought process.
- Bonus points for graceful handling of third-party dependency outages.
 
We'll be looking not just for a correct solution, but for clean and well designed code and tests.

## Algorithmic/Logic Test

This assignment calculates the best poker hand from five cards.

Given a set of five cards, write a function that returns the best hand from those cards.
The following pseudocode is an example of how the solver should be called and behave:

```
cards = [Ace of Diamonds, Queen of Diamonds, King of Diamonds, 10 of Diamonds, Jack of Diamonds]
hand = calculate_hand(cards) # `calculate_hand` is your function, call it whatever you want
assert hand == Royal Flush

cards = [10 of Hearts, Ace of Diamonds, Queen of Diamonds, King of Diamonds, 10 of Diamonds]
hand = calculate_hand(cards)
assert hand == Pair
```

The following image contains all possible hands and rankings:
https://drive.google.com/file/d/0B3HasWauS-UcaXpfRGdpcDVHb0h5TFZpR3NUR0QybnBkd3pB/view

### Requirements and Rubric

- We prefer you use Ruby or Python, but you are free to use any language you wish if you are not comfortable in either of those.
- Please avoid the internet for example solutions.
- Automated tests of some sort are a requirement.
- Do not build any user interface. The code should be usable through tests only.
- Commit frequently so we can see your thought process.
 

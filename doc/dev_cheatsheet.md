# Development Cheat Sheet

SixTrack uses the GitHub [Fork & Pull Request Workflow](https://gist.github.com/Chaser324/ce0505fbed06b947d962).
For more details see the the full [Building SixTrack](http://sixtrack.web.cern.ch/SixTrack/docs/build_full/manual.php) manual.

Below there is a quick guide to the main steps of the development process.


## Setting up (do it once)

* Install `git` and a recent `cmake` and `gcc`.

* Create a GitHub account, set ssh keys and install them in the GitHub account.

* Fork SixTrack repository in the GitHub web page or click [here](http://github.com/SixTrack/SixTrack/fork).

* Clone personal repository:

       # Clone personal repository
       git clone git@github.com:username/SixTrack.git

* Set upstream repository:

        # Set upstream repository
        cd SixTrack
        git remote add upstream git@github.com:SixTrack/SixTrack.git


## Develop a new feature or fix a bug
* Create local branch (named e.g. "fix_bug")  and add it to origin:

        git checkout -b "fix_bug"
        git push --set-upstream origin "fix_bug"

* Periodically: update origin/master from upstream

        git pull upstream master
        git push origin master

* .. then make modifications, commit changes and push them to origin

        git checkout -b "fix_bug"
        git merge master
        < make modifications >
        git add ...
        git commit ...

* Push commits to origin

        git push

* Create pull request from the website and wait until is merged
* Delete feature branch

        git branch -d "fix_bug"
        git push origin --delete "fix_bug"


## Perform tests

Make sure you are in SixTrack directory

      ./cmake_six BUILD_TESTING
      cd build/*BUILD_TESTING* #see last line
      ctest --print-labels # see available labels
      ctest -L fast #execute fast tests
      ctest -N #see available tests
      ctest -R "beam-HO.*" # run test starting with name "beam-HO" 

* Once feature can go public (e.g. passes all tests), create pull request from the website and wait until is merged
* Once merged, delete feature branch

        git branch -d "fix_bug"
        git push origin --delete "fix_bug"


## Contribute to someone else's pull request

The recipient (e.g. kyrsjo ) has to allow maintainers to push in the pull request

       git remote add kyrsjo git@github.com:kyrsjo/SixTrack.git
       git fetch kyrsjo
       git checkout kyrsjo/BEAMBEAM-EXP
       git checkout -b BEAMBEAM-EXP
       git push --set-upstream kyrsjo BEAMBEAM-EXP





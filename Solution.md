Push rejection and conflict from requirement 6:
    On GitHub there was a change commited in the constructor of the user file, replacing pass with self.username = usrname. Locally in the pc the same change happended but instead of username it was self.bio = the_bio replacing the pass line. So, the changes were not aligned. When a Push was tried the changes tried to combine however the conflict happended because there were different changes on the same line in the same file, so it stopped. As a way to resolve it, it was decided to keep both new lines of code in the constructor and commited the merge so the changes were added in every side and pushed successfully. This situation is a good example of why Pull is a good practice before starting work in order to avoid conflicts or reduce the chances of a conflict happening at least and get the updated version of the working files. 

Revised the pull request in requirement 19:
    There was a commit message from step 16 that said "Some changes", due to the fact that this is a vague commit message, and in case there are new developers working or reviewing the history this message or description gives them little to no information what work or changes had been made in the files. Therefore a new revised branch was created to change the commit message and a new PR was opened to replace the previous one containing the vague commit.

Version 1 release from requirements 21: 
    Created a release branch from develop and merged it into master. Afterwards published on GitHub as a new release named Verion 1.0.0 or tag v1.0.0.

New requirement - new branch for requiremnt 22:
    After the customer requested a new feature, an urgent one to add a new method in the user file to return a string with user information, this feature was created on a new branch but without merge to fix the bug.

Some additional notes:
    When the production code was being checked, it was discovered that the constructor was missing from the user file, not sure which edit along the way removed it. Once hotfix was created from master, the constructor was restored and the username parameter was correctly spelled. The runner was tested afterwards and it ran succesfully, after the fix mas merged into master and develop and published as a new release as v1.0.1. 
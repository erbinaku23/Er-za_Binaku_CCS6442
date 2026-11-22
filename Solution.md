# Part 1 Solution

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

# Part 2 Solution

Databases and credentials: 
    Renamed the originally database service from db to postgres, afterwards updated the app's connection address, kept the real credentials strored using the local .env file, and created placeholders for them in the .env.example file.

Readiness checker:
    Moreover, added the checkstatus.sh file inside the src folder, which is used to check the PostgreSQL using pg_isready, the operation waits 2 seconds between unsuccessful checks, and exits when ready. The app waits until the checker finishes successfully before starting.

Initial release: 
    It was developed on feature/database-checkstatus, it was tested on Alpine first, then used the required image 1.0 which outputed the ERROR VERSION, which is also attached in the Screenshots folder. Changes were merged under develop, then the release v1.1.0 was also created from develop and merged into master. V1.1.0 was published.

Hotfix:
    After the error appeared, a hotfix1.1.1 was created to correct the released image, checked the Docker Hub with showed the image 2.0 and latest pointing to that same image, then replaced the previous 1.0 image to 2.0 and merged the fix into aster and develop and the same was used to publish a release as v1.1.1 as a way to correct the previous version and not to add any new feature.

Some problems and testing process:
    During the testing the app showed some dependancy problems which were fixed usong Poetry 1.8.5 and setuptools 80.9.0, the shill also had a line ending problem, which was fixed by saving it with LF and adding a rule in .gitattributes. After all these changes the checker exited with code 0 and app successfully connected to PostreSQL and there were no merging errors or conflicts after this.
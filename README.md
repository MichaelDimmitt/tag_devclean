## tag_devclean
foray into tags with purpose. 
<br>people want migrations to prod but tag and revert keep dev clean.

## The Plan
Im thinking this could be automated:

1) make your changes for production migration in dev branch.
<br>but we do not want to run rake on dev branch while that change is in.
2) type "tag_devclean" and it makes a tag for HEAD~ and then reverts
3) configure your cli to take the most recent tag in production environments.

## Useful links at the onset:
https://stackoverflow.com/questions/4404172/how-to-tag-an-older-commit-in-git
https://git-scm.com/book/en/v2/Git-Basics-Tagging

## future installation instructions:
`git clone https://github.com/MichaelDimmitt/tag_devclean.git`
`cd tag_devclean;`
bashrc instruction:
```bash 
pathtofile=pwd; echo "alias tag_devclean='ruby $($pathtofile)/setup_files/tag_devclean.rb'" >> ~/.bashrc; source ~/.bashrc;
```

zsh instruction:
```bash 
pathtofile=pwd; echo "alias tag_devclean='ruby $($pathtofile)/setup_files/tag_devclean.rb'" >> ~/.zshrc; source ~/.zshrc;
```

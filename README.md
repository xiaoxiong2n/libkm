# libkm
A very practical matlab toolbox for behavioral and neural data analyses. This toolbox helps you code less and focus on science.

# How to use
The simplest way is to download the .zip file, uncompress, add folders to Matlab path, and use it. As you understand the code more, you may want to add new functions or modify existing functions. The best way is to [fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) the master branch to your repository and modify the code. Since the codes in the master branch constantly change, having your own branch  ensures that your analysis results are secured from those changes. After you submit your paper, you can also [tag](https://docs.github.com/en/github/administering-a-repository/viewing-your-repositorys-releases-and-tags) the forked codes such that you have a snapshot of your submitted version. If you would like to use new features, you can compare the difference between the forked version and the master branch, and incorporate ([pull](https://github.com/git-guides/git-pull)) changes with your awareness. 
 
## [libpopulation](https://github.com/hkim09/libkm/tree/master/libpopulation)
Plot data with relevant statistical tests.

## [libtimeseries](https://github.com/hkim09/libkm/tree/master/libtimeseries)
Plot time course and save the results. Combime the results and plot population time courses.

## [libbigtable](https://github.com/hkim09/libkm/tree/master/libbigtable)
Save individual-session analysis results. Load population data into a big table.

## [libutil](https://github.com/hkim09/libkm/tree/master/libutil)
A collection of misc functions.

#### CHANGELOG (major changes)

8/13/2020 separated data loading and saving related functions into libbigtable 

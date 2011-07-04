#lang slideshow
(require slideshow)

(define (plus . str)
  (item #:bullet (colorize (tt "+") "green")
        str))

(slide
 #:title "Git 1 2 3!"
 (para #:align 'center
       "A fast introduction to git for professionals")
 (blank)
 (para  #:align 'center
        "Jordan Schatz" 
        (text "jordan@noionlabs.com" '(bold . modern) 25))
 (blank)
 (para #:align 'center
       "You can fork this presentation at:"
       "https://github.com/shofetim/git-1-2-3")
 (blank)
 (bitmap "./images/git.png"))

(slide
 #:title "What is Git?"
 #:layout 'top
 (para
  "Git is:"
  (plus
        "a" (bit "source code management") "tool")
  (plus
        "distributed")
  (plus
        "fast")))

(slide
 #:title "What is Git?"
 (para "Linus Torvolds wrote Git to solve a problem"
       (item "All existing version control systems where broken")
       (item "There where about 30,000 developers working on the kernel which"
             "made other VCS painful to use ")
       (item "He needed something that made his work faster")))

(slide
 (para #:align 'center
       "Solution: Git"))

(slide
 #:title "Quick Note"
 (para "Why the name 'git' ? ")
 (blank)
 (para
  "Quoting Linus: \"I'm an egotistical ***, and I name all my projects" 
  "after myself. First 'Linux', now 'git'\""))

(slide
 #:title "What is Git good for?"
 (para "Git is a " (bit "Source Code Management") "system, not a version control system."
       (plus "")))

(slide
 #:title "Kinds of source code that I use git for"
 (item "Ordinary source code PHP/SQL/HTML/CSS/Javascript/Lisp etc. etc.")
 (item "Ledger https://github.com/jwiegley/ledger")
 (item "Emacs Org mode http://orgmode.org/")
 (subitem "Appointments")
 (subitem "Notes")
 (subitem "Project management ")
 (subitem "Time log(s)")
 (subitem "Passwords")
 (subitem "Project Proposals")
 (subitem "Research papers")
 (subitem "Code documentation")
 (subitem "etc etc")
 (item "Calendar http://www.roaringpenguin.com/products/remind")
 (item "Diagrams http://ditaa.sourceforge.net/"))

(slide
 #:title "Other things people use git for"
 (item "/etc/")
 (item "/home/")
 (item "An automatic writer's history http://bitbucketlabs.net/flashbake/ (Cory Doctorow)")
 (item "Debugging")
 (item "Security")
 (item "File syncing http://www.sparkleshare.org/")
 (item "a long list of crazy things"))

(slide
 #:title "What does git Do?"
 (item "Efficient sharing of code.")
 (subitem "Managed ")
 (subitem "Easy tools (github, gitosis etc)")
 (subitem "Minimal network activity")
 (item "Trustworthiness/reliability that your stuff hasn't changed")
 (item "Point In Time Architecture ie, history")
 (item "\"Fluff\"")
 (subitem "Cool tools to do everything, reporting, automatic actions, cool graphics etc."))

(slide
 #:title "Where to get it?"
 (item "Git http://git-scm.com/")
 (item "Linux")
 (item "Mac")
 (item "Windows"))

(slide
 #:title "How it works"
 (item "diff & patch")
 (item "sha1")
 (item "working directory | index | repository")
 (bitmap "./images/3-areas.png"))

(slide
 #:title "Fun time"
 (item "Try it out..."))

(slide
 #:title "git-init"
 (para (tt "git-init")
       "Create an empty git repository or reinitialize an existing one."))

(slide   
 #:title "git-clone"
 (para (tt "git-clone")
       "Clone a repository into a new directory."))

(slide   
 #:title "git-add"
 (para (tt "git-add")
       "Add file contents to the index."))

(slide   
 #:title "git-commit"
 (para (tt "git-commit")
       "Record changes to the repository."))

(slide   
 #:title "git-diff"
 (para (tt "git-diff")
       "Show changes between commits, commit and working tree, etc."))

(slide   
 #:title "git-log"
 (para (tt "git-log")
       "Show commit logs."))

(slide   
 #:title "git-reset"
 (para (tt "git-reset")
       "Reset current HEAD to the specified state."))

(slide   
 #:title "git-status"
 (para (tt "git-status")
       "Show the working tree status."))

(slide   
 #:title "git-show"
 (para (tt "git-show")
       "Show various types of objects."))

(slide   
 #:title "git-stash"
 (para (tt "git-stash")
       "Stash the changes in a dirty working directory away."))

(slide   
 #:title "git-pull"
 (para (tt "git-pull")
       "Fetch from and merge with another repository or a local branch."))

(slide   
 #:title "git-push"
 (para (tt "git-push")
       "Update remote refs along with associated objects."))

(slide   
 #:title "git-fetch"
 (para (tt "git-fetch")
       "Download objects and refs from another repository."))

(slide   
 #:title "git-branch"
 (para (tt "git-branch")
       "List, create, or delete branches."))

(slide   
 #:title "git-checkout"
 (para (tt "git-checkout")
       "Checkout a branch or paths to the working tree."))

(slide   
 #:title "git-rm"
 (para (tt "git-rm")
       "Remove files from the working tree and from the index."))

(slide   
 #:title "git-tag"
 (para (tt "git-tag")
       "Create, list, delete or verify a tag object signed with GPG."))

(slide   
 #:title "gitk"
 (para (tt "gitk")
       "The git repository browser."))

(slide   
 #:title "git-config"
 (para (tt "git-config")
       "Get and set repository or global options."))

(slide   
 #:title "git-remote"
 (para (tt "git-remote")
       "manage set of tracked repositories."))

(slide   
 #:title "git-grep"
 (para (tt "git-grep")
       "Print lines matching a pattern."))

(slide   
 #:title "git-gui"
 (para (tt "git-gui")
       "A portable graphical interface to Git."))

(slide   
 #:title "git-clean"
 (para (tt "git-clean")
       "Remove untracked files from the working tree."))

(slide   
 #:title "git-fsck"
 (para (tt "git-fsck")
       "Verifies the connectivity and validity of the objects in the database."))

(slide   
 #:title "git-gc"
 (para (tt "git-gc")
       "Cleanup unnecessary files and optimize the local repository."))

(slide   
 #:title "git-prune"
 (para (tt "git-prune")
       "Prune all unreachable objects from the object database."))

(slide   
 #:title "git-merge"
 (para (tt "git-merge")
       "Join two or more development histories together."))

(slide   
 #:title "more advanced commands"
 (para "--- more advanced commands ---"))

(slide
 #:title "git-rebase"
 (para (tt "git-rebase")
       "Forward-port local commits to the updated upstream head."))

(slide   
 #:title "git-cherry-pick"
 (para (tt "git-cherry-pick")
       "Apply the changes introduced by some existing commits."))

(slide   
 #:title "git-bisect"
 (para (tt "git-bisect")
       "Find by binary search the change that introduced a bug."))

(slide   
 #:title "git-format-patch"
 (para (tt "git-format-patch")
       "Prepare patches for e-mail submission."))

(slide   
 #:title "git-am"
 (para (tt "git-am")
       "Apply a series of patches from a mailbox."))

(slide   
 #:title "git-blame"
 (para (tt "git-blame")
       "Show what revision and author last modified each line of a file."))

(slide   
 #:title "git-archive"
 (para (tt "git-archive")
       "Create an archive of files from a named tree."))

(slide   
 #:title "git-mv"
 (para (tt "git-mv")
       "Move or rename a file, a directory, or a symlink."))

(slide   
 #:title "git-revert"
 (para (tt "git-revert")
       "Revert some existing commits."))

(slide   
 #:title "git-shortlog"
 (para (tt "git-shortlog")
       "Summarize git log output."))

(slide   
 #:title ".... There are lots more"
 (para ".... There are lots more"))

(slide
 #:title "Gotcha's"
 (item "Git tracks content, not files. ")
 (item ".gitignore")
 (item "git push (it does the right thing but)")
 (item "making commits as root")
 (item "chmoding the hooks when you didn't mean too...")
 (item "file permission and meta data tracking"))

(slide
 #:title "Tools "
 (item "Github https://github.com/")
 (item "Deploy HQ http://www.deployhq.com/")
 (item "Gource http://code.google.com/p/gource/")
 (item "Gitosis http://scie.nti.st/2007/11/14/hosting-git-repositories-the-easy-and-secure-way"))


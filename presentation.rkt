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
 (para #:align 'center
       "Jordan Schatz"
       (text "jordan@noionlabs.com" '(bold . modern) 25))
 (blank)
 (para #:align 'center
       "You can fork this presentation at:"
       "https://github.com/shofetim/git-1-2-3")
 (blank)
 (bitmap "./images/git.png"))

(slide
 (t "1: What is Git?"))

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
       (plus "All existing version control systems where broken")
       (plus "There where about 30,000 developers working on the kernel which"
             "made other VCS painful to use ")
       (plus "He needed something that made his work faster")))

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
 #:layout 'top
 (para "Git is a "
       (bit "Source Code Management")
       "system, not a version control system.")
 'next
 (plus "Efficient Sharing")
 'next
 (plus "Code Review")
 'next
 (plus "Documentation")
 'next
 (plus "Security / Integrity")
 'next
 (plus "Versioning")
 'next
 (plus "Debugging")
 'next
 (plus "A simple continuous integration server")
 'next
 (plus "more cool tools"))

(slide
 (para #:align 'center
       "The single most important thing you get is that:"
       (colorize (bit "Experimentation Is Inexpensive") "green")))
(slide
 (para #:align 'center
       "Stop pussyfooting around your codebase... and start striding around like a giant"))

(slide
 #:title "Aside"
 (para "You don't have to just use git for source code"))

(slide
 #:title "Types of code that I use git for:"
 'alts
 (list
  (list
   (plus "Ledger https://github.com/jwiegley/ledger"))
  (list
   (plus "Emacs Org mode http://orgmode.org/")
   (subitem "Appointments")
   (subitem "Notes")
   (subitem "Project management ")
   (subitem "Time log(s)")
   (subitem "Passwords")
   (subitem "Project Proposals")
   (subitem "Research papers")
   (subitem "Code documentation"))
  (list
   (plus "Calendar http://www.roaringpenguin.com/products/remind"))
  (list
   (plus "Diagrams http://ditaa.sourceforge.net/"))
  (list
   (plus "Presentations http://docs.racket-lang.org/slideshow/index.html"))
  (list
   (plus "Just about everything else too"))))

(slide
 (t "2: Get Git"))

(slide
 #:title "Where to get it?"
 (t "Git http://git-scm.com/")
 (hc-append 20
            (t "Linux")
            (bitmap "./images/tux.png"))
 (blank)
 (hc-append 20
            (t "Mac")
            (bitmap "./images/osx.png"))
 (blank)
 (hc-append 20
            (t "Windows")
            (bitmap "./images/windows.png")))

(slide
 #:title "How it works"
 #:layout 'top
 (plus "Commits")
 'next
 (plus "sha1")
 'next
 (plus "diff & patch")
 'next
 (plus "working directory | index | repository"))

(slide
 (para #:align 'center
       "That working directory | index | repository thing")
 (blank)
 (bitmap "./images/3-areas.png"))

(slide
 (t "3: Try it out"))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git config")
  (blank)
  (t "Get and set repository or global options."))
 (para
  (text "git config --global user.name \"Jordan Schatz\"" '(bold . modern) 25)
  (text "git config --global user.email \"jordan@noionlabs.com\"" '(bold . modern) 25)))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git init")
  (para "Create an empty git repository.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git add")
  (blank)
  (t "Add file contents to the index.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git status")
  (blank)
  (t "Show the working tree status.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git commit")
  (blank)
  (t "Record changes to the repository.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "gitk")
  (blank)
  (t "The git repository browser.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git log")
  (blank)
  (t "Show commit logs.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git clone")
  (blank)
  (t "Clone a repository into a new directory.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git branch")
  (blank)
  (t "List, create, or delete branches.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git checkout")
  (blank)
  (t "Checkout a branch or paths to the working tree.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git push")
  (blank)
  (t "Update remote refs along with associated objects.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git fetch")
  (blank)
  (t "Download objects and refs from another repository.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git pull")
  (blank)
  (t "Fetch from and merge with another repository or a local branch.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git remote")
  (blank)
  (t "manage set of tracked repositories.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git stash")
  (blank)
  (t "Stash the changes in a dirty working directory away.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git diff")
  (blank)
  (t "Show changes between commits, commit and working tree, etc.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git clean")
  (blank)
  (t "Remove untracked files from the working tree.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git merge")
  (blank)
  (t "Join two or more development histories together.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git rebase")
  (blank)
  (t "Forward-port local commits to the updated upstream head.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git fsck")
  (blank)
  (t "Verifies the connectivity and validity of the objects in the database.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git gc")
  (blank)
  (t "Cleanup unnecessary files and optimize the local repository.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git prune")
  (blank)
  (t "Prune all unreachable objects from the object database.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git tag")
  (blank)
  (t "Create, list, delete or verify a tag object signed with GPG.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git grep")
  (blank)
  (t "Print lines matching a pattern.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git blame")
  (blank)
  (t "Show what revision and author last modified each line of a file.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git gui")
  (blank)
  (t "A portable graphical interface to Git.")))


(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git cherry-pick")
  (blank)
  (t "Apply the changes introduced by some existing commits.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git bisect")
  (blank)
  (t "Find by binary search the change that introduced a bug.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git show")
  (blank)
  (t "Show various types of objects.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git format-patch")
  (blank)
  (t "Prepare patches for e-mail submission.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git am")
  (blank)
  (t "Apply a series of patches from a mailbox.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git reset")
  (blank)
  (t "Reset current HEAD to the specified state.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git rm")
  (blank)
  (t "Remove files from the working tree and from the index.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git archive")
  (blank)
  (t "Create an archive of files from a named tree.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git mv")
  (blank)
  (t "Move or rename a file, a directory, or a symlink.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git revert")
  (blank)
  (t "Revert some existing commits.")))

(slide
 #:title "Git Commands"
 #:layout 'top
 (para
  (tt "git shortlog")
  (blank)
  (t "Summarize git log output.")))

(slide
 (t "Addendum"))

(slide
 #:title "Gotcha's"
 (plus "Git tracks content, not files. ")
 'next
 (plus ".gitignore")
 'next
 (plus "git push (it does the right thing but)")
 'next
 (plus "making commits/checkouts as root")
 'next
 (plus "chmod'ing the hooks when you didn't mean too..."))

(slide
 #:title "Tools "
 (plus "Github https://github.com/")
 'next
 (plus "Deploy HQ http://www.deployhq.com/")
 'next
 (plus "Gource http://code.google.com/p/gource/")
 'next
 (plus "Gitosis")
 (para "http://scie.nti.st/2007/11/14/"
       "hosting-git-repositories-the-easy-and-secure-way"))
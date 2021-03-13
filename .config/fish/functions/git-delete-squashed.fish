function git-delete-squashed
    git checkout -q master
    git for-each-ref refs/heads/ "--format=%(refname:short)" | \
        while read branch
        set mergeBase (git merge-base master $branch)
        if string match -r "\-.*" -- (git cherry master (git commit-tree (git rev-parse $branch^{tree}) -p $mergeBase -m _))
            git branch -D $branch
        end
    end
end
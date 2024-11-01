git filter-branch --commit-filter '
        if [ "$GIT_AUTHOR_NAME" = "GuangAD" ];
        then
                GIT_AUTHOR_NAME="gaoguangce";
                GIT_AUTHOR_EMAIL="1536576466@qq.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD

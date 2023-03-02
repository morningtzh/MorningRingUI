
export PUBLIC_VERSION="1.0.`date +%s`"
export BUILD_PATH="build/publish"

echo Version: ${PUBLIC_VERSION}

# 创建输出路径
rm -rf build
git clone https://github.com/morningtzh/MorningRingUIPublish.git build

# file like:
# https://cdn.jsdelivr.net/gh/[username]/[repo]@[branch/tag/commitid]/[path]/[to]/[file]
# https://cdn.jsdelivr.net/gh/morningtzh/MorningRingUIPublish@1.0.1677771068/publish/static/js/main.6128cea3.js
# Docs: https://www.jsdelivr.com/documentation#id-github
export PUBLIC_URL="https://cdn.jsdelivr.net/gh/morningtzh/MorningRingUIPublish@${PUBLIC_VERSION}/publish/"

npm run build

cd build
git checkout -b ${PUBLIC_VERSION}
git add *
git commit -m "Version: ${PUBLIC_VERSION}"
git push --set-upstream origin ${PUBLIC_VERSION}

# yarn 命令

- 升级@vue/cli 
  	yarn global upgrade --latest @vue/cli
  	npm update -g @vue/cli

  我的邮箱 mainc@foxmail.com


  node 配置
     下载	http://nodejs.cn/download/
      npm root -g 查看
      npm config set prefix "C:\node\node_global"
      npm config set cache "C:\node\node_cache"
      设置环境变量 找到node_global\node_modules\.bin
  cnpm    -----> npm install cnpm -g --registry=https://registry.npm.taobao.org
  yarn    ----->   npm install -g yarn	yarn --version	

- npm install -g yarn	yarn --version

- yarn global dir 全局安装位置

- yarn global bin   查看位置
  yarn config  set global-folder "E:\Software\Yarn\global"
  yarn config set cache-folder "E:\Software\yarn\cache"


创建文件夹 yarn

md yarn
进入yarn文件夹

cd yarn
初始化项目

yarn init // 同npm init，执行输入信息后，会生成package.json文件
yarn的配置项：

yarn config list // 显示所有配置项
yarn config get <key> //显示某配置项
yarn config delete <key> //删除某配置项
yarn config set <key> <value> [-g|--global] //设置配置项
安装包：

yarn install //安装package.json里所有包，并将包及它的所有依赖项保存进yarn.lock
yarn install --flat //安装一个包的单一版本
yarn install --force //强制重新下载所有包
yarn install --production //只安装dependencies里的包
yarn install --no-lockfile //不读取或生成yarn.lock
yarn install --pure-lockfile //不生成yarn.lock
添加包（会更新package.json和yarn.lock）：

yarn add [package] // 在当前的项目中添加一个依赖包，会自动更新到package.json和yarn.lock文件中
yarn add [package]@[version] // 安装指定版本，这里指的是主要版本，如果需要精确到小版本，使用-E参数
yarn add [package]@[tag] // 安装某个tag（比如beta,next或者latest）
//不指定依赖类型默认安装到dependencies里，你也可以指定依赖类型：

yarn add --dev/-D // 加到 devDependencies
yarn add --peer/-P // 加到 peerDependencies
yarn add --optional/-O // 加到 optionalDependencies
//默认安装包的主要版本里的最新版本，下面两个命令可以指定版本：

yarn add --exact/-E // 安装包的精确版本。例如yarn add foo@1.2.3会接受1.9.1版，但是yarn add foo@1.2.3 --exact只会接受1.2.3版
yarn add --tilde/-T // 安装包的次要版本里的最新版。例如yarn add foo@1.2.3 --tilde会接受1.2.9，但不接受1.3.0
发布包

yarn publish
移除一个包

yarn remove <packageName>：移除一个包，会自动更新package.json和yarn.lock
更新一个依赖

yarn upgrade 用于更新包到基于规范范围的最新版本
运行脚本

yarn run 用来执行在 package.json 中 scripts 属性下定义的脚本
显示某个包的信息

yarn info <packageName> 可以用来查看某个模块的最新版本信息
缓存

yarn cache
yarn cache list # 列出已缓存的每个包 yarn cache dir # 返回 全局缓存位置 yarn cache clean # 清除缓存
使用yrm工具管理一些npm源
安装
yarn global add yrm
查看可用源
yrm ls
选择源
yrm use yarn
快速删除node_modules
手动删除真的很慢：

安装： npm install rimraf -g
使用：rimraf node_modules
rimraf是node的一个包，可以快速删除node_modules，再也不用等半天了
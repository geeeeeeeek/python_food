> 学习过程中，如遇问题可咨询作者：lengqin1024（微信）

### 功能介绍

平台采用B/S结构，后端采用主流的Python语言进行开发，前端采用主流的Vue.js进行开发。

整个平台包括前台和后台两个部分。

- 前台功能包括：首页、菜品详情页、订单中心、用户中心模块。
- 后台功能包括：总览、订单管理、菜品管理、分类管理、标签管理、评论管理、用户管理、运营管理、日志管理、系统信息模块。

### 源码下载

https://github.com/geeeeeeeek/python_food

### 演示地址

前台地址：  http://food.gitapp.cn

后台地址： http://food.gitapp.cn/admin

后台管理帐号：

用户名：admin123
密码：admin123

### 代码结构

- server目录是后端代码
- web目录是前端代码

### 部署运行

#### 后端运行步骤

(1) 安装python 3.8

(2) 安装依赖。进入server目录下，执行 pip install -r requirements.txt

(3) 安装mysql 5.7数据库，并创建数据库，命名为shop，创建SQL如下：
```
CREATE DATABASE IF NOT EXISTS xxx DEFAULT CHARSET utf8 COLLATE utf8_general_ci
```
(4) 恢复shop.sql数据。在mysql下依次执行如下命令：

```
mysql> use xxxx;
mysql> source D:/xxx/xxx/xxx.sql;
```

(5) 启动django服务。在server目录下执行：
```
python manage.py runserver
```

#### 前端运行步骤

(1) 安装node 16.14

(2) 进入web目录下，安装依赖，执行:
```
npm install 
```
(3) 运行项目
```
npm run dev
```


### 界面预览

首页

![](https://raw.githubusercontent.com/geeeeeeeek/python_food/master/server/upload/img/a.png)


后台页面

![](https://raw.githubusercontent.com/geeeeeeeek/python_food/master/server/upload/img/b.png)




### 作者微信（lengqin1024）




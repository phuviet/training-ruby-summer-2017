## Ruby Web - Frame Work
### Ruby on Rails - Rails
> **Ruby on Rails(Rails)** - following MVC model include: **Controller**, **Model**, **View**. Request from user be sent to **Controller**, then **Controller** will execute request such as get data from database via **Model** then **Controller** will redirect and send data to **View**. **View** have 3 types are: **.xml**, **.html**, **.json**.

### Introduction about Rails
- Install Rails by syntax : `gem install rails -v 5.1.1`
- Create a project Rails:
	- Open terminal and cd to folder contain Rails's project.
	- Execute statement `rails new project_name` to create project.

- Environment in Rails:
	- Rails have 3 environment. There are **DEV**, **STAGING**, **PRODUCTION** . **DEV** environment for coder test **STAGING** environment for customer test and **PRODUCTION** is web public where every people can use.
- Run Rails by execute syntax: `rails s[erver]` or we can change port for host by syntax: `rails s -p port_number`. Rails provided function to everyone is the same as network can be access others host by syntax: `rails s[erver] -b 0.0.0.0`.
- Introduction some folder be gender by create rails project: app(main content project), bin, config, db, lib, log, public, test,.. In which:
	-  **app**: contain some folder with function:
		-  asset: contain initial data such as css, js, images html, html,..
		-  channel: provided socket for chat.
		-  helper: is module contain method be usually used.
		-  controllers: contain file to execute logic request.
		-  models: contain method to access database, get data from database,...
		-  views: contain interface of website where user can be operate and send request to controller.
	- **public**: contain file which be upload from user such as dynamic picture, dynamic file,...
	- **db**: contain clone data for coder test.

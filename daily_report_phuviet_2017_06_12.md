## HTML basic knowledge.
> **HTML(Hypertext Markup Language)** is the standard markup language for creating web pages and web applications.

### Structure of standard html page.
- Create html page with declare **< !DOCTYPE html >** in top of file is say to system which we use **HTML 5** to design this page. 
- There are 3 tags which always be used first when create the html page such as **< html >** , **< head >**, **< body >**.
	- **< html >** - the begin tag of html page contain **< head >** tag and **< body >** tag. This tag is required to start design the html page.
	- **< head >** - this tag contain title of page and some outside file which include into the html file like library of html page.
	- **< body >**  - contain the main content of html page such as data, image, actions with user such as button, access link,...
	
Example for standard html pages:
```
<!DOCTYPE html>
<html>

<head>
    <title>AT Training HTML/CSS</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <p>Hello world!</p>
</body>

</html>
```
- Structure of html pages usually have 3 parts. There are **header**, **main**, **footer** and be contained in **< body >** tag.
	- **header** - contain logo of web page and categories menu for user when access this web page, this part usually be contained in **< header >** tag for easy to read, watch and understand.
	- **footer** - contain information of author's page such as address, version of web page or applications, phone number,... this part usually be contained in **< footer >** tag for easy to read, watch and understand.
	- **main** - contain the main content of this page such as news with data and image or form with text input and button for user who actions with this page. This part usually be contained in **< main >** tag for easy to read, watch and understand. This part usually contain many of section which of different categories and each section will be contained in **< section >** tag with different **id** to separate each other and easy to read, watch and understand. 
	- 
Example for 3 parts of html pages:
```
<!DOCTYPE html>
<html>

<head>
    <title>AT Training HTML/CSS</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <header>
	    ##header of page
    </header>

    <main>
	    ##main content of page
    </main>

    <footer>
	    ##footer of page. Example
	    Copy right by Nguyen Phu Viet &copy 2017
    </footer>
</body>

</html>
```
### Types of tags in HTML(Hypertext Markup Language).
> There are 3 types of tags in HTML such as **inline tag**, **block tag**, **empty tag**.

- **inline tag** - an inline element does not start on a new line and only takes up as much width as necessary. Such as: **< span >**, **< a >**, **< img >**,...
	- **< span >** - usually used as a container for some inline text.
	- **< a >** - used as container for others website 's link.
	- **< img >** - used to insert picture from others resource into html page.
- **block tag** - a block-level element always starts on a new line and takes up the full width available (stretches out to the left and right as far as it can). Such as : **< div >**, **< p >**, **< form >**, **< h1 >** -> **< h6 >**,...
	- **< p >** -  usually used as a container for some block text.
	- **< div >** - usually used as a container for other HTML elements.
	- **< h1 >** -> **< h6 >** - usually used to create a title for a HTML elements.
- **empty tag** - is the tag without the close tag. Such as: **< br >**, **< hr >**,...
	- **< br >** - used when writer want to start a new line.
	- **< hr >** - used when writer want to create a line page in a new line.
### Other commonly used html tags.
- **< iframe >** - insert video from others resource into html page.
- **< video >** - insert video with .mp4 format available from you PC or Laptop into html page.
- **< audio >** - insert audio from others resource into html page.
- **< nav >** - used to defines a set of navigation links.
- **< aside >** - used to defines some content aside from the content it is placed in.
- **< i >** - make a italic texts be contained in this tag.
- **< b >** - make a bold texts be contained in this tag.
- **< u >** - make a underline texts be contained in this tag.
- **< ul > < li >** - used to create a list of text or other HTML elements.

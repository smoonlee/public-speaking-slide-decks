# Getting Started with Blogging
For this talk we are going to cover the setup and deployment of a Hugo Static Web App on Azure. We will be using the following tools:
 > An Azure Subscription \
 > Static Web App \
 > Hugo \
 > Domain and DNS Zone 


### Installing Hugo.Extended Package
First we need to install Hugo on our local machine. We will be using the Hugo.Extended package which includes the Hugo CLI and the Hugo Extended version. The Hugo Extended version includes support for SASS/SCSS and PostCSS.

```
winget install -e Hugo.Hugo.Extended
```

### Create a GitHub Repository
Next we need to create a GitHub repository to store our Hugo site. We will be using this repository to deploy our site to Azure Static Web Apps.

### Clone the repo you created
```
clone https://github.com/builtwithcaffeine/swa-gswb-demo.git -d c:\code\swa-gswb-demo
```

### Initialise the Git Repo  
```
cd c:\code\swa-gswb-demo
git init 
code
```

### Initialise the Hugo Site
[Hugo :: Quick Start Help](https://gohugo.io/getting-started/quick-start/) 

> NOTEs \
> `-d` Lets us create the hugo site under the `.\swa-gswb-demo` folder \
> `--Force` Lets us overwrite the existing folder as the ``.git`` folder will already exist
```
hugo new site swa-gswb-demo -d .\swa-gswb-demo --force
```

If the initial site creation was successful you should see the following output:
```
Congratulations! Your new Hugo site was created in C:\Code\swa-gswb-demo.

Just a few more steps...

1. Change the current directory to C:\code\swa-gswb-demo.
2. Create or install a theme:
   - Create a new theme with the command "hugo new theme <THEMENAME>"
   - Install a theme from https://themes.gohugo.io/
3. Edit hugo.toml, setting the "theme" property to the theme name.
4. Create new content with the command "hugo new content <SECTIONNAME>\<FILENAME>.<FORMAT>".
5. Start the embedded web server with the command "hugo server --buildDrafts".
```

### Adding a Theme
The hardest part of blogging is trying to find a theme which you like. There are a number of places where you can find Hugo themes. The easiest place to start is the [Hugo Themes website](https://themes.gohugo.io/). 

For this example we will look to use [Paper Mod](https://themes.gohugo.io/themes/hugo-papermod/)

For this example we will use `Method 2: Git Submodule` to add the theme to our site.

[Paper Mod :: Installation](https://github.com/adityatelange/hugo-PaperMod/wiki/Installation#method-2)

```
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
git submodule update --init --recursive 
echo "theme = 'PaperMod'" >> hugo.toml
```


### Adding a Post
Using the Hugo CLI we can create a new post using the following command:
```
hugo new --kind post welcome-to-blogging.md
```
this creates a new post under the `.\content` folder.

#### Example file:  
```
+++
title = 'Welcome to Blogging'
date = 2023-10-14T11:11:56+01:00
draft = true
+++
```

### Testing the Site Locally

```
hugo server
```



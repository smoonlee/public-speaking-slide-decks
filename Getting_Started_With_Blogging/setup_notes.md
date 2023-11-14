# Getting Started with Blogging
For this talk we are going to cover the setup and deployment of a Hugo Static Web App on Azure. We will be using the following tools:
 > An Azure Subscription \
 > GitHub Repository \
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
git clone https://github.com/builtwithcaffeine/swa-demo-repo c:\code\swa-demo-repo
```

### Initialise the Git Repo  
```
cd c:\code\swa-demo-repo
git init 
code .
```

### Initialise the Hugo Site
[Hugo :: Quick Start Help](https://gohugo.io/getting-started/quick-start/) 

> NOTEs \
> `-d` Lets us create the hugo site under the `.\swa-demo-repo` folder \
> `--force` Lets us overwrite the existing folder as the ``.git`` folder will already exist
```
hugo new site swa-demo-repo -d .\swa-demo-repo --force
```

If the initial site creation was successful you should see the following output:
```
Congratulations! Your new Hugo site was created in C:\Code\swa-demo-repo.

Just a few more steps...

1. Change the current directory to C:\code\swa-demo-repo.
2. Create or install a theme:
   - Create a new theme with the command "hugo new theme <THEMENAME>"
   - Install a theme from https://themes.gohugo.io/
3. Edit hugo.toml, setting the "theme" property to the theme name.
4. Create new content with the command "hugo new content <SECTIONNAME>\<FILENAME>.<FORMAT>".
5. Start the embedded web server with the command "hugo server --buildDrafts".
```

### Update hugo.toml
From the `hugo.toml` file we can add the Domain name and Title of the Blog. \
the default `hugo.toml` file looks like this:

![Alt text](./content/vscode-hugo-toml.png)

We will update to be 

``` toml
baseURL = 'https://web-app.cloudadventures.org'
languageCode = 'en-us'
title = 'SWA :: Getting Starting with Blogging'
```


### Adding a Theme
The hardest part of blogging is trying to find a theme which you like. There are a number of places where you can find Hugo themes. The easiest place to start is the [Hugo Themes website](https://themes.gohugo.io/). 

For this example we will look to use [Paper Mod](https://themes.gohugo.io/themes/hugo-papermod/)

For this example we will use `Method 2: Git Submodule` to add the theme to our site.

[Paper Mod :: Installation](https://github.com/adityatelange/hugo-PaperMod/wiki/Installation#method-2)

``` 
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
echo "theme = 'ananke'" >> hugo.toml
```

### Creating initial content
Under the content folder create two new folders `posts` and `pages`
under the `posts` folder create a new file markdown file. Personally, I've decided for my swa content I'm going to prefix the files with the year and month. which makes it easier to track locally when posts we created.

```
hugo new --kind post posts/2023-10-welcome-to-blogging.md
```

The default markdown file will look like this: 
![Alt text](image.png)
### Testing the Site Locally

```
hugo server
```

### Pushing to GitHub
```
git add * && git commit -m "Initial SWA Upload" && git push
```

# Deploying to Azure Static Web Apps
## Create a Static Web App

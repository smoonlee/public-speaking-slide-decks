
# Getting Starting with Azure Blogging

> [!WARNING]
> This guide assumes the Git is already installed locally.

### Introduction - Installing GoHugo Framework
Firstly we need to ensure that the Hugo Framwork is installed on your local machine. This is a static site generator that will allow us to create a blog site that can be hosted on Azure. to do this we can use the following command:

### For Windows
```
winget install -e Hugo.Hugo.Extended
```

### For Linux 
```
sudo apt install hugo
```

Once we have installed Hugo, next we need to create a GitHub Repository to store our Hugo site. We will be using this repository to deploy our site to Azure Static Web Apps.  So to [Github](https://github.com)!

## Create a GitHub Repository
![Alt text](./content/github-create-new-repo.png)

Once the repository has been created we can then clone the new repo to the local machine.
![Alt text](image.png)
![Alt text](./content/github-repo-http-address.png)

> For this example the working directory will be C:\Code \
to create this folder using powershell we can use the following command:
```powershell
New-Item -ItemType 'Directory' -Path 'C:\Code'
Set-location -Path 'C:\Code'
```

Execute Git Clone! 
> This will create a local folder inside of C:\Code called static-web-app
```
git clone https://github.com/builtwithcaffeine/static-web-app-demo.git
```

### Initialise Hugo Framework  
[Hugo :: Quick Start Help](https://gohugo.io/getting-started/quick-start/)

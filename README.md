# Blazor.Wasm.Demo

This is [Blazor Web Assembly](https://learn.microsoft.com/en-us/aspnet/core/blazor/hosting-models?view=aspnetcore-7.0#blazor-webassembly) application, that is deployed as a static [website](https://lou-parslow.github.io/Blazor.Wasm.Demo/) to [GitHub Pages](https://pages.github.com/)
The purpose of this project is to provide a simple working example of a Blazor Web Assembly hosted using GitHub Pages. 
The source code may be found [here](https://github.com/lou-parslow/Blazor.Wasm.Demo).


<details>
<summary>Publishing to GitHub Pages</summary>

Steps to manually deploy a Blazor WASM application to [GitHub Pages](https://pages.github.com/)

**Build Your Blazor WASM Application for Release:**
   - Open your terminal or command prompt.
   - Navigate to your project directory.
   - Run `dotnet publish src/Blazor.Wasm.Demo/Blazor.Wasm.Demo.csproj -c Release -o dist` to compile your application in release mode.


**Copy the contents of the published wwwfolder to the github pages folder:**
   - Copy the contents of the **'dist\wwwroot'** folder to the **'docs'** folder
   - Create an empty file **'docs\.nojekyll'** to signal to github pages that folders name with a leading underscore (**_framework**,**_content**) should be allowed
   - Edit the **'docs\index.html'** file and change the base href to **'/Blazor.Wasm.Demo/'**


**Push the docs folder to GitHub:**
   - Add the files to git with `git add -A`.
   - Commit the changes with `git commit -m "Deploy Blazor app to GitHub Pages"`.
   - Push to GitHub with `git push -u origin main` (or `git push -u origin main` if you are using the main branch for a user or organization site).


**Enable GitHub Pages in Your Repository Settings:**
   - Go to your repository on GitHub.
   - Click on "Settings" and navigate to "Pages" on the sidebar.
   - Under "Branch", select the branch you want to deploy, in this case, the branch ***main*** is used.
	-Under "Branch", select the folder you want to deploy, in this case, the folder ***docs*** is used.
   - Click "Save", and GitHub will start to build your site.

</details>
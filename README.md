# Your New Website 🤩

Oh hi! Welcome to your new website. 🛼

With this project you can make a website and preview it in your browser, then deploy it to Fastly for free – you don't even need a host!

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/SueSmith/hello-website)

**Fork** your own copy of this repo, click **Code** > **Codespaces** and create a new Codespace to edit the project.

Give the Codespace a minute or two to start up – it'll automatically build and run your new website, opening a preview so that you can see your changes as you edit! When your website preview opens, click the **🔎 Split** button so that you can see it side by side with your code.

![Split view](https://github.com/user-attachments/assets/af59cdf8-5227-4d28-9d1c-d3c5d078a37d)

_You can close the **Terminal** while you work, it'll open again automatically when your project is building._

## Get to know your website

You can make edits in the files by opening them from the left sidebar. Your website preview will update as you edit!

💡 Try opening `index.html` and making a change.

🎨 Change your site style rules in `style.css`.

Share your draft site with collaborators by opening **💻 Terminal** > **PORTS**. Change `private` to `public` by right clicking your running port, then copy the URL 📋.

## Deploy your site to Fastly Compute

Ready to share your site with the world? Deploy it to Fastly to make it available for everyone everywhere all at once!

Grab a Fastly API key from your account and add it to your GitHub repo:

* Sign up for a <strong><a href="https://www.fastly.com/signup/" target="_blank">free Fastly developer account</a></strong>
* Grab an **API Token** from **Account** > **Personal Profile** > **API Tokens** > **Create Token**
  * _Type_: Automation
  * _Role_: Engineer
  * _Scope_: Global (deselect the _Read-only access_ box)
  * _Access_: All services
  * _Expiration_: Never expire
* **Copy the token value into your GitHub repo**
  * Open **Settings** > **Secrets and Variables** > **Codespaces**
  * Create a **New repository secret**
  * Enter the name `FASTLY_API_TOKEN`
  * Paste your token value in and save

Back in your Codespace, you should see a prompt to reload for the new environment variable so go ahead and click that.

Hit the **🚀 Deploy** button and watch the Terminal output for your new site address!

Open it in a new tab and tell everyone you know. 📣

## Keep going! 

Don't stop there, <a href="https://www.fastly.com/documentation/solutions/tutorials/deliver-your-site/#sending-domain-traffic-to-fastly" target="_blank">add a domain to your new site</a>.

🛟 Get help on the <a href="https://community.fastly.com" target="_blank">community forum</a>.

<img src="https://github.com/user-attachments/assets/17a8af4a-100f-416d-a1cf-f84174262138" width="100px"/>

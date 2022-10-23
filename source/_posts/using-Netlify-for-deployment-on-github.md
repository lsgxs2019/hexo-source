---
title: using Netlify for deployment on github
date: 2022-09-11 22:26:20
tags:
 - github
 - deployment
 - Netlify
categories: github
---

[Using Netlify for deployment](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Deployment#using_netlify_for_deployment)  by  MDN contributors is  licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)

Deploying from GitHub to Netlify is surprisingly simple once you know the steps, particularly with "static websites" such as this project.

> **Note:** There are also a lot of [guides and tutorials on Netlify](https://www.netlify.com/blog/tags/tutorial/) to help you improve your development workflow.

<!--more-->

Let's get thisdone:

1. Go to https://app.netlify.com/start.

2. Press the GitHub button underneath the *Continuous Deployment* heading. "Continuous Deployment" means that whenever the code repository changes, Netlify will (try) to deploy the code, thus it being "continuous".![netlify deployment options, as described in the surrounding text](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Deployment/netlify-deploy.png)

3. Depending on whether you authorized Netlify before, you might need to authorize Netlify with GitHub, and choose what account you want to authorize it for (if you have multiple GitHub accounts or orgs). Choose the one you pushed your project to.

4. Netlify will prompt you with a list of the GitHub repositories it can find. Select your project repository and proceed to the next step.

5. Since we've connected Netlify to our GitHub account and given it access to deploy the project repository, Netlify will ask *how* to prepare the project for deployment and *what* to deploy. You should enter the command `npm run build` for the *Build command*, and specify the `dist` directory for the *Publish directory* — this contains the code that we want to make public.

6. To finish up, click *Deploy site*.![netlify distribution options, as described in the surrounding text](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Deployment/netlify-dist.png)

7. After a short wait for the deployment to occur, you should get a URL that you can go to, to see your published site — try it out!

8. And even better, whenever we make a change and push the change to our remote git repository (on GitHub), this will trigger a notification to Netlify which will then run our specified build task and then deploy the resulting ``dist``  directory to our published site. Try it now — make a small change to your app, and then push it to GitHub using these commands:
   
   ```
   git add .
   git commit -m 'simple netlify test'
   git push github main
   ```
   
   You should see your published site update with the change — this might take a few minutes to publish, so have a little patience.

That's it for Netlify. We can optionally change the name of the Netlify project or specify to use our own domain name, which Netlify offers some [excellent documentation](https://docs.netlify.com/) on.

# DITA language website [![Netlify Status](https://api.netlify.com/api/v1/badges/eadd8baf-c5f6-4d0c-89b2-b7a51300a12d/deploy-status)](https://app.netlify.com/sites/nervous-franklin-bfb551/deploys)

The publishing process for the DITA specification draft previews:

1. GitHub Actions runs once a day to publish the DITA specification draft previews.
2. Generate element content model descriptions from RNG into DITA. This modifies the specification source DITA files to
   add conrefs to generated content models.
3. Push generated content model descriptions to Git. This is an optional step to make debugging the published content
   easier.
4. Publish DITA to HTML using DITA-OT. During preprocessing generated markup is added to the content to track error
   definitions and requirement levels.

# ServiceNow CMS Viewer

This application allows for the read-only access of the Content Management System within
ServiceNow. It came about from the desire to be able to easily view different aspects of
what makes up the CMS system for a particular ServiceNow instance while not disrupting
the work being performed in the browser through the ServiceNow portal.

## Justification

When developing within the realm of the Content Management System using a browser
accessing the ServiceNow endpoint, it is often times necessary to switch views between
the various elements within the Content Management System. Below are just a few examples
of the different elements that need to be accessed/referenced:

- Sites
- Pages
- Blocks
- iFrames
- Layouts
- Themes
- Style Sheets
- etc.

If a developer is creating content within the CMS system, they are likely needing to
open several windows to reference/remember different components within CMS that they
wish to reference within the content that they are currently editing. However, doing
this can cause unexpected results within the session that they have open to actually
develop the CMS content (mis-directed saves, unexpected reloads, etc). ServiceNowCmsViewer
allows read-only access to the different elements without disrupting the session that is
associated with development within the CMS portal.

## Dependencies

Note: This application is currently compatible with version 1 of the REST APIs associated
with the Eureka version of the ServiceNow product. Previous and/or future versions have
not been tested and no guarantee is made that this application will function as expected
with such versions.

This application is developed with the following core Ruby-based requirements:

- Ruby 1.9
- Rails 4

Please see the Gemfile for a complete list of required dependencies.

## Installation and Configuration

- Clone the application repository:

```bash
git clone https://github.com/jekhokie/service-now-cms-viewer.git
cd service-now-cms-viewer
```

- Copy and specify environment-specific configurations:

```bash
cp config/settings.yml.sample config/settings.yml
# edit config/settings.yml to match your environment/configuration
```

- Start the ServiceNow CMS Viewer application:

```bash
rails s
```

- Visit the application:

```bash
http://<YOUR_SERVER_OR_IP>:3000/
```

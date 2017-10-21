# Digital Life Collective Project Registration

Our goal is to have a transparent and traceable method for projects that want to put themselves on the Digital Life Collective [map](https://kumu.io/DigitalLife/digital-life-collective).

## Qualifying criteria
There are two criteria. First, the project must specifically set out to do one or more of:

* Improve privacy
* Improve digital inclusion and equality
* Encourage decentralized or distributed architecture

Second, the project must not do any of the following, intentionally or otherwise:

* Surveil the user to sell the data / insight to third parties without enabling the user as the first party / data controller
* Facilitate mass state surveillance
* Exclude or discriminate against any individual or group
* Encourage centralization

## How to get your project on the map
To make this easy for projects and to give you some visibility into the process we have adopted a simple github based approach that follows these steps:

 * Clone and create a simple JSON file for the project
 * Edit the file with your project details
 * Submit a pull request with your project JSON file
 * Members will review the project and approve the pull request
 * The map "build" will pick up the new information and you are on the map!


There is no other database or repository for the data and it remains source controlled in github with version history for members of the Collective and the public to see. We are using the MIT license which means others can use this data.

In the review process we will do the following:

 * Check out the the project and the goals and make sure we have the right information
 * Verify the information is correct
 * Make sure it is aligned with the Collective's purpose
 * Add additional fields including date, status, and tags to make it easier to filter and find.

## Making a submission

**If you are a github whiz then all you need to do is:**

* Create a file using example.json file as your template
* Name it logically [projectName].json
* Commit and push your file into /projects
  ***Note: You will need to create a branch and a pull request.***
* Bob's you uncle!

**If  you need a little more detail follow these steps:**

1. Download this file [digitallifecollective.json ](https://github.com/DigitalLifeCollective/mapped-projects/blob/master/example.json)


2. Open it in a text editor (not a word processor they tend to gum up the formatting)


3. Edit the contents of the file by replacing the template content with your own. Hint: the quotes and commas matter so be aware of what you edit.


4. If you need help with the formatting you can always use a handy online format checker like [this one](https://jsonformatter.curiousconcept.com/). Your file will be reviewed and formatted as part of the pull request review.


5. Now login to your [github.com](https://github.com) account and navigate to https://github.com/DigitalLifeCollective/mapped-projects/tree/master/projects


6. Click the Upload Files button and follow the instructions. Try to name things logically when you fill in the forms.


7. When you have uploaded your JSON file the next page will create a Pull Request. Again fill in the forms and submit.


8. Bob's your uncle!



## JSON Structure
This is a simple JSON structure that captures the information that will be used to generate the project map and other tools we create to curate the projects aligned with the Digital Life Collective.

**Instructions for creating your file. Let's break down the fields:**

The 'project' field is the label that will show up on the map. Try to keep this short so it displays well.

The 'website' field is the link that will be on the map to the project. Please use the full URL.

The 'description' field is shown in the side bar on the map and can include markdown embedded content such as images or video links. This can be a couple of paragraphs but should be concise.

The 'logoURL' needs to be a direct link to the image with no click through or it will not display on the map. A 400 x 400 px size works well.


```
{
   "project":"Digital Life Collective",
   "website":"https://diglife.com",
   "description":"The Digital Life Collective develops, funds and supports technologies created with only the   individual's needs in mind.",
   "logoURL":"https://diglife.com/images/logo.png",
   "twitter":"@digitallifecollective",
   "email":"info@diglife.com",

```
The Digital Life Collective exists to nurture Tech We Trust. Projects should be aligned with one or more of the following purposes and should have no conflicting goals or technology:
* trust
* equality
* privacy
* decentralization

Please limit the values here to one or more from this list.

```
   "purpose":[
      "privacy",
      "trust"
   ],
```

The 'type' field refers to the function that your project fulfills in the larger ecosystem (<a href="http://www.philipsheldrake.com/wp-content/uploads/2017/05/resource7-768x494.png">this diagram portrays our thinking</a>). The options for this field should be one or more of the following:
* human interface (ie. improving the interface into and onto the digital world)
* social (ie. improving the way we connect to one another)
* legal (ie. relating software code and legal code)
* semantic (ie. making data meaningful)
* networking (ie. post-TCP/IP)
* consensus (ie. distributed ledger technology)

Please limit the values here to one or more from this list.


```
  "type":[
      "social",
      "semantic"
   ],
```   


Please list any formal affiliations your project has with organizations.


```
  "affliation":[
      "MIT",
      "Linux Foundation"
   ],
```   

Please specify the license types that apply to your project. If there is more than one you can have multiple values. Example licenses:

* Artistic License v1.0
* Artistic License v2.0
* CC BY 2.0
* CC BY-SA 2.0
* CC0
* IGPL
* Apache v2
* LPPL v1.2
* LPPL v1.3
* Academic Free License version 3
* EPL v1
* FreeBSD
* Modified BSD
* GNU GPL v2
* GNU GPL v3
* MIT
* MPL v1.1
* MPL v2.0
* OPL v1.0
* ISC
* Other OSI-approved
* Proprietary

```
   "license":[
      "MIT",
      "Apache v2"
   ],
 ```  

Please provide links to the repositories and the details about the code.
```  

   "repoURL":"https://github.com/orgs/DigitalLifeCollective",
   "techDetails":{
      "languages":[
         "python",
         "java"
      ],

      "documentationLanguages":[
         "english",
         "german"
      ]
   }
}
```

What other elements or projects does your project require or depend on? For example, Ethereum, GNU Social, or Bitcoin.
```
     "requires":[
         "Ethereum",
         "GNU Social"
      ],
```


Have we missed any critical information? You can include up to 5 'tags' that describe your project.

```
  "tags":[
      "collective",
      "co-op"
   ],

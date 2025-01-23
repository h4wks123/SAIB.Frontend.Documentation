#import "template.typ": *

#show : template.with()

#align(horizon, [
  #align(center,  text(32pt)[
    *SAIB Frontend Documentation*
  ])

  #align(center, text(16pt)[
    Empowering your Digital Presence \
    2025-01-21
  ])
])

#pagebreak()

#outline(
  title: [Table of Contents],
  indent: auto
)

#pagebreak()

#text(fill: rgb("6505a6") , size: 28pt, weight: "bold", align(center,[Abstract]))

This document serves as a comprehensive guide to the company's front-end development standards, designed to onboard new front-end developers effectively. By drawing on insights and examples from past projects, it offers practical guidance to help developers excel in their roles. 

\
The primary goal of this document is to deepen readers' understanding of front-end development fundamentals. Through detailed discussions of implementation practices, it provides a strong foundation for tackling tasks with confidence and supporting professional growth. 

\
Before engaging in hands-on activities, it is essential to familiarize yourself with the core guidelines for writing high-quality, maintainable code. While new frontend employees of SAIB are expected to understand front-end technologies such as #text(weight: "bold")[
  HTML, CSS, JavaScript, Typescript, React, and Node.js.
] this documentation focuses on the principles of organizing these elements into clean, well-structured, and scalable codebases. 

\
By adhering to these standards, developers can ensure their work is both efficient and aligned with the company’s commitment to excellence. 

#pagebreak()

= HTML Guidelines
\
== Overview

One of the most common challenges for new front-end developers is overlooking the importance of clean semantics when writing quality code. This issue often manifests as excessive nesting of ```html <div> ```elements, resulting in obfuscated code that lacks clear meaning and purpose. Such practices make it difficult for other developers to understand the intent behind each implementation, which hinders productive maintainability during the process.  

\

#table(
  stroke: none,
  columns: 2,
  inset: 10pt,
  align: center,
  [
    #figure(
      image("images/notRecommendedHTML.png", height: 175pt),
      caption: [
        Not recommended HTML tags structure
      ],
    )
  ],
  [
    #figure(
      image("images/recommendedHTML.png", height: 175pt),
      caption: [
        Recommended HTML tags \ structure
      ],
    )
  ]
)

\

The images above show the recommended HTML styling in which front-end developers are advised to implement. I will also be shortly discussing what tags to use, their description, and when to use each. 

\

== HTML Tags
Below is a list of the commonly used HTML tags, along with short descriptions of the semantic behind them. For more information on other HTML tags and when to use them, you can refer to this 
#link("https://www.w3schools.com/tags/")[website].

#pagebreak()

#table(
  columns: (100pt, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [HTML Tags])],
    [#text(weight: "bold", [Description])],
  ),
  [#text(weight: "bold", [```html <html>```])],[The root element of an HTML document that wraps all other elements.],
  [#text(weight: "bold", [```html <head>```])],[Contains metadata, links to stylesheets, scripts, and other non-visual elements for the document.],
  [#text(weight: "bold", [```html <body>```])],[Encloses the visible and interactive content of the webpage.],
  [#text(weight: "bold", [```html <div>```])],[A generic container for grouping and styling elements; avoid overuse in favor of semantic tags.],
  [#text(weight: "bold", [```html <main>```])],[Denotes the main content area of the webpage, where the primary information is displayed.],
  [#text(weight: "bold", [```html <header>```])],[Contains introductory content like page titles, logos, or navigation links.],
  [#text(weight: "bold", [```html <footer>```])],[Holds footer information like copyright, related links, or contact details.],
  [#text(weight: "bold", [```html <nav>```])],[Groups navigational links for site navigation.],
  [#text(weight: "bold", [```html <section>```])],[Represents a thematic grouping of related content, usually with a heading.],
  [#text(weight: "bold", [```html <article>```])],[A self-contained piece of content like a blog post, comment, or news article.],
  [#text(weight: "bold", [```html <aside>```])],[Defines content related to the main content, like sidebars or pull quotes.],
  [#text(weight: "bold", [```html <h1>```–```html <h6>```])],[Headings, ranked by importance from ```html <h1>``` (most important) to ```html <h6>``` (least important).],
  [#text(weight: "bold", [```html <p>```])],[Defines a paragraph of text.],
  [#text(weight: "bold", [```html <code>```])],[Displays a snippet of code in a monospaced font.],
  [#text(weight: "bold", [```html <span>```])],[An inline container for applying styles or grouping content without semantic meaning.],
  [#text(weight: "bold", [```html <ul>```])],[Creates an unordered list (bulleted).],
  [#text(weight: "bold", [```html <ol>```])],[Creates an ordered list (numbered).],
  [#text(weight: "bold", [```html <li>```])],[Represents an item within a list (```html <ul>``` or ```html <ol>```).],
  [#text(weight: "bold", [```html <table>```])],[Defines a table.],
  [#text(weight: "bold", [```html <thead>```, ```html <tbody>```, ```html <tfoot>```])],[Group table rows into header, body, and footer sections.],
  [#text(weight: "bold", [```html <tr>```, ```html<td>```, ```html<th>```])],[Represent table rows, data cells, and header cells.],
  [#text(weight: "bold", [```html <img>```])],[Embeds an image. Requires the src attribute for the image path and alt for alternative text.],
  [#text(weight: "bold", [```html <form>```])],[Creates a form for user input.],
  [#text(weight: "bold", [```html <input>```])],[Accepts various types of user input, such as text, passwords, or checkboxes.],
  [#text(weight: "bold", [```html <textarea>```])],[Defines a multi-line text input area.],
  [#text(weight: "bold", [```html <button>```])],[Represents a clickable button.],
  [#text(weight: "bold", [```html <a>```])],[Creates hyperlinks for navigation.]
)

#pagebreak()

= Open Graph
\
== Overview

The Open Graph protocol allows any web page to transform into a rich object within a social graph, enhancing how content is represented when shared across platforms like Facebook, Twitter, or Discord. 

In this section of the documentation, we will use the 
#link("https://www.crashr.io/")[Crashr] 
website as a reference to explore how the Open Graph protocol is implemented. This will include examining metadata integration, common practices, and tips for optimizing content previews for social sharing.

\

== Basic Metadata

To implement the Open Graph protocol, ```html <meta>``` tags must be placed within the ```html <head>``` section of a web page. These tags define how your content is represented within the social graph. The essential Open Graph meta tags include: 

\

- #text(weight: "bold", [og:title:]) Specifies the title of your object as it should appear in the graph. For example: "The Rock". 
- #text(weight: "bold", [og:type:]) Indicates the type of your object, such as "video.movie". Depending on the type specified, additional properties may be required. 
- #text(weight: "bold", [og:image:]) Provides the URL of an image that represents your object within the graph. 
- #text(weight: "bold", [og:url:]) Defines the canonical URL of your object, serving as its permanent ID within the graph. For example: #link("https://www.crashr.io/")[https://www.crashr.io/]. 

\

In addition to these basic tags, the Open Graph protocol supports many other metadata options for customizing your content’s appearance in the social graph. For a full list of available metadata properties and their usage, refer to the official #link("https://ogp.me/")[Open Graph documentation]. 

\

== Checking Open Graph Implementation

To verify the Open Graph metadata of a website, developers can use tools like #link("https://www.opengraph.xyz/")[OpenGraph.xyz]. Simply navigate to the website and input the desired URL to analyze its Open Graph implementation. This tool provides a quick and visual way to ensure your metadata is correctly set up and displays as intended when shared on social platforms. Below is an image which shows how to check for open graph implementation. 

#pagebreak()

\

#figure(
  image("images/openGraphSearch.png", height: auto),
    caption: [
      Search interface of open graph website
    ],
  )

\

After checking a website's Open Graph implementation using a tool like #link("https://www.opengraph.xyz/")[OpenGraph.xyz], the tool displays the relevant metadata details used for social sharing. For this documentation, we will reference the Crashr website's metadata as an example. A copy of its metadata tags for various social platforms will also be provided for better understanding. Below are examples of the metadata tags associated with specific platforms: 

\

- #text(weight: "bold",[HTML Meta Tags])```html 
<title>Crashr | Official Website</title>  
<meta name="description" content="We are revolutionizing the industry with a seamless, decentralized platform for digital asset transactions.">  
<meta property="og:url" content="https://www.crashr.io/">  
<meta property="og:type" content="website">  
<meta property="og:title" content="Crashr | Official Website">  
<meta property="og:description" content="We are revolutionizing the industry with a seamless, decentralized platform for digital asset transactions.">  
<meta property="og:image" content="https://www.crashr.io/crashr-website.webp"> 
```

\

#figure(
  image("images/openGraphBase.png", height: auto),
    caption: [
      Open graph result of the crashr website
    ],
  )

\

- #text(weight: "bold",[Twitter Meta Tags])```html
<meta name="twitter:card" content="summary_large_image">  
<meta property="twitter:domain" content="crashr.io">  
<meta property="twitter:url" content="https://www.crashr.io/">  
<meta name="twitter:title" content="Crashr | Official Website">  
<meta name="twitter:description" content="We are revolutionizing the industry with a seamless, decentralized platform for digital asset transactions.">  
<meta name="twitter:image" content="https://www.crashr.io/crashr-website.webp"> 
```

\

#figure(
  image("images/openGraphTwitter.png", height: auto),
    caption: [
      Open graph result of the crashr website in twitter
    ],
  )

#pagebreak()

= CSS Guidelines
\
== Overview

In this section, I will focus on key CSS concepts and essential elements that are crucial for understanding the fundamentals of front-end development. This section is intended as a refresher, so readers are expected to have a basic understanding of CSS fundamentals. 

\

== CSS Naming Convention

It is essential to adopt a consistent and clear naming convention when writing CSS to ensure code maintainability and readability. Naming conventions may vary depending on company standards, but it is essential to follow a specific convention for consistency. One popular and effective naming methodology is #text(weight: "bold", [BEM (Block, Element, Modifier)]).

\

BEM helps create reusable and modular components by structuring CSS classes into three main parts: 

\

- #text(weight: "bold", [Block:]) Represents a standalone entity that is meaningful on its own. For example, a navigation bar (nav) or a button (button). \ Ex. ```css
.button {}  
.menu {} 
```

- #text(weight: "bold", [Element:]) Represents a part of a block that has no standalone meaning and is dependent on the block. Elements are separated from the block name by a double underscore (```css __```). \ Ex. ```css
.button__icon {}  
.menu__item {}  
```

- #text(weight: "bold", [Modifier:]) Represents a different state or version of a block or element. Modifiers are separated from the block or element name by a double hyphen (--). \ Ex. ```css
.button--primary {}  
.menu__item--active {} 
```

\

For more information regarding this naming convention, readers may refer to this #link("https://www.w3schools.com/tags/")[article on BEM].

#pagebreak()

== CSS Box Model
In a nutshell, the box model is essentially a box that wraps around an element. It consists of content, padding, borders and margins. Below is an image that illustrates this:

\

#figure(
  image("images/cssBoxModel.png", height: auto),
    caption: [
      Illustration on the structure which defines the box model
    ],
  )

\

Each section is defined by the following: 

- #text(weight: "bold", [Content:]) The content of the box, where text and images appear 
- #text(weight: "bold", [Padding:]) Clears an area around the content.  
- #text(weight: "bold", [Border:]) A border that goes around the padding and content 
- #text(weight: "bold", [Margin:]) Clears an area outside the border. 

\

The image below illustrates how box models are interpreted based on the AEGIS website, which serves as a reference. Each numbered section represents an element used to construct the webpage: 
- #text(weight: "bold", [Background Section:]) Number 1 represents the Aegis homepage background, which contains the navigation and content area. Number 8 represents another box model that contains an SVG as its background image. While the box may appear curved due to the SVG design, it is inherently a standard rectangular box model, as the SVG itself introduces the curves visually. 
- #text(weight: "bold", [Navigation Bar:]) Number 2 represents the navigation bar, which contains three child elements (3, 4, and 5). These elements together form the navigation section. 
- #text(weight: "bold", [Content Area:]) Number 6 is a distinct box model that contains the Aegis shield animation. Number 7 is part of a distinct box model that is centered on the webpage, which can be represented as an article.

#pagebreak()

#figure(
  image("images/cssAegisBoxModel.png", height: auto),
    caption: [
      CSS box model of the aegis first section from the homepage
    ],
  )

\

== CSS Reset

The goal of a CSS reset is to minimize browser inconsistencies in default styling, such as line heights, margins, font sizes for headings, and other built-in properties that vary across browsers. These differences can make it difficult for developers to accurately position elements, as they may not know which default styles are being applied. 

\

For example, the default margin for an ```css h1``` tag is typically set to ```css margin-y: 0.67em```. This can interfere with consistent layout and positioning. By using a reset stylesheet, you can remove or standardize these default styles. More information regarding default attributes for every element can be found in this 
#link("https://www.w3schools.com/tags/")[link]. 

#pagebreak()
```css
* {  
  font-family: "Montserrat", sans-serif;  
  line-height: 1.5;  
  font-weight: 400;  
  margin: 0;  
  padding: 0;  
  box-sizing: inherit; 
} 

html,  
body {  
  box-sizing: border-box;  
  overflow-x: hidden;  
  padding-right: 0;  
} 
```
\

== CSS Display 

In CSS, the display property determines how elements are rendered on a page. Each HTML element has a default display value, which influences how it behaves in relation to other elements. For example, a ```html <div>``` is a block-level element by default, meaning it occupies the full width of its container and begins on a new line, while a ```html <p>``` tag is inline by default, meaning it only takes up as much width as its content and does not cause line breaks.  

\

#table(
  columns: (125pt, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Display Properties])],
    [#text(weight: "bold", [Description])],
  ),
  [#text(weight: "bold", [None])],[The element is completely removed from the document layout. It takes up no space and is not visible. Child elements are also not displayed. ],
  [#text(weight: "bold", [Block])],[Block-level elements take up the full width of their container (unless otherwise specified) and cause line breaks before and after the element. Common block-level elements include ```html <div>, <section>, and <article>.``` ],
  [#text(weight: "bold", [Inline])],[Inline elements only take up as much width as their content and do not cause line breaks. They sit alongside other inline elements. Examples include ```html <span>, <a>, and <strong>.```],
  [#text(weight: "bold", [Inline-Block])],[Combines characteristics of both block and inline. The element behaves like an inline element (it does not cause line breaks) but can also have width, height, padding, and margins applied like a block element.],
  [#text(weight: "bold", [Flex])],[Enables a flexible container that distributes space between and aligns items along both horizontal (row) and vertical (column) axes. Flexbox is ideal for responsive layouts where the alignment of elements needs to adapt based on the container's size.],
  [#text(weight: "bold", [Grid])],[Creates a grid layout system with rows and columns. It allows for precise control over the placement of elements within a grid container, making it suitable for complex layouts.],
)

\

== CSS Positioning

This section focuses on the five positioning properties essential for controlling the placement of elements on a webpage. Each property type is discussed in detail, with its functionality and use cases explained. For more information, refer to this #link("https://www.w3schools.com/css/css_positioning.asp")[article]. 

#table(
  columns: (131pt, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Positioning Properties])],
    [#text(weight: "bold", [Description])],
  ),
  [#text(weight: "bold", [Static])],[HTML elements are positioned as static by default. They follow the normal flow of the page and cannot be positioned using the top, bottom, left, or right properties. ],
  [#text(weight: "bold", [Relative])],[Elements with relative positioning remain in the normal document flow but are positioned relative to their original position. They can be adjusted using the top, bottom, left, and right properties.],
  [#text(weight: "bold", [Absolute])],[Elements with absolute positioning are positioned relative to their nearest positioned ancestor (an element that is not static). They are removed from the normal flow, allowing them to overlap with other elements. If no such ancestor exists, the element is positioned relative to the document (root element). This can be referenced based on the image which compares both:],
  table.cell(colspan: 2)[
    #table(
      stroke: none,
      columns: 2,
      inset: 10pt,
      align: center,
      [
        #figure(
          image("images/cssRelativeAncestor.png", height: 130pt),
          caption: [
            Absolute element with relative ancestor
          ],
        )
      ],
      [
        #figure(
          image("images/cssStaticAncestor.png", height: 130pt),
          caption: [
            Absolute element without positioned ancestor
          ],
        )
      ]
    )
  ],
  [#text(weight: "bold", [Fixed])],[Is positioned relative to the viewport, meaning it stays in the same place even when the page is scrolled. The top, right, bottom, and left properties can be used to position the element.],
  [#text(weight: "bold", [Sticky])],[Is positioned based on the user's scroll position.],
)

\

== CSS Units
They are used to define the lengths and dimensions of elements. They can be categorized into absolute and relative units. 

- #text(weight: "bold",[Absolute Units:]) They have a fixed length and do not depend on other elements or the viewport. They are commonly used for maintaining consistent sizes, such as for images or print layouts.

\

#table(
  columns: (100pt, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Absolute Units])],
    [#text(weight: "bold", [Description])],
  ),
  [#text(weight: "bold",[px])], [Pixels, a fixed unit commonly used for on-screen element dimensions.],
  [#text(weight: "bold",[cm])], [Centimeters, mainly used in print layouts.],
  [#text(weight: "bold",[mm])], [Millimeters, used primarily for print layouts.],
  [#text(weight: "bold",[in])], [Inches, equivalent to 2.54 cm, often used in print.],
  [#text(weight: "bold",[pt])], [Points, commonly used in print (1 pt = $1/72$ of an inch).],
  [#text(weight: "bold",[pc])], [Picas, used in print (1 pc = 12 pt).]
)

\

- #text(weight: "bold",[Relative Units:]) They define lengths relative to another property or element. They are ideal for responsive design as they adapt to the viewport and font size.

\

#table(
  columns: (100pt, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Relative Units])],
    [#text(weight: "bold", [Description])],
  ),
  [#text(weight: "bold", [%]),],[Relative to the parent element.],
  [#text(weight: "bold", [em])],[Relative to the font-size of the element (2em means 2 times the size of the current font).],
  [#text(weight: "bold", [rem])],[Relative to font-size of the root element.],
  [#text(weight: "bold", [vw])],[Relative to 1% of the width of the viewport.],
  [#text(weight: "bold", [vh])],[Relative to 1% of the height of the viewport.],
  [#text(weight: "bold", [vmin])],[Relative to 1% of viewport's smaller dimension.],
  [#text(weight: "bold", [vmax])],[Relative to 1% of viewport's larger dimension.],
  [#text(weight: "bold", [ch])],[Relative to the width of the character "0" of the current font.],
  [#text(weight: "bold", [ex])],[Relative to the height of the font's lowercase "x".],
)

\

== CSS Responsiveness

Webpages are viewed in various sizes depending on the user's device. Developers should ensure that the content adapts seamlessly to all screen sizes, providing a consistent and accessible experience across devices. The image below illustrates how a webpage should appear on different devices: 

\
    #table(
      stroke: none,
      columns: 2,
      inset: 10pt,
      align: center,
      [
        #figure(
          image("images/keyBenefitsDesktop.png", width: 275pt),
          caption: [
            Desktop view of key benefits section
          ],
        )
      ],
      [
        #figure(
          image("images/keyBenefitsMobile.png", height: auto),
          caption: [
            Mobile view of key benefits section
          ],
        )
      ]
    )

#pagebreak()
== Media Queries

These are CSS rules that help achieve responsiveness on a website. They use the ```css @media``` rule to apply a block of CSS properties only when a specified condition is met. For more in-depth details on how they work, readers can refer to this #link("https://www.w3schools.com/css/css_rwd_mediaqueries.asp")[article]. 

\
In the context of responsive design, media queries are used to define breakpoints, which determine how elements should adapt based on the screen size. To implement this, developers often follow the #text(weight: "bold",[mobile-first principle]) (tailwindcss also uses this principle), designing for mobile devices first and then adding styles for larger screens. 

\
Below is an example of how media queries are applied, (the code used here is referenced from the Aegis homepage shown above): 

\
#table(
  columns: (1fr, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Desktop])],
    [#text(weight: "bold", [Mobile])],
  ),
  [
    ```css
    @media screen and (min-width: 1280px)   
    {  
      .keyBenefits__container {  
        display: flex;  
        flex-direction: row;  
        flex-wrap: wrap;   
        justify-content: space-between; 
      }  
    } 
    ```
  ],
  [
    ```css 
    @media screen and (min-width: 480px)   
    {  
      .keyBenefits__container {  
        display: flex;  
        flex-direction: column;  
      }  
    } 
    ```
  ],
)

\
Developer tools in chrome are also available which contains a setting for checking responsiveness on specific devices. Here are the following steps to achieve this: 

+ Right click on the web page and select #text(weight: "bold",[inspect]). 
+ In the Developer Tools window, click on the #text(weight: "bold",[Toggle]) device toolbar button (the small phone/tablet icon) located at the top-left of the Developer Tools pane.
\
#figure(
  image("images/devTools.png", height: auto),
    caption: [
      Dev tools interface
    ],
  )

\
3. In the device toolbar, you'll see a dropdown that lets you select a device type (e.g., iPhone, iPad, Nexus, etc.). In relation to this, you can also enter custom device dimensions by selecting Responsive in the dropdown and adjusting the width and height manually. 
\. 
#figure(
  image("images/devToolsDropdown.png", height: auto),
    caption: [
      Dev tools responsive dropdown
    ],
  )

\
== CSS Pseudo Elements 
Pseudo-elements are used to style specific parts of an element or insert additional content without modifying the HTML. The two most common pseudo-elements are ```css ::before and ::after```.

- #text(weight: "bold", [```css ::before```]): It is used to insert content before the actual content of an element. You can add styles to this generated content. 
- #text(weight: "bold", [```css ::after```]): It is used to insert content after the actual content of an element. Similarly, you can style the inserted content. 

\
Both ```css ::before and ::after``` require the #text(weight: "bold",[content]) property to function, even if it's just an empty string ```css(content: "";)```.

#pagebreak()
Below is a button from the #link("https://www.crashr.io/")[Crashr] website developed by SAIB. To achieve a gradient border, using pseudo-elements can be an alternative solution to address this issue effectively. Here is a #link("https://codepen.io/h4wks123/pen/xbKbOGm")[link] of the codepen on how this feature was implemented. 

#figure(
  image("images/crashrButton.png", height: auto),
    caption: [
      Crashr button with rotating border gradient
    ],
  )

#pagebreak()
= Stacking Context
A stacking context is a conceptual layer in the browser where elements are rendered in a specific order. It determines how elements visually overlap on the webpage. HTML elements occupy this space in priority order based on element attributes. 

\
In simpler terms:
+ Stacking contexts can be contained in other stacking contexts and together create a hierarchy of stacking contexts. 
+ Each stacking context is completely independent of its siblings: only descendant elements are considered when stacking is processed. 
+ Each stacking context is self-contained: after the element's contents are stacked, the whole element is considered in the stacking order of the parent stacking context. 

\
Below is an image which shows how every positioned element creates its own stacking context, because of their positioning and z-index values. For more information, developers can refer to this #link("https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_positioned_layout/Understanding_z-index/Stacking_context")[article].

\
#figure(
  image("images/stackingContextLayout.png", height: 300pt),
    caption: [
      Layout representing stacking context
    ],
  )

#pagebreak()

= Creating the AEGIS Website Without Flex and Grid

\
== Overview
This section is designed as a fun activity for developers to practice layout manipulation without using flexbox or grid, focusing instead on positioning techniques. The Aegis homepage serves as a reference for this exercise. Additionally, I will explain the various implementations I used to create the layouts, using Excalidraw for visual representation. If you're interested in exploring this repository, here's a #link("https://github.com/h4wks123/SAIB-Aegis-Homepage-Pre-Flexbox-Grid-Layout")[link] to the Aegis website implemented with standard HTML, CSS, and JavaScript. 

\
== Prerequisites
Before proceeding with this activity, it's essential to have a solid understanding of the fundamental properties of CSS. This includes basic display attributes such as #text(weight: "bold", [block, inline,]) and particularly #text(weight: "bold",[inline-block]). Additionally, a basic understanding of CSS positioning, including #text(weight: "bold",[relative, absolute,]) and #text(weight: "bold",[static]), is necessary for successful implementation. 

\
== Floats 
#text(weight: "bold",[Flexbox]) was introduced in 2009, followed by CSS #text(weight: "bold",[Grid]) in 2011. This raises the question: how did developers create website layouts before these technologies, considering CSS was first developed in 1994 to define front-end UI specifications? One of the earliest methods for positioning elements was the use of #text(weight: "bold",[floats]), which allowed elements to be aligned to the left or right of their container. 

\
The float property can have one of the following values: 
#table(
  columns: (100pt, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Float Properties])],
    [#text(weight: "bold", [Description])],
  ),
  [#text(weight: "bold",[Left])], [The element floats to the left of its container.],
  [#text(weight: "bold",[Right])], [The element floats to the right of its container],
  [#text(weight: "bold",[None])], [The element does not float (will be displayed just where it occurs in the text). This is default],
  [#text(weight: "bold",[Inherit])], [The element inherits the float value of its parent.],
)

#figure(
  image("images/aegisResponsiveNavBar.png", height: auto),
    caption: [
      Aegis navigation bar implementation using float
    ],
  )

In this layout, the float property is used to position the elements within the navigation bar. Below explains how the layout was properly implemented.  

- #text(weight: "bold", [Logo:]) Floated to the left, it takes up a fixed width (10rem) and spans the full height of the navigation bar. 
- #text(weight: "bold", [Menu Items:]) Floated left as well, with a width calculated to fill the remaining space in the navigation bar. It takes up the space left after the logo and button container. 
- #text(weight: "bold", [Menu Links:]) These are styled as inline blocks to position them horizontally. They're vertically centered within the menu using a top value calculation based on the container height. 

\
Here is the codepen #link("https://codepen.io/h4wks123/pen/PwYaGOQ")[link] to check how this is being implemented using float. 

== First Section
For the first section of the Aegis website, implementation is explained in detail through the #link("https://saibph.sharepoint.com/sites/SAIB/_layouts/15/stream.aspx?id=%2Fsites%2FSAIB%2FShared%20Documents%2FINTERNS%2FIvanne%2FSAIB%5FFIRST%5FBACKGROUND%5FDISCUSSION%2Emp4&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2E9630e05b%2Da7a4%2D411a%2D87ca%2Dd8534ed4bdf3")[linked video]. The video serves as a guide on creating the first section without using flexbox or grid, focusing instead on basic CSS fundamentals. While the video covers this section, the remaining parts of the website will be explained in the form of a documentation, with additional details and an explainer for each section. 

#pagebreak()
== Second Section
#figure(
  image("images/aegisSecondSection.png", height: auto),
    caption: [
      Aegis second section without flex and grid
    ],
  )

\
- #text(weight: "bold",[Background Section:]) Number 1 serves as the container holding all the elements numbered 2 through 7. 
- #text(weight: "bold",[Key Benefits Text:]) Number 2 is the main article text for the key benefits. It has the same width as the other cards and is placed in the same row. However, it contains a different height because it is taller. 
- #text(weight: "bold",[Key Benefits Cards:]) Numbers 3 through 7 are the cards displaying the details of the key benefits. Each card has a width of 32% relative to its parent container (number 1), totaling 96% per row. For the second and third cards in the row, an additional 2% width is added between the cards to create space which totals to 100%. 

== Third Section
#figure(
  image("images/aegisThirdSection.png", height: auto),
    caption: [
      Aegis third section without flex and grid
    ],
  )

\
- #text(weight: "bold",[Background Section:]) Numbers 1 and 3 represent box models that contain an SVG as their background image, despite the appearance of curves. Number 2 serves as the background container that holds cards numbered 4 through 7. Since the cards are using inline-block, the ```css white-space: nowrap``` property is applied to prevent the cards from wrapping and ensure they exceed the width of the right container.
- #text(weight: "bold",[Key Benefits Text:]) Number 8 is the roadmap text which is centered within number 3. I used ```css left: 50% and translateX(-50%)``` to achieve this effect. 
- #text(weight: "bold",[Key Benefits Cards:]) For this section, since the card exceeds the parent containers width to achieve the carousel display effect, I used rem to define the width of the cards instead of percentage. This is also relevant based on the blue line which shows the center y axis of the website which shows that the image displayed has its cards exceeding outside the max-width 1280px container for its right side. For number 4, I used ```css vertical-align: top``` to push the text on the topmost section, and for number 5-7, I used vertical align: middle so that the subsequent cards will be centered, and this works since the cards are all inline block elements.

\
== Fourth Section
#figure(
  image("images/aegisFourthSection.png", height: auto),
    caption: [
      Aegis fourth section without flex and grid
    ],
  )

\
For this section, although the implementation here differs significantly from the one presented in the repository, I believe this approach is better as it adheres to the principles of box models. I will explain how this can be implemented with proper box modeling. 
- #text(weight: "bold",[Background Section:]) Number 1 holds both the number 2 timeline and number 14 heading containers.
- #text(weight: "bold",[Timeline Section:]) Represented as number 2, this section holds the different quarter numbers in the timeline and contains two types of box models. The first set, numbered from 3 to 8, includes the #text(weight: "bold",[year | quarter]) text along with a period on the right side of the text. Below each number, there is a box model (numbered 9 to 13) that represents the line extending to the nearest adjacent period.
- #text(weight: "bold",[Heading Section:]) Represented as number 14, this section features a curved triangle SVG as its background image. The heading text, represented as number 15, is the article text placed on the left side within the heading section container.

\
== Fifth Section
#figure(
  image("images/aegisFifthSection.png", height: auto),
    caption: [
      Aegis fifth section without flex and grid
    ],
  )

\
- #text(weight: "bold",[Background Section:]) Number 1 contains the tokenomics section along with the elements that define it. Number 2 is an element with a background SVG, which gives it a curved appearance, but it is inherently a box model. 
- #text(weight: "bold",[Tokenomics Title:]) This section represents the tokenomics title and is centered vertically with ```css text-align: center``` property. 
- #text(weight: "bold",[Tokenomics Pie Chart:]) Represented as container number 5, this section holds an SVG pie chart with text at the center of the pie. The width of this container is 55% relative to its parent container, which is number 4. 
- #text(weight: "bold",[Tokenomics Details Section:]) This section, represented by number 6, contains details that define the tokenomics statistics, numbered from 7 to 11. The width of the details section is 45%, making the total width of the pie chart and details container parent 100%. The text elements are arranged in two rows and two columns inside their respective orange containers (numbered 7 to 11). To separate the elements, the left text is positioned using ```css float: left```, while the right text is positioned using ```css float: right```, which corresponds to the purple square. 

\
== Fifth Section
#figure(
  image("images/aegisSixthSection.png", height: auto),
    caption: [
      Aegis sixth section without flex and grid
    ],
  )

\
- #text(weight: "bold",[Team Title:]) Like the previous tokenomics section, the title (number 1) is vertically centered using the ```css text-align: center``` property. 
- #text(weight: "bold",[Team Information Containers:]) This section, represented by numbers 2 and 3, serves as the containers that hold all the team information elements. For these containers, the ```css text-align: justify``` property is applied, ensuring that the information cards within the container are justified. This works because each information card is declared as an inline-block element. 
- #text(weight: "bold",[Team Information Cards:]) In this section, each card is defined as a list item within unordered lists, styled as inline-block elements. The cards automatically distribute themselves without the need to explicitly define gaps, like how it is normally managed in Flexbox. The cards are numbered from 4 to 11. 

#pagebreak()
== Seventh Section 
#figure(
  image("images/aegisSeventhSection.png", height: auto),
    caption: [
      Aegis seventh section without flex and grid
    ],
  )

\
- #text(weight: "bold",[Background Section:]) Number 1 contains the FAQ section along with the elements that define it. 
- #text(weight: "bold",[FAQ Title:]) Number 2 contains the FAQ title is vertically centered using the text-align: center property. 
- #text(weight: "bold",[FAQ Texts:]) Numbers 3 to 5 contain two different elements, the one represented at the left side is positioned using float: left, while the buttons on the right side are represented as float: right. 

\
== Aegis Footer Section
\
#figure(
  image("images/aegisSeventhSection.png", height: auto),
    caption: [
      Aegis footer section without flex and grid
    ],
  )

\
- #text(weight: "bold",[Background Section:]) Number 1 contains the Footer section along with the elements that define it. 
- #text(weight: "bold",[Footer Containers:]) Numbers 2 and 3 serve as the footer container which holds the respective elements holding necessary texts on what defines this section. 
- #text(weight: "bold",[Footer Information:]) Numbers 4 to 10 are the elements that represent the information found in the footer. Numbers 4 to 6 and 8 are positioned using ```css float: left``` and Numbers 7, 9, and 10 are positioned using ```css float: right```.

#pagebreak()

= Github Conventional Commits

\
== Overview
The Conventional Commits specification is a lightweight convention built on top of commit messages. It establishes a set of rules for creating clear and consistent commit histories, making it easier to write automated tools and processes around commits. In this section, I will discuss the commonly used conventional commits on GitHub. For more detailed information, you can refer to the official documentation #link("https://www.conventionalcommits.org/en/v1.0.0/")[here].

\
== Prerequisites
Before diving into GitHub Conventional Commits, developers should have a foundational understanding of how GitHub works and how version control systems, like Git, are used to manage code. 

\
== Conventional Commits Structure
Conventional commits are structured based on the following #text(weight: "bold", [format: ```html <type>``` [optional scope]: ```html <description>```]). For the following, I will show what each type entails and give an example on the message that can be associated with each: 

\
#table(
  columns: (100pt, 1fr, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Github Commit Messages])],
    [#text(weight: "bold", [Description])],
    [#text(weight: "bold", [Examples])],
  ),
  [#text(weight: "bold", [fix])],[A commit that addresses a bug or fixes an issue.],[fix: resolve login error when user submits invalid credentials],
  [#text(weight: "bold", [feat])],[A commit that introduces a new feature or functionality. ],[feat: add search bar to navigation header],
  [#text(weight: "bold", [build])],[A commit that affects the build system or dependencies (e.g., updating tools or libraries).],[build: update webpack to version 5.0.0],
  [#text(weight: "bold", [chore])],[A commit for routine tasks or maintenance work that doesn’t affect application functionality.],[chore: deleted asset files],
  [#text(weight: "bold", [ci])],[A commit related to continuous integration (e.g., changes to build scripts or CI configurations).],[ci: add deployment pipeline for staging],
  [#text(weight: "bold", [docs])],[A commit that updates documentation (e.g., README files, API docs).],[docs: update installation instructions],
  [#text(weight: "bold", [style])],[A commit that corrects styling issues without affecting the application’s functionality (e.g., formatting, whitespace).],[style: fix inconsistent indentation in main.css],
  [#text(weight: "bold", [refactor])],[A commit that refactors or improves the codebase without adding new features or fixing bugs.],[refactor: simplify carousel hook],
  [#text(weight: "bold", [perf])],[A commit that improves performance (e.g., optimization).],[perf: reduce response time by optimizing database queries],
  [#text(weight: "bold", [test])],[A commit that adds or modifies tests (e.g., unit tests, integration tests).],[test: add unit tests for login validation],
)

#pagebreak()

= Material UI

\
== Overview 
Material UI is an open source React component library designed to bring Google's Material Design principles to life. It offers a rich set of prebuilt components that are production-ready, making it an excellent choice for building modern, responsive user interfaces. With its extensive customization options, Material UI allows developers to seamlessly integrate unique design systems on top of its components. Our company leverages Material UI to deliver consistent, visually appealing, and highly functional interfaces across all our projects, ensuring a polished user experience. More information on this document can be found in this #link("https://mui.com/material-ui/getting-started/")[article].

\
== Prerequisites
Before diving into MUI, developers are expected to have a foundational understanding of the following technologies: #text(weight: "bold",[HTML, CSS, JavaScript, Typescript, and React]).

\
== Version
The current version of MUI during the inception of this documentation is #text(weight: "bold",[v.6.3.1]), any information discussed in this documentation is subject to change.

\
== MUI Theme Customization 
Every company has its own unique theme that aligns with its brand identity. At SAIB, our primary customization is based on a specific color palette, though this may vary depending on individual project requirements, such as client-specific projects. For instance, Crashr follows a different theme, yet it maintains a consistent design language that reflects coherence and often conveys a deeper meaning. This approach ensures a harmonious visual identity across all projects while allowing flexibility to meet diverse needs. 

#pagebreak()

\
#figure(
  image("images/saibColorTheme.png", height: auto),
    caption: [
      SAIB palette representing its color theme
    ],
  )

\ 
#figure(
  image("images/saibTypography.png", height: auto),
    caption: [
      SAIB palette representing its typography
    ],
  )

\
To create a theme in Material UI, developers can use the ```js createTheme``` function, which allows customization of the palette, typography, and other design elements as outlined in the documentation. The generated theme is then passed as a prop to the ```js ThemeProvider``` component, which applies the theme to the entire React component tree it wraps. For optimal results, ```js ThemeProvider``` should be placed at the root of your component hierarchy to ensure consistent theming across your application. For more information, refer to this section of this #link("https://mui.com/material-ui/customization/theming/#createtheme-options-args-theme")[documentation]. For the following example, developers can refer to this #link("https://github.com/SAIB-Inc/AegisWebsite/tree/main")[repository] as a project reference which is also implemented using Material UI (MUI), Gatsby, and React. 

#pagebreak()
\
Below is a code snippet which shows the implementation of theming:

\
```js
const theme = createTheme({ 
  palette: { 
    primary: { 
      main: red[500], 
    }, 
  }, 
}); 

 

function App() { 
  return <ThemeProvider theme={theme}>...</ThemeProvider>; 
} 
```

\
As a sidenote, when using Tailwind CSS with Material UI, developers can leverage the breakpoints property provided by Material UI's theme. This is particularly useful because the breakpoints in Material UI differ from those in Tailwind CSS. Maintaining consistency is important, but adapting to one set of breakpoints over the other is not mandatory as it ultimately comes down to personal preference or company standards. 

\
#table(
  columns: (1fr, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [MUI Breakpoints])],
    [#text(weight: "bold", [TailwindCSS Breakpoints])],
  ),
  [
    #table(
      columns: (30pt, 80pt, 1fr),
      stroke: none,
    [#text(weight: "bold",[xs])],[#text(weight: "bold",[extra-small])],[0px],
    [#text(weight: "bold",[sm])],[#text(weight: "bold",[small])],[600px],
    [#text(weight: "bold",[md])],[#text(weight: "bold",[medium])],[900px],
    [#text(weight: "bold",[lg])],[#text(weight: "bold",[large])],[1200px],
    [#text(weight: "bold",[xl])],[#text(weight: "bold",[extra-large])],[1536px],
    )
  ],[
    #table(
      columns: (30pt, 80pt, 1fr),
      stroke: none,
    [#text(weight: "bold",[sm])],[#text(weight: "bold",[small])],[640px],
    [#text(weight: "bold",[md])],[#text(weight: "bold",[medium])],[768px],
    [#text(weight: "bold",[lg])],[#text(weight: "bold",[large])],[1024px],
    [#text(weight: "bold",[xl])],[#text(weight: "bold",[extra-large])],[1280px],
    [#text(weight: "bold",[2xl])],[],[1536px],
    )
  ]
)

#pagebreak()
\
Here is how I was able to change the breakpoints using the ```js createTheme``` function: 

\
```js
breakpoints: { 
  values: { 
    xs: 0, 
    sm: 640, 
    md: 768, 
    lg: 1024, 
    xl: 1280, 
  }, 
}, 
```

\
== MUI Building Custom Palettes
One common limitation in MUI is the restricted number of predefined palettes available for creating themes. By default, MUI provides only a limited set of palettes such as #text(weight: "bold",[primary, secondary, error, info, success, and warning]). This can pose challenges in scenarios where additional or more descriptive color palettes are required to convey meaning effectively. 

\
For instance, in a design like the tokenomics section shown below, there are five distinct colors. However, with MUI's default configuration, each palette allows defining only three-color variants (e.g., main, light, and dark). This restriction can make it difficult to fully customize or extend themes for projects that require more nuanced or varied color schemes. 

\
#figure(
  image("images/saibTokenomicsFigure.png", height: auto),
    caption: [
      Search interface of open graph website
    ],
  )

\
The tokenomics component is from MUI which can be found in this #link("https://mui.com/x/react-charts/pie/")[section] of the documentation. 

\
For typescript, here is a way to create custom palettes: 
1. #text(weight: "bold",[Module Declaration:]) Based on the code below, this extends the existing Palette interface from ```js @mui/material/styles``` to include a new property called tokenomics. The module declaration ensures that TypeScript recognizes tokenomics as part of the Palette interface, preventing type errors. The tokenomics property contains six custom colors (darkgray, darkblue, navyblue, lightblue, yellow, purple), each represented as a string.```js 
declare module "@mui/material/styles" { 
    interface Palette { 
        tokenomics: { 
            darkgray: string; 
            darkblue: string; 
            navyblue: string; 
            lightblue: string; 
            yellow: string; 
            purple: string; 
        }; 
    } 
} 
```

\
2. #text(weight: "bold",[Optional Palette Options:]) The #text(weight: "bold",[PaletteOptions]) interface is similarly extended to include an optional tokenomics property. This is necessary because createTheme uses #text(weight: "bold",[PaletteOptions]) for theme configuration, so adding tokenomics ensures compatibility when defining a custom theme.

#pagebreak()
\
```js
  interface PaletteOptions { 
    tokenomics?: { 
      darkgray?: string; 
      darkblue?: string; 
      navyblue?: string; 
      lightblue?: string; 
      yellow?: string; 
      purple?: string; 
    }; 
  } 
```

\
3. #text(weight: "bold",[Creating the Theme:]) A new theme is created using #text(weight: "bold",[createTheme]), with the custom tokenomics color palette defined under the palette key. The colors are specified as hexadecimal values, representing the required custom shades. ```js
const theme = createTheme ({  
  palette: {  
    tokenomics: { 
      darkgray: "#F3F3F3", 
      darkblue: "#0F3CAE", 
      navyblue: "#517FF3", 
      lightblue: "#A5D0E8", 
      yellow: "#E9DC94", 
      purple: "#9747FF", 
     }, 
   },  
}); 
```

\
== MUI Light and Dark Mode 
This functionality is available in Material UI and allows websites to implement a toggle for switching between two modes: light mode and dark mode. It is a common feature that enhances user experience by adapting the interface to user preferences or environmental conditions. More details can be found in the relevant section of the #link("https://mui.com/material-ui/customization/css-theme-variables/usage/#light-and-dark-modes")[documentation]. The image below illustrates a comparison between light and dark modes as implemented on a website. 

\
#table(
  columns: (1fr, 1fr),
  stroke: none,
  [
  #figure(
  image("images/saibLightMode.png", height: 180pt),
    caption: [
      Aegis website light mode
    ],
  )
  ],[
  #figure(
  image("images/saibDarkMode.png", height: 180pt),
    caption: [
      Aegis website dark mode
    ],
  )
  ],
)

\
To achieve this, we use the #text(weight: "bold",[colorSchemes]) property to define multiple color schemes for a theme, such as light and dark modes. Within each scheme, we specify the palette and associate it with the corresponding colors for that theme. Here's an example: 
```js
const theme = createTheme({ 
  colorSchemes: 
  { 
    light: 
    { 
      palette: 
      { 
        background: { default: "#FFFFFF" }, 
      } 
    } 
    dark: 
    { 
      palette: 
      { 
        background: { default: "#000F33" }, 
      } 
    } 
  } 
```

#pagebreak()
To enable dark and light mode in React, we first import the #text(weight: "bold",[useColorSchemes]) hook from Material UI in another file: 
```js
import { useColorScheme } from "@mui/material"; 
```

\
Using the #text(weight: "bold",[useColorSchemes]) hook, we can access the current mode (light or dark) and update it as needed. This can also be referenced in this part of the #link("https://mui.com/system/experimental-api/css-theme-variables/#usecolorscheme-colorschemecontextvalue")[documentation]. 
```js
const { mode, setMode } = useColorScheme(); 
```

\
Next, we create a function for toggling between light and dark modes: 
```js
const darkMode = () => { 
  setMode(mode === "dark" ? "light" : "dark"); 
}; 
```

\
Finally, we implement a button that toggles the mode. The button updates the theme based on the current mode and displays an appropriate icon: 
```html
<div onClick={darkMode}> 
  <img 
    src=
    { 
      mode === "dark" 
        ? firstSectionImages.moonIcon.publicURL 
        : firstSectionImages.sunIcon.publicURL 
    } 
  /> 
</div> 
```

\
And now based on this code, the icon of the button changes depending on its mode which can be reflected here: 

\
#table(
  columns: (1fr, 1fr),
  stroke: none,
  [
  #figure(
  image("images/saibLightModeIcon.png", height: 50pt),
    caption: [
      Aegis website light mode icon
    ],
  )
  ],[
  #figure(
  image("images/saibDarkModeIcon.png", height: 50pt),
    caption: [
      Aegis website dark mode icon
    ],
  )
  ],
)

\
== MUI Editing with SX Props 
The sx prop is a special feature in MUI that allows you to apply styles using standard CSS attributes combined with MUI's theme-aware styling solution. It leverages the MUI System to provide a powerful and flexible way to style components. Below is an example demonstrating how the sx prop can be used to access colors defined in the theme: 
```html
<Box
  component="section" 
  sx={{ 
    backgroundColor: theme.palette.primary.main, 
  }} 
/> 
```

\
The SX prop also supports pseudo-classes and nested selectors, such as ```css &:hover``` enabling powerful and intuitive styling for dynamic and interactive states. Below is also a code example of how this can be applied in MUI: 
```html
<Box 
  component="section" 
  sx={{ 
    backgroundColor: theme.palette.primary.main, 
    '&:hover': {  
      backgroundColor: theme.palette.secondary.main, 
    }, 
  }} 
/>  
```

\
== Relevant MUI Components 
This section discusses two key MUI components that were primarily used in the development of the Aegis website. 
- #text(weight: "bold",[Box Component:]) The Box component is highly versatile and allows developers to create layout components such as sections, articles, or divs with easy access to the theme. It provides a convenient wrapper that can be styled dynamically, making it ideal for building flexible and customizable layouts. 
#pagebreak()
- #text(weight: "bold",[Card Component:]) The Card component is used to display content in a structured, visually appealing format. It can be easily elevated to add shadows, creating a sense of interactivity and depth. This makes the Card component perfect for showcasing content like blog posts, product details, or any other information that benefits from a clean, modular presentation. Below shows an example of which uses a card component in the Aegis website. 

\
#figure(
  image("images/saibCardComponents.png", height: 200pt),
    caption: [
      Key benefits section that uses card components
    ],
  )

#pagebreak()

= TailwindCSS Guidelines

\
== Overview
Tailwind CSS is a utility-first CSS framework that enables rapid UI development by providing low-level utility classes. These classes are designed to be composable, making it easy to build complex and custom designs without writing traditional CSS. In this section of the documentation, the relevance of TailwindCSS implementation in this company will be outlined. More information will be outlined in the tailwind #link("https://tailwindcss.com/docs/installation")[documentation]. 

\
== Prerequisites
Before diving into TailwindCSS, developers are expected to have a foundational understanding of the following technologies: #text(weight: "bold",[HTML, CSS, Responsive Design, and Javascript]). 

\
== Version
The current version of TailwindCSS during the inception of this documentation is #text(weight: "bold",[v.4]), any information discussed in this documentation is subject to change. 

\
== Utility First Approach
Tailwind focuses on small, reusable utility classes such as ```css flex, p-4, text-center, and bg-blue-500```, rather than predefined components. Its inline format enhances maintainability across projects, as styles are defined directly within the element or component, making it more convenient and efficient to create and manage designs. Here is a code that demonstrates an implementation of tailwindcss as a reference: 
```html
<div class="flex flex-col items-center justify-center p-4 bg-blue-500 text-white rounded-lg shadow-lg max-w-sm mx-auto">  
  <h1 class="text-center text-2xl font-bold"> 
  Welcome to TailwindCSS 
  </h1> 
</div> 
```

#pagebreak()
== Arbitrary Values
Tailwind CSS supports arbitrary values, allowing you to specify custom values for properties that aren't predefined in the configuration. This feature provides fine-grained control over styles, enabling you to use any value (e.g., pixels, percentages, rems, etc.) directly within your utility classes without modifying the configuration file. Arbitrary values are typically defined using the syntax shown below:
```html  
<div data-current class="opacity-[75rem] />
```

\
However, in the latest version of TailwindCSS, dynamic values now support a new set of arbitrary values, replacing some predefined behaviors from older versions. Here's an example demonstrating the updated syntax:
```html 
<div data-current class="opacity-75 />
```

\
== Responsive Design

Every utility class in Tailwind can be applied conditionally at different breakpoints, making it convenient to create responsive interfaces directly in HTML instead of relying on separate CSS files. Below are the five default breakpoints in Tailwind CSS, designed with a mobile-first approach. Each breakpoint specifies the minimum screen width at which it becomes active: 

\
#table(
  columns: (100pt, 100pt, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Breakpoint \ Prefix])],
    [#text(weight: "bold", [Minimum Width])],
    [#text(weight: "bold", [CSS])],
  ),
  [#text(weight: "bold",[sm])],[#text(weight: "bold",[40rem(640px)])],[```css @media (min-width: 640px) { ... } ```],
  [#text(weight: "bold",[md])],[#text(weight: "bold",[48rem(768px)	])],[```css @media (min-width: 768px) { ... } ```],
  [#text(weight: "bold",[lg])],[#text(weight: "bold",[64rem(1024px)	])],[```css @media (min-width: 1024px) { ... } ```],
  [#text(weight: "bold",[xl])],[#text(weight: "bold",[80rem(1280px)	])],[```css @media (min-width: 1280px) { ... } ```],
  [#text(weight: "bold",[2xl])],[#text(weight: "bold",[96rem(1536px)	])],[```css @media (min-width: 1536px) { ... } ```],
)

\
By default, styles applied by rules like ```css md:flex``` will apply at that breakpoint and stay applied at larger breakpoints. Below is an example which shows how responsive design works in the context of tailwindcss.
#pagebreak()
```html
<div class="flex flex-col items-center justify-center p-4 bg-blue-500 text-white rounded-lg shadow-lg max-w-sm md:max-w-md lg:max-w-lg mx-auto"> 
  <h1 class="text-center text-xl md:text-2xl lg:text-3xl font-bold"> 
    Welcome to TailwindCSS 
  </h1> 
</div>	 
```

\
== Mobile First Implementation
In a mobile-first approach with Tailwind CSS, styling for mobile devices uses the unprefixed utility classes. The sm: prefix doesn't mean "for small screens" but rather "starting from the small breakpoint and up." This means mobile styles are the default, while breakpoint prefixes define styles for larger screen sizes.

\
#box(image(
  "images/wrong.svg",
  height: 10pt,
  width: 10pt,
)) Don't use sm: to target mobile devices:

```html <div class="sm:text-center"></div>```

\
#box(image(
  "images/correct.svg",
  height: 10pt,
  width: 10pt,
)) Use unprefixed utilities to target mobile, and override them at larger breakpoints

```html <div class="text-center sm:text-left"></div> ```

\
== New Gradient Updates
As discussed in #text(weight: "bold",[Section 3.10]) regarding the implementation of the Crashr button, TailwindCSS #text(weight: "bold",[v4]) introduces support for radial and conic gradients, expanding beyond the previously supported linear gradients. This update allows for greater flexibility and creativity when working with gradient-based designs, overcoming the limitations of earlier versions. For example, the following #link("https://codepen.io/h4wks123/pen/xbKbOGm")[codepen] implementation demonstrates the use of a conic gradient in CSS:
```css
.gradient-border-button {
  background: conic-gradient(transparent 25%, #40DCC8, #6073F6 99%, transparent);
}
```

\
Now in tailwindcss #text(weight: "bold",[v4]), this can now be implemented as:
```html  
<div class="bg-conic from-[#FFFFFF] via-[#40DCC8] to-[#6073F6]"></div>
```

#pagebreak()
\
Linear gradients also improved as they now support angles which allows them to abstract from the standard left-to-right and vice versa implementations. This is also represented based on the code snippet provided below:
```html
<div class="bg-linear-45 from-indigo-500 via-purple-500 to-pink-500"></div>
```

#pagebreak()
= Gatsby Guidelines

\
== Overview
#link("https://www.gatsbyjs.com/docs/")[Gatsby] is a powerful open-source static site generator (SSG) built on React. It enables developers to create fast, modern websites and web applications with ease. By leveraging React, GraphQL, and a rich plugin-based architecture, Gatsby allows for the development of high-performance, scalable, and SEO-friendly static websites. 

\
In this section of the documentation, I will explain the role of Gatsby in building the AEGIS website, which is hosted in this #link("https://github.com/SAIB-Inc/AegisWebsite/tree/main")[repository]. Specifically, I will discuss how Gatsby's unique features, such as its GraphQL data layer and plugin ecosystem, were utilized to streamline development and optimize performance. 

\
== Prerequisites
Before diving into Gatsby, developers are expected to have a foundational understanding of the following technologies: #text(weight: "bold", [HTML, CSS, JavaScript, TypeScript, React, Node.JS, and GraphQL]).  

\
== Version
The current version of Gatsby during the inception of this documentation is #text(weight: "bold", [v5]), any information discussed in this documentation is subject to change. 

\
== Video Reference
This #link("https://saibph-my.sharepoint.com/personal/ivanne_bayer_saib_dev/_layouts/15/stream.aspx?id=%2Fpersonal%2Fivanne%5Fbayer%5Fsaib%5Fdev%2FDocuments%2FSAIB%20Discussion%20%231%2Emp4&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2Eca5255b2%2D73ef%2D4ae0%2Db621%2Db0322dc1dcf6")[video reference], discussed by Clark (CEO), provides an in-depth exploration of the relationship between TCP, DNS, Server-Side Rendering (SSR), and Gatsby. It offers a detailed, low-level explanation of how these technologies interact, why they are used, and their impact on building modern web applications. Watching this video will give you a deeper appreciation of the underlying mechanisms that make Gatsby a powerful tool for developers. 

\
== Gatsby Reference
Gatsby’s configuration is primarily managed through the #text(weight: "bold",[gatsby-config.js]) file, which is in the root directory of a Gatsby project. This file acts as the central hub for defining a project's settings, plugins, and metadata. Below is an explanation which details its key components and structure in typescript:  

1. #text(weight: "bold", [siteMetadata:]) An object used to store metadata about the site, such as its title, description, author, and other custom fields. This metadata can be queried via GraphQL and used throughout the site. The code below is used as a reference on how site metadata is implemented using gatsby:```js
const config: GatsbyConfig = { 
  siteMetadata: { 
    title: `My Gatsby Site`, 
    siteUrl: `https://www.yourdomain.tld`, 
  }, 
} 
```

\
2. #text(weight: "bold", [plugins:]) An array which lists the plugins your Gatsby project uses. Plugins enhance the site’s functionality, such as sourcing data, optimizing images, or enabling SEO. Each plugin can be added as a string or as an object (custom settings). Each plugin can be added as a string or as an object (custom settings). ```js
const config: GatsbyConfig = { 
  plugins: [ 
    "gatsby-plugin-postcss", 
    "gatsby-plugin-image", 
    "gatsby-plugin-sharp", 
    "gatsby-transformer-sharp", 
    { 
      resolve: `gatsby-source-filesystem`, 
      options: { 
        name: `images`, 
        path: `${__dirname}/src/images/`, 
      }, 
    }, 
  ], 
} 
```

\
Developers can also add Google Fonts and favicons by configuring the plugins section in the gatsby-config.js file. This allows for custom configurations tailored to the project's requirements, as demonstrated in the example code below: 

```js
const config: GatsbyConfig = { 
  plugins: [ 
    { 
      resolve: "gatsby-plugin-google-fonts", 
      options: { 
        fonts: [ 
          "montserrat:100,200,300,400,500,600,700,800,900:latin,latin-		ext", 
        ], 
        display: "swap", 
      }, 
    }, 
    { 
      resolve: "gatsby-plugin-manifest", 
      options: { 
        icon: "src/images/icons/aegis-icon.svg", 
      }, 
    }, 
  ], 
} 
```

\
== Querying Data with GraphQL 
This section explains how data is queried in Gatsby from its data layer. The process involves several steps that work together seamlessly. 
- #text(weight: "bold",[Source Plugins:]) Data in Gatsby comes from multiple sources, including the filesystem, content management systems (CMS), private APIs, and databases. These are referred to as "source plugins." Each source plugin is designed to interact with a specific data source and bring that data into Gatsby's data layer. 
- #text(weight: "bold",[Data Layer:]) The data from various sources is integrated into a unified data layer. This layer serves as a central location for all of Gatsby’s data, regardless of where it originally came from. 
- #text(weight: "bold",[GraphQL Queries:]) To access this data, Gatsby uses GraphQL queries. Developers write these queries to extract specific data from the data layer. The queries are run during the build process, and the resulting data is then made available in the components that request it. 

\
Below is an illustration of how this process works under the hood: 

\
#figure(
  image("images/gatsbyDataLayer.png", height: auto),
    caption: [
      GraphQL data layer abstraction
    ],
  )

== Exploring the Data Layer 
To check if the data from source plugins is available in Gatsby's GraphQL data layer, developers can use #link("https://www.gatsbyjs.com/docs/how-to/querying-data/running-queries-with-graphiql/")[GraphiQL], an interactive tool that helps structure and test GraphQL queries. GraphiQL provides an interface where developers can experiment with queries, ensuring they are correctly formatted and return the expected data. This is a great way to validate your queries before integrating them into the actual code, ensuring smooth data retrieval and integration. 

\
For example, you can use GraphiQL to query file data, like images or assets, stored in Gatsby’s data layer. The following GraphQL query retrieves URLs for various image files from the data layer: 

\
#figure(
  image("images/gatsbyGraphQLFetching.png", height: auto),
    caption: [
      Fetching data in Gatsby through graphiQL
    ],
  )

\
== Fetching Data with Gatsby's useStaticQuery Hook 
#text(weight: "bold",[useStaticQuery]) is a React hook provided by Gatsby that enables developers to execute GraphQL queries at build time and retrieve data from Gatsby’s data layer. This hook is primarily used in components to fetch static data, such as images, markdown content, and other files, that are available when the site is built. By using #text(weight: "bold",[useStaticQuery]), Gatsby can pre-fetch and optimize the data during the build process, making it immediately available on the frontend without the need for additional requests or runtime fetching. Below is an example of how it can be used to fetch an image file: ```js
const fourthSectionImages = useStaticQuery(graphql` 
  query { 
   aegisCheckMark: file(relativePath: {eq: "icons/aegis-check-mark.png"}) 
    { 
        publicURL 
    } 
  } 
`)
```

#pagebreak()
In this example, the #text(weight: "bold",[useStaticQuery]) hook executes a GraphQL query to search for the aegis checkmark image with its relative path. The query retrieves the #text(weight: "bold",[publicURL]) of the file, which provides the image URL for use within the component. This allows developers to easily reference static files, such as images, without needing to manage complex data fetching at runtime. 

\
== Gatsby Image Plugin 
This section explains the configurations necessary for integrating images into the Gatsby image pipeline, which is fed through the GraphQL data layer. The Gatsby Image plugin provides two key components for displaying responsive images on your site: 

\
- StaticImage
  - #text(weight: "bold",[Description:]) This is used when the image is static, meaning it doesn't change each time the component is used. This is ideal for images that remain the same across all instances of the component. 
  - #text(weight: "bold",[Examples:]) Site logo, hero image on the homepage, and icons or other static branding elements 
- GatsbyImage 
  - #text(weight: "bold",[Description:]) This is used for images that are dynamic and passed into the component as props. This component allows for images to change based on data, making it suitable for content-driven websites where images are frequently updated or vary per page. 
  - #text(weight: "bold",[Examples:])  Blog post hero images, author avatars, and product images in an e-commerce site 

#pagebreak()
= Blazor Guidelines

\
== Overview
Blazor is a .NET front-end web framework that enables both server-side rendering and client-side interactivity within a unified programming model. It is component-based, with components typically written as Razor markup pages using the #text(weight: "bold",[.razor]) file extension. 

\
In this section, I will discuss the relevance of Blazor in the context of our company's projects and share key techniques and best practices I have learned through my experiences. There also exists a website iteration which uses the blazor framework and it can be found on this #link("https://github.com/KeeeeEf/Aegis-Blazor")[repository].

\
== Prerequisites
Before diving into Blazor, developers are expected to have a foundational understanding of the following technologies: #text(weight: "bold",[HTML, CSS, C```cs#``` and .NET]).

\
== Version
At the time of writing this documentation, the latest version of Blazor is part of ASP.NET Core in .NET 9.0. Please note that the information provided here is subject to change as newer versions of Blazor and .NET are being released. Developers are encouraged to stay updated with the official Microsoft #link("https://learn.microsoft.com/en-us/aspnet/core/blazor/?view=aspnetcore-9.0")[documentation] for the most accurate and current information. 

\
== Blazor Web Assembly vs. Server 
For starters, it is essential to understand the difference between Blazor WebAssembly and Blazor Server. Both provide a component-based architecture for building web applications, but they differ significantly in how they render and handle interactions. Below is a comparison: 

- #text(weight: "bold",[Blazor WebAssembly:]) Blazor WebAssembly allows for fully client-side applications, where the application is downloaded to the user's browser and runs directly on WebAssembly. This approach eliminates the need for a continuous server connection, making it suitable for scenarios where offline functionality or low-latency performance is required. The initial load time can be higher since the entire application is downloaded, but once loaded, it provides a seamless and responsive user experience. 

#pagebreak()
- #text(weight: "bold",[Blazor Server:]) Blazor Server, on the other hand, relies on server-side rendering where the UI interactions are handled on the server over a real-time SignalR connection. This model enables interactive server-side rendering (interactive SSR), allowing a rich user experience similar to a client-side app without the need for extensive API development. The server prerenders the page content, sending the HTML UI to the client as quickly as possible. Event handlers for UI controls are processed on the server, ensuring a responsive feel for users while maintaining centralized server control over the application logic. However, this approach requires a consistent server connection to function properly.

\
== Components and Razor Syntax 
Blazor applications are built using Razor components, which are commonly referred to as simply "components." A component represents a reusable UI element, such as a page, dialog, or data entry form. These components are .NET C```cs #``` classes compiled into .NET assemblies, making them powerful and flexible building blocks for your application. 

\
Razor syntax is typically used to write these components, combining HTML markup with C```cs#``` code for seamless client-side UI logic and composition. Razor files, identified by the #text(weight: "bold",[.razor]) file extension, enable developers to design dynamic and interactive web applications with ease. Below is an example of a simple Razor component: 

```html
@page "/welcome" 
<PageTitle>Welcome!</PageTitle> 
<h1>Welcome to Blazor!</h1> 
<p>@welcomeMessage</p> 
```
```cs
@code { 
    private string welcomeMessage = "We ❤️ Blazor!"; 
} 
```

\
At the top of the Razor file, directives like ```cs@page``` define the behavior and structure of the component. For example, ```cs@page "/welcome"``` specifies the route for the component. 

\
The Razor file includes standard HTML markup to define how the UI is rendered. For instance, elements like ```html <h1> and <p>``` render text and other content on the page. 

#pagebreak()
The ```cs@code``` block contains the C```cs#``` code defining the logic for the component. This can include variables, methods, event handlers, and parameters. The ```cs @code``` block can be separated into a ```css .cs``` file for better organization, provided it shares the same namespace as its corresponding ```cs .razor``` file. 

\
To maintain a clean and organized project structure, it is recommended to separate Razor files and their associated logic files as follows: 
\
  #box(image(
    "images/folderIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - MainLayout
\
  #box(height: 12pt, width: 12pt)
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - MainLayout.razor
\
  #box(height: 12pt, width: 12pt)
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - MainLayout.razor.cs

\
== Entry Point
The entry point for a Blazor application, whether it’s a #text(weight: "bold",[Blazor Server]) or #text(weight: "bold",[WebAssembly]) app, is defined in the #text(weight: "bold",[Program.cs]) file, similar to how it is in a Console application. When the application starts, the system creates and runs a web host instance, using default configurations specific to web applications. The web host is responsible for managing the lifecycle of the Blazor app and setting up essential host-level services. These services include configuration, logging, dependency injection, and the HTTP server. 

\
While this setup is typically boilerplate and often left unchanged, it forms the foundation of how the Blazor application is run. It is important to note that the #text(weight: "bold",[Program.cs]) file structure and entry point setup are relevant for both #text(weight: "bold",[Blazor Server]) and #text(weight: "bold",[Blazor WebAssembly]) applications, though some specifics, such as the hosting model, may differ. In short, while the entry point concept is common for both, the implementation details and hosting models differ depending on the app type.

\
== Dependency Injection
In this section, we will discuss Dependency Injection (DI) in Blazor, particularly in relation to theming with MudBlazor. DI is a design pattern that allows a class to receive its dependencies from an external source, promoting loose coupling and making the application more modular, maintainable, and testable.

#pagebreak()
In Blazor, DI is commonly used to inject services, configurations, and other dependencies into components. Instead of managing dependencies internally, components request them from the DI container, centralizing their creation and enhancing the testability of the application. DI helps manage shared services, such as MudBlazor's theme providers, and other configurations, like user authentication or application settings, across the application without needing to pass them through each component manually. 

\
Here’s an example of how DI is configured in a Blazor application inside the #text(weight: "bold",[Program.cs]) file using MudBlazor and custom services like ThemeService: 
- #text(weight: "bold",[```cs builder.Services.AddRazorComponents().AddInteractiveServerComponents():```]) adds interactive server components for Blazor. 
- #text(weight: "bold",[```cs builder.Services.AddMudServices():```]) adds MudBlazor services, such as the ThemeProvider. 
- #text(weight: "bold",[```cs builder.Services.AddControllers():```]) adds MVC controller services. 
- #text(weight: "bold",[```cs builder.Services.AddSingleton<ThemeService>():```]) registers ThemeService as a singleton service 

\
Below are the types of dependency injection: 
- Singleton 
  - #text(weight: "bold",[Description:]) A single instance of the service is created and shared across the entire application. It is useful for managing global state or services that don’t need to change.
  - #text(weight: "bold",[Examples:])  For theming, you would typically register a service like #text(weight: "bold",[ThemeService]) as a singleton to ensure the theme settings are consistent across the application.
    ```cs builder.Services.AddSingleton<IThemeService, ThemeService>	(); ```
- Transient 
  - #text(weight: "bold",[Description:]) A new instance of the service is created every time it is requested. It is suitable for lightweight, stateless services.
  - #text(weight: "bold",[Examples:])  If you have a service that calculates data on each request, register it as transient to ensure that each request gets a fresh instance.
    
    ```cs builder.Services.AddTransient<ICalculationService, CalculationService>(); ```
#pagebreak()
- Scoped  
  - #text(weight: "bold",[Description:]) A service is created once per request or per scope, which in Blazor refers to the lifecycle of a component or a user interaction. It is useful for maintaining state within a single session.
  - #text(weight: "bold",[Examples:])  If you need a service to maintain state during a component's lifecycle (e.g., a user session), register it as scoped.
    ```cs builder.Services.AddScoped<IUserSessionService, UserSessionService>(); ```

\
In addition to injecting services, dependency injection (DI) can also be used to pass variables between components, whether from parent to child or vice versa. This is particularly useful for scenarios like implementing theming, where the theme settings (like dark or light mode) can be managed in a centralized service and shared across different components. Below is an example structure that illustrates how DI can be used to manage theming in a Blazor application. 
\
  #box(image(
    "images/folderIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - Components
\
  #box(width: 12pt)
  #box(image(
    "images/folderIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - MainLayout
\
  #box(width: 24pt)
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - MainLayout.razor
\
  #box(width: 24pt)
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - MainLayout.razor.cs
\
  #box(width: 12pt)
  #box(image(
    "images/folderIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - Settings
\
  #box(width: 24pt)
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - Settings.razor
\
  #box(width: 24pt)
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - Settings.razor.cs
\
  #box(image(
    "images/folderIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - Services
\
  #box(width: 12pt)
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - ThemeService.cs
\
  #box(image(
    "images/fileIcon.svg",
    height: 12pt,
    width: 12pt,
  )) - Program.cs

\
First, we define the #text(weight: "bold",[ThemeService]) class, which will manage the theme state (whether the app is in dark mode or not). This service will be placed in the #text(weight: "bold",[ThemeService.cs]) file under the services folder. 

#pagebreak()
```cs
namespace Aegis.Web.Services; 
public class ThemeService 
{ 
  public bool IsDarkMode { get; set; } = true; 
} 
```

\
Next, in #text(weight: "bold",[Program.cs]), we need to register ThemeService as a singleton because the theme's palette values are static and should be shared across the app. A singleton ensures that there is only one instance of ThemeService throughout the app. 

```cs
using Aegis.Web.Services; 
var builder = WebApplication.CreateBuilder(args); 
builder.Services.AddSingleton<ThemeService>(); 
var app = builder.Build(); 
```

\
In the #text(weight: "bold",[Settings.razor]) file, we add a button that will toggle the theme. This button will trigger the #text(weight: "bold",[ChangeTheme]) method when clicked. 

```html
<MudButton @onclick="ChangeTheme">Toggle Theme</MudButton> 
```

\
In the #text(weight: "bold",[Settings.razor.cs]) file, we implement the #text(weight: "bold",[ChangeTheme]) method. This method will change the theme by toggling the IsDarkMode property of #text(weight: "bold",[ThemeService]). 
```cs
public class ChangeTheme 
{ 
    ThemeService.IsDarkMode = !ThemeService.IsDarkMode; 
} 
```

\
In #text(weight: "bold",[MainLayout.razor]), we add the #text(weight: "bold",[MudThemeProvider]) component. The #text(weight: "bold",[MudThemeProvider]) allows the theme to be dynamically updated based on the IsDarkMode property from the ThemeService. The theme is injected into the layout, and it automatically reflects the changes when toggled.

#par(justify: false,[
  ```html
@inject ThemeService ThemeService 
<MudThemeProvider @bind-IsDarkMode="@ThemeService.IsDarkMode" Theme="CustomTheme"> 
    <!-- Other layout components go here --> 
</MudThemeProvider> 
```
])

\
By using dependency injection, the theme state becomes more manageable and can be shared across different components without the need for complex state passing or dependency management. 

#pagebreak()
\
= Mud Blazor Guidelines

\
== Overview
MudBlazor is a Blazor component library based on Material Design principles. It is designed to be simple, lightweight, and easy to extend, making it an excellent choice for .NET developers. Unlike many other front-end libraries, MudBlazor relies on minimal JavaScript, aligning well with the Blazor framework's .NET-centric approach. 

\
In .NET applications, MudBlazor is the recommended framework for front-end development within this organization. This section will cover the steps for implementing MudBlazor and its associated best practices. 

\
== Prerequisites
Before diving into MudBlazor, developers are expected to have a foundational understanding of the following technologies: #text(weight: "bold",[HTML, CSS, C```cs#```, .NET, and Blazor]). 

\
== Version
At the time of writing this documentation, the latest version of MudBlazor was #text(weight: "bold",[v8]). Note that the information provided here may become outdated as newer versions are released. Developers are encouraged to refer to the official MudBlazor #link("https://mudblazor.com/")[documentation] for the latest updates and detailed information. 

\
== Relevance of Theming in MudBlazor 
The importance of implementing themes on a website has been explained in the MUI section. However, there are notable differences in how theming is implemented in MudBlazor compared to MUI. In the following sections, I will discuss how theming can be applied in MudBlazor, including support for both light and dark modes. 

\
== Default Themes and Palettes
MudBlazor provides default themes with predefined color schemes for most components. However, a key difference between MUI and MudBlazor lies in the flexibility of naming palettes.

\
- #text(weight: "bold",[MUI:]) Developers can create custom palette names and define their own color schemes, providing extensive flexibility. 
- #text(weight: "bold",[MudBlazor:]) MudBlazor currently limits developers to a set of 66 predefined palette names. While you can customize these palettes by changing the colors or adding gradients, this can sometimes lead to semantic confusion, as the names cannot be altered. 

\
Despite this limitation, MudBlazor's predefined palettes remain useful, as most websites adhere to a specific color scheme. Using these palettes ensures a cleaner implementation and aligns with Material Design principles. Below is an example which shows the different palettes available in MudBlazor: 

\
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  table.header(
    [#text(weight: "bold", [Name])],
    [#text(weight: "bold", [Type])],
    [#text(weight: "bold", [Default Light])],
    [#text(weight: "bold", [Default Dark])],
    [#text(weight: "bold", [CSS Variable])],
  ),
  [Black],[MudColor],[rgba(39,44,52,1)],[rgba(39,39,47,1)],[--mud-palette-black],
  [Primary],[MudColor],[rgba(89,74,226,1)],[rgba(119,107,231,1)],[--mud-palette-primary],
  [SecondaryDarken],[String],[rgb(255,31,105)],[],[--mud-palette-secondary-darken],
  [SecondaryLighten],[String],[rgb(255,102,15,3)],[],[--mud-palette-lighten],
  [HoverOpacity],[Double],[0.06],[],[--mud-palette-hover-opacity],
)

\
Once the palette has been implemented, the standard way to apply its colors is at the component level. This is achieved by using the #text(weight: "bold",[Color]) property provided by MudBlazor components which is demonstrated based on the code snippet below: 
```html
<MudButton Color="Color.Primary">Primary Button</MudButton> 
```

\
One efficient way to apply its colors to elements is demonstrated using TailwindCSS interoperability. This approach highlights one of MudBlazor's strengths compared to MUI. 
- #text(weight: "bold",[MUI:]) Developers must use MUI-specific components to access and apply the color palette. 
- #text(weight: "bold",[MudBlazor:]) Colors from the palette can be directly used within standard HTML tags by referencing the associated CSS variables.

\
This flexibility allows developers to seamlessly combine MudBlazor with other frameworks like TailwindCSS. Below is an example where a CSS variable from the MudBlazor palette is used to set the background color of an HTML element: 
```html
<div class="relative h-auto xl:h-screen 2xl:h-auto bg-[var(--mud-palette-primary)]"> 
```

\
== MudBlazor Theme Customization 
This section covers how to implement theming in the Blazor framework using MudBlazor. The #text(weight: "bold",[ThemeProvider]) in MudBlazor is responsible for defining all aspects of the application’s theme, including colors, shapes, sizes, and shadows. This section also explains the implementation of light and dark modes. More details can be found throughout this #link("https://mudblazor.com/customization/overview#theme-provider")[documentation].

\
To maintain clean and organized code, it is recommended to separate the Blazor files into two distinct parts: 
- #text(weight: "bold",[MainLayout.razor:]) Contains the Razor markup and HTML components for the layout. 
- #text(weight: "bold",[MainLayout.razor.cs:]) Contains the logic for managing the theme and palette. 

\
In the #text(weight: "bold",[MainLayout.razor.cs:]) file, we initialize the MudBlazor components by importing the necessary namespace: 

```cs using MudBlazor; ```

\
Next, we define the theme by creating a new #text(weight: "bold",[MudTheme]) object. To support both light and dark modes, we define two separate palettes: #text(weight: "bold",[PaletteLight]) and #text(weight: "bold",[PaletteDark]). Additionally, typography settings can be included to define custom fonts for the application. 

#pagebreak()
```cs 
public MudTheme CustomTheme = new() 
  { 
     PaletteLight = new PaletteLight() 
  { 
     Background = "#FFFFFF", 
     Primary = "#0B286D",       
  }, 
PaletteDark = new PaletteDark() 
  { 
     Background = "#000F33", 
     Primary = "#0B1A3D", 
  }, 
}; 
```

\
To manage the current theme mode (light or dark), declare a bool variable: 
```cs
public bool IsDarkMode = false; 
```

\
We also create a method for switching the state of the Boolean which is also interpreted as: 
```cs
public void ThemeSwitcher() 
{ 
   IsDarkMode = !IsDarkMode; 
} 
```

\
In the #text(weight: "bold",[MainLayout.razor]) file, we use the MudThemeProvider component to apply the theme. Ensure the MudThemeProvider is placed at the top level, so all child components inherit the theme. 
```html
<MudThemeProvider @bind-IsDarkMode="@IsDarkMode" Theme="CustomTheme" /> 
```

\
To allow users to toggle between light and dark modes, we add a button that invokes the #text(weight: "bold",[ThemeSwitcher]) method. This button can be placed in any component while accessing the theme switcher method using dependency injection which was discussed in the Blazor documentation. 

```html
<MudButton @onclick="ThemeSwitcher" /> 
```
# Future layout for digital musical catalogue

This layout contains the main sections of the page, and can serve as basis for templates for digital musical catalogues.

## Header

With three sections: left (for logos of institutions), central (for title and subtitle), and right (for various form controls: login, language selector, etc.).

## Side navigation section

Developed as a web component based on Lit Element, with the following characteristics:

* the layout has to be responsive for mobile and desktop;

* can be collapsed to the left side;

* the navigation items are organised on three levels, like it is in [https://learn.getgrav.org/17](https://learn.getgrav.org/17)

* the items on the first level will be displayed only one at a time, like in the resource mentioned above.


## Main section

??

## Footer

??


# Proposed technologies for the new layout

* The components has to be designed as web components, as they are standardised, reusable and encapsulates the functionality (see ??).

* The components has to be developed by using [Lit Element library](https://lit.dev/).

* For each web component, one has to define the following: ```slots```, ```properties```, ```events```, ```methods```, and ```CSS parts``` (see [Shoelace](https://shoelace.style) as an example).

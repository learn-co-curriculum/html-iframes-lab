# HTML Iframe Lab

## Problem Statement

The `iframe` element displays an entire HTML file inside itself, allowing one
HTML page to be contained within another. Before JavaScript became widely used,
_anytime_ a website user clicked on a link, the entire page would refresh. To
provide a better user experience, the `iframe` tag used to reload specific parts
of a page without changing others. For example, when a navigation link was
clicked, from the user's perspective, the navigation would remain the same, and
only the iframe portion of a page would reload.

With JavaScript, portions of an HTML page can be added and removed
programmatically without needing a refresh. This replaced the need for iframes
in many websites.

Still, there are some specific uses where iframes can be very valuable. One
example: embedded maps.   Embedded maps are a simple option for websites that
need a custom map, and are frequently used in contact pages for businesses. In
this case, an `iframe` can be used to contain an entire, interactive, map page
and place it within our own websites, without the need for writing our own
JavaScript.

In this lab, we will practice what we've learned about HTML iframes by creating
an embedded similar to those we see on business websites.

## Objectives

1. Create an embedded Google map from scratch
2. Better understand what we've learned about HTML iframes and their attributes

## Setting Up the Map

Before we can get to writing HTML, we need to get a map to embed within an
iframe.

In your browser, head to
[https://www.google.com/maps](https://www.google.com/maps) and search for a
general location. For instance, `11 Broadway, Manhattan, NY`.

Now, click the menu icon located at the top left of the screen and select
**Share or embed map**. Then click the **Embed map** tab.

Google provides the entire iframe tag, but we will add some additional
attributes manually. Highlight the iframe embed code and copy it to your
clipboard. In `index.html` paste the code snippet.

## Deliverables

We've already got a basic `iframe`, but to pass all the tests, we'll need to add
the following attributes:

* Add a `width` attribute set to "100%"
* Add a `height` attribute set to "400px"
* Change the `frameborder` attribute to "1"

Run `learn` to test your work and `learn submit` once you've passed all the
tests.

## Conclusion

The `iframe` element that allows us to load another HTML page, such as this
simple google map page, inside our own HTML page. It is like
looking through a window from our page into another page displaying a Google
Map.

While iframes have been replaced in many places with JavaScript, they still
prove valuable in specific cases.

<p class='util--hide'>View <a href='https://learn.co/lessons/html-map-contact-form-code-along'>HTML Map Contact Form Code-along</a> on Learn.co and start learning to code for free.</p>

# HTML Contact Form Lab

## Problem Statement

Business and company websites of all types and sizes typically want to provide
multiple ways for their customers or potential customers to contact them.  One
of the most common ways to do this is to provide a _contact form_.

In this lab, we will practice what we've learned about HTML forms by creating a
contact form similar to those we see on business websites.

## Objectives

1. Apply our understanding of HTML forms by building a functional a contact form

## Deliverables

To see and test your form in action, run `httpserver` or open `index.html` in a
new browser tab. To test your work, run `learn`.

Some basic HTML has been provided for this lab, along with HTML comments on what
is needed.  Follow the provided comments and test messages to see what is needed
when creating the form.  At completion, your form should have:

* A _required_ text input for a full name with a placeholder, "Enter Name"
* A _required_ email type input for an email address with a placeholder, "Enter Email"
* A _tel_ type input for a telephone number with a placeholder, "Enter Telephone (optional)"
* A text area for a user to include a message with a placeholder, "Enter Message"
* Labels for each text input
* A checkbox with text of your choosing
* A submit button

### The `required` Attribute

The `required` attribute will prevent the browser from submitting the form until
all required inputs are filled in properly. This is functionality is baked into
HTML5 for us automatically, all that is needed is to include the word 'required'
as an attribute, without setting it to any value.

When an input is required, the `type` attribute (e.g., `text` vs `email`) will
determine what the browser checks, so in the case of an email, the input must
match the format of an email address, including the "@".

## Conclusion

Forms are an essential way for users to submit data to a website. Some forms,
like search bars, only contain a single input field, but we can make them as
complex as we need.

We will only be focused on building out the front end side of this form - it is
typically up to the _backend_ of a website to decide how to handle and store
form data when submitted, which is not within the scope of this lesson.

<p class='util--hide'>View <a href='https://learn.co/lessons/html-map-contact-form-code-along'>HTML Map Contact Form Code-along</a> on Learn.co and start learning to code for free.</p>

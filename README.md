# HTML Contact Form Lab

## Problem Statement

Business and company websites of all types and sizes typically want to provide
multiple ways for their customers or potential customers to contact them.  One
of the most common ways to do this is to provide a _contact form_.

In this lab, we will practice using HTML forms by creating a contact form. We
will only be focused on building out the front end side of the form - it is
typically up to the _backend_ of a website to decide how to handle and store
form data when submitted, which is not within the scope of this lesson.

## Objectives

1. Apply our understanding of HTML forms by building a functional a contact form

## Deliverables

To see and test your form in action, run `httpserver` or open `index.html` in a
new browser tab. To test your work, run `learn`.

Some basic HTML has been provided for this lab, along with HTML comments on what
is needed.  Follow the provided comments and test errors to see what is required
when creating the form.  At completion, your form should have:

* A _required_ text input for a full name with a placeholder, "Enter Name"
* A _required_ email type input for an email address with a placeholder, "Enter Email"
* A _tel_ type input for a telephone number with a placeholder, "Enter Telephone (optional)"
* A text area for a user to include a message with a placeholder, "Enter Message"
* Labels for each text input
* A checkbox with text of your choosing
* A submit button


### Form

Next let's add a contact form. Under our `<!-- Contact Form -->` comment let's
start by creating a `<form>` element. This will wrap all of our form inputs.

```html
<!-- Contact Form -->
<form>...</form>
```

We need to give our opening form element two attributes. The first is an action
which is the location that our form will submit its input information to. In
our case we will be submitting to a PHP script that will send an email later
on. For now, we will insert a `#` pound sign as a placeholder. Second, we will
include the method attribute. This tells the browser the type of request we are
making to the location we are submitting in the action. Here we will set the
value as `post`.

```html
<!-- Contact Form -->
<form action="#" method="post">
  ...
</form>
```

Next, we would like to create inputs for the user to insert their name, email,
phone, and a message. We will start by adding a label and input for `fullname`
like so,

```html
<!-- Contact Form -->
<form action="#" method="post">
  <label for="fullname">Name</label>
  <input type="text" id="fullname" name="fullname" placeholder="your name" required>
</form>
```

On line 3 we use a `<label>` element to create a text label associated with the
form input. By using the `for` attribute set on the label to match the value of
the `id` attribute in the input this ties the label to the input so that if a
user clicks on the text of the label "Name" it will select the input next to
it. You can test this on the example below:

<label for="fullname">Name</label> <input type="text" id="fullname" name="fullname" placeholder="your name" style="border:1px solid black;padding:5px;">

The required attribute on line 4 helps us alert the user when they try to
submit the form without filling out their name.

Let's fill in the rest of our inputs.

```html
<!-- Contact Form -->
<form action="#" method="post">
  <label for="fullname">Name</label>
  <input type="text" id="fullname" name="fullname" placeholder="your name" required>
  <label for="email">Email</label>
  <input type="email" id="email" name="email" placeholder="your email" required>
  <label for="phone">Phone</label>
  <input type="tel" id="phone" name="phone" placeholder="your phone (optional)">
  <label for="message">Message</label>
  <textarea id="message" name="message" rows="10"></textarea>
  <input type="submit" value="send">
</form>
```

The `type` attribute (e.g., `text` vs `email`) will be recognized by the
browser so that when type email is required, the form will validate that the
input matches the format of an email address, including the "@". This is a
feature brought to us as part of HTML version 5. Additionally, the type `tel`
will bring up the numeric pad on mobile devices, whereas the type `text` will
bring up the alphabet keypad. Support varies from device to device, though.

Again, the `for` attribute value when matching an `id` attribute value will
link them so that clicking on a label will select the cursor into its related
input.

As discussed in the previous lesson, the `name` attribute is important as it
stores the users input under that name (variable). This comes in handy for
making use of the users input server-side.

The `placeholder` value will appear inside the form input until the user starts
typing in their own content.

The `required` attribute will prevent the browser from submitting the form
until all required inputs are filled in properly. Again this is functionality
is baked into HTML5 for us automatically.

The last input on line 11 has a type of "submit" this gives us a submit button
to submit the form. The value attribute in this case displays the text that
will appear on our submit button.


<p class='util--hide'>View <a href='https://learn.co/lessons/html-map-contact-form-code-along'>HTML Map Contact Form Code-along</a> on Learn.co and start learning to code for free.</p>

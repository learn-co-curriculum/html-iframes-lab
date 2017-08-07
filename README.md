# HTML Map and Contact Form Code-along

## Objectives

1. Embed Google Map as an iframe
2. Creating a Contact Form

## Introduction

Building upon previous code alongs, in this exercise you will add an embedded iframe map by coding along with the video provided, reviewing the concepts you were introduced to in the previous lessons.

## Instructions
- Either run the `learn open` command or [manually open the lab](http://help.learn.co/workflow-tips/github/how-to-manually-open-a-lab).
- Code along with the provided video below and/or its supplementary reading located below the video. Code everything you see there. Feel free to stop, pause, rewind or fast forward through the content to keep pace.

<iframe width="640" height="480" src="//www.youtube.com/embed/lYHcdsF0Iug?rel=0&modestbranding=1" frameborder="0" allowfullscreen></iframe>

**NOTE**: The Google Maps interface has changed slightly since this video was recorded. We'll re-record the video ASAP, but we're sure you can find your way around (the changes are minimal and intuitive).

### Map Embed

Start by creating a new feature branch in Terminal by typing `git checkout -b contact-page`.

Then open the contact.html page in your code editor. Under the `<h3>Contact</h3>` write some comments for the content we will add like so,

```html
<h3>Contact</h3>

<!-- Map -->

<!-- Contact Form -->

```

Next, in your browser head to [https://www.google.com/maps](https://www.google.com/maps) and search for a general location. I searched for `Brooklyn Heights, Brooklyn, NY`.

Now click the menu icon located at the top left of the screen and select **Share or embed map**. Then click the **Embed map** tab.

Next to the link with the iframe code click the drop menu to select the size of the iframe and choose **Custom size**. Then set the width to `425` pixels wide and set the height to `350` pixels tall. Then highlight the iframe embed code and copy it to your clipboard using Command + c (Mac) or Ctrl + c (Windows) and the head back to your code editor and paste the code snippet Command + v (Mac) or Ctrl + v (Windows) under the comment `<!--map-->` like so,

```html
<!-- Map -->
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6049.881319200985!2d-74.00151372674895!3d40.69730452928296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a47df06b185%3A0xc889234bc07c42ee!2sBrooklyn+Heights%2C+Brooklyn%2C+NY+11201!5e0!3m2!1sen!2sus!4v1461598289488" width="425" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
```

This long code snippet uses the `<iframe>` element that allows us to load another HTML page inside of a frame within our HTML page. It is like looking through a window from our page into another page displaying a Google Map.

Next go ahead and save this page and preview it in the browser. The map should look something like this:

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6049.881319200985!2d-74.00151372674895!3d40.69730452928296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a47df06b185%3A0xc889234bc07c42ee!2sBrooklyn+Heights%2C+Brooklyn%2C+NY+11201!5e0!3m2!1sen!2sus!4v1461598289488" width="425" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>

Looks good! Let's stage and commit our code. In Terminal type `git add contact.html` and press return. Then type `git commit -m "add google map to contact page"` and press return. Then we will push up our feature branch as a backup for safe keeping, type `git push -u origin contact-page` and press return.

### Form

Next let's add a contact form. Under our `<!-- Contact Form -->` comment let's start by creating a `<form>` element. This will wrap all of our form inputs.

```html
<!-- Contact Form -->
<form>...</form>
```

We need to give our opening form element two attributes. The first is an action which is the location that our form will submit its input information to. In our case we will be submitting to a PHP script that will send an email later on. For now, we will insert a `#` pound sign as a placeholder. Second, we will include the method attribute. This tells the browser the type of request we are making to the location we are submitting in the action. Here we will set the value as `post`.

```html
<!-- Contact Form -->
<form action="#" method="post">
  ...
</form>
```

Next, we would like to create inputs for the user to insert their name, email, phone, and a message. We will start by adding a label and input for fullname like so,

```html
<!-- Contact Form -->
<form action="#" method="post">
  <label for="fullname">Name</label>
  <input type="text" id="fullname" name="fullname" placeholder="your name" required>
</form>
```

On line 3 we use a `<label>` element to create a text label associated with the form input. By using the `for` attribute set on the label to match the value of the `id` attribute in the input this ties the label to the input so that if a user clicks on the text of the label "Name" it will select the input next to it. You can test this on the example below:

<label for="fullname">Name</label> <input type="text" id="fullname" name="fullname" placeholder="your name" style="border:1px solid black;padding:5px;">

The required attribute on line 4 helps us alert the user when they try to submit the form without filling out their name.

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

The `type` attribute (e.g., "text" vs "email") will be recognized by the browser so that when type email is required, the form will validate that the input matches the format of an email address, including the "@". This is a feature brought to us as part of HTML version 5. Additonally, the type "tel" will bring up the numeric pad on mobile devices, whereas the type "text" will bring up the alphabet keypad. Support varies from device to device, though.

Again, the `for` attribute value when matching an `id` attribute value will link them so that clicking on a label will select the cursor into its related input.

As discussed in the previous lesson, the `name` attribute is important as it stores the users input under that name (variable). This comes in handy for making use of the users input server-side.

The `placeholder` value will appear inside the form input until the user starts typing in their own content.

The `required` attribute will prevent the browser from submitting the form until all required fields are filled in properly. Again this is functionality is baked into HTML5 for us automatically.

The last input on line 11 has a type of "submit" this gives us a submit button to submit the form. The value attribute in this case displays the text that will appear on our submit button.

Next, save the file and refresh the page in the browser to see your form appear. The following code should create a form that displays like the following example below,
<form>
    <label for="fullnam">Name</label>
    <input type="text" id="fullname" name="fullname" placeholder="your name" required style="border:1px solid black; display:block; padding:5px;">
    <label for="email">Email</label>
    <input type="email" id="email" name="email" placeholder="your email" required style="border:1px solid black; display:block; padding:5px;">
    <label for="phone">Phone</label>
    <input type="tel" id="phon" name="phone" placeholder="your phone (optional)" style="border:1px solid black; display:block; padding:5px;">
    <label for="message">Message</label>
    <textarea id="message" name="message" rows="10"></textarea>
    <input type="submit" value="send" style="border:1px solid black; display:block; padding:5px;">
</form>

Ok, looks good! Now stage and commit your code. In Terminal type `git add contact.html` and press return, then type `git commit -m "add contact form to contact page"` and press return. Then type `git push origin contact-page`.

Since we are satisfied with our work on our contact page and we feel this feature is publishable we can include the work in our master branch. To do so in Terminal type `git checkout master` and press return to switch to your master branch then type `git merge contact-page` and press return to merge in your commits from the contact-page branch. Then to update our remote type `git push origin master` and press return.

After you're finished, submit a pull request on Github by typing "learn submit" in the terminal and move on to the next lesson!

<p class='util--hide'>View <a href='https://learn.co/lessons/html-map-contact-form-code-along'>HTML Map Contact Form Code-along</a> on Learn.co and start learning to code for free.</p>

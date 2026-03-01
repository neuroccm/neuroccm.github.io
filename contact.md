---
layout: page
title: Contact
permalink: /contact/
comments: FALSE
---

## Contact the Lab

Thank you for your interest in the Stroke Innovation Lab (SiLab). Our lab assistant, **Gemma**, manages all incoming inquiries and will get back to you.

**T-CAIREM Summer Studentship:** We typically accept **1 student per summer** for the T-CAIREM summer studentship. In some or alternate years, we also take a student via SRI or CREMS. If you are interested in applying, please use the form below and indicate this in your message.

If you are a student with an interest in QI and experienced in research, or if you are an engineering, CS, or MD student interested in clinical applications of machine learning in neurology, we would love to hear from you.

---

<!--
  SETUP INSTRUCTIONS (Formspree):
  This form uses Formspree to forward submissions to your email without exposing it.
  1. Go to https://formspree.io and create a free account
  2. Create a new form and set the email destination to your email address
  3. Copy the form ID (e.g. "xrgvkpbd")
  4. Replace YOUR_FORM_ID below with your actual form ID
  The free tier allows 50 submissions per month.
-->

<div class="contact-form">
  <form action="https://formspree.io/f/mvzbnapg" method="POST">
    <input type="hidden" name="_subject" value="SiLab Contact Form Submission">
    <input type="text" name="_gotcha" style="display:none">

    <div class="form-group">
      <label for="name"><strong>Name</strong></label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Your full name" required>
    </div>

    <div class="form-group">
      <label for="email"><strong>Email Address</strong></label>
      <input type="email" class="form-control" id="email" name="email" placeholder="your.email@example.com" required>
    </div>

    <div class="form-group">
      <label for="telephone"><strong>Telephone</strong></label>
      <input type="tel" class="form-control" id="telephone" name="telephone" placeholder="Your phone number">
    </div>

    <div class="form-group">
      <label for="message"><strong>Message</strong></label>
      <textarea class="form-control" id="message" name="message" rows="6" placeholder="Please describe your interest, background, and what you would like to discuss..." required></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Send Message</button>
  </form>
</div>

<style>
  .contact-form {
    max-width: 600px;
    margin-top: 1.5rem;
  }
  .contact-form .form-group {
    margin-bottom: 1.25rem;
  }
  .contact-form label {
    display: block;
    margin-bottom: 0.4rem;
  }
  .contact-form .form-control {
    width: 100%;
    padding: 0.5rem 0.75rem;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    font-size: 1rem;
  }
  .contact-form .btn-primary {
    padding: 0.5rem 1.5rem;
    font-size: 1rem;
  }
</style>

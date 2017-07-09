---
layout: page
title: Sizzlin' Summer
---
<h4>KAMSC Sizzlin' Summer online registration begins April 1, 2017.</h4>

The online registration provides parents an easy and convenient way to register and pay for summer classes online.  Parents may pay online using their VISA, Discover, or MasterCard through the Kalamazoo Public Schools Rev Trak link. (Note: your credit card statement will indicate "Rev Trak")

<hr>

<h4>T-SHIRT COMPETITION: HOW TO BE THE NEXT T-SHIRT KID!</h4>

The competition is open to 2017 Sizzlin' Summer <u>Students</u>.
<ol>
<li>Get a great idea for next years shirt. Usually this includes a lot of the different kinds of things kids do in the summer at KAMSC, sometimes with some kind of theme.</li>
<li>When you have your great idea, draw it in black and white (pencil is OK) on regular (8 1/2 x 11 inch) paper. Do NOT put your name on the <u>front</u>!</li>
<li>DO put your name on the <u>back</u>. You don't really have to put other information (we can look you up) except your address and your grade for the 2017-18 school year.</li>
<li>Bring or mail your design to KAMSC by September 30th. There will be a box on the giveaway table near the Presentation Center room 436.</li>
<li>Be patient! Winners will be notified before brochures are mailed next spring 2018.</li>
<li>Win. The designs are looked at by a group of adults and older students (some summer staffers), and eventually there is a winner and several honorable mentions. Prizes will be given as discount coupons for classes and/or free shirts next year.</li>
</ol>

{::nomarkdown}
</section>
<section class="box">
{:/nomarkdown}

<h4><a target="_blank" href="https://kalamazoo.revtrak.net/KAMSC/KAMSC-Sizzlin-Summer/">Click here to register online for KAMSC Sizzlin' Summer</a></h4>
__Paying with cash, by check, or applying for financial assistance?__ Please bring your registration, in person, to the KAMSC office beginning April 3, 2017 -- <span style="color: red;">**NO phone registrations allowed.**</span> Please contact the KAMSC office if you have any questions at <a href="tel:+12693370004">(269) 337-0004</a>.

{::nomarkdown}
</section>
<section class="box">
{:/nomarkdown}

<div class="table-wrapper">
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Category/Description</th>
                <th>Link</th>
            </tr>
        </thead>
        <tbody>
        {% for n in site.data.sizzlin.files %}
            <tr>
                <td><h4><a href="{{ site.github.url }}/assets/sizzlin/{{ n.file }}">{{ n.title }}</a></h4></td>
                <td>{{ n.category }}</td>
                <td><a download="{{ n.file }}" href="{{ site.github.url }}/assets/sizzlin/{{ n.file }}" class="button alt small icon fa-download">Download</a></td>
            </tr>
        {% endfor %}
        </tbody>
    </table>
</div>
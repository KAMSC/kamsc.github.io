---
layout: page
title: Links
---
<div class="table-wrapper">
    <table>
        <tbody>
        {% for n in site.data.links %}
            <tr>
                <td><h4><a href="{{ n.link }}">{{ n.title }}</a></h4></td>
            </tr>
        {% endfor %}
        </tbody>
    </table>
</div>
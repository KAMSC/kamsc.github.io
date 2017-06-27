---
layout: page
title: KAMSC Newsletters
---

<div class="table-wrapper">
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Link</th>
            </tr>
        </thead>
        <tbody>
        {% for n in site.data.newsletters %}
            <tr>
                <td>{{ n.title }}</td>
                <td><a href="{{ site.github.url }}/assets/newsletters/{{ n.file }}.pdf" class="button alt small icon fa-download">Download</a></td>
            </tr>
        {% endfor %}
        </tbody>
    </table>
</div>
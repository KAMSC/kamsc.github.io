---
layout: page
title: KAMSC 84 Steps
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
        {% for n in site.data.steps %}
            <tr>
                <td>{{ n.title }}</td>
                <td><a href="{{ site.github.url }}/assets/84steps/{{ n.file }}.pdf" class="button alt small icon fa-download">Download</a></td>
            </tr>
        {% endfor %}
        </tbody>
    </table>
</div>
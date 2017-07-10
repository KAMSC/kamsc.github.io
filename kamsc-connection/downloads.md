---
layout: page
title: Downloads
---
<h3>Other Downloads</h3>
<div class="table-wrapper">
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Link</th>
            </tr>
        </thead>
        <tbody>
        {% for n in site.data.downloads.files %}
            <tr>
                <td><h4><a href="{{ site.github.url }}/assets/downloads/{{ n.file }}">{{ n.title }}</a></h4></td>
                <td><a download="{{ n.file }}" href="{{ site.github.url }}/assets/downloads/{{ n.file }}" class="button alt small icon fa-download">Download</a></td>
            </tr>
        {% endfor %}
        </tbody>
    </table>
</div>
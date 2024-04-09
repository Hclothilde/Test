from dash import dcc

dcc.Checklist(
    ['New York City',
     'Montréal',
     'San Francisco']
)

<ul>
    <li><input type="checkbox" disabled> foo</li>
    <li><input type="checkbox" disabled checked> bar</li>
    <li><input type="checkbox" disabled> baz</li>
</ul>

* [x] 1
* [ ] 2

[check_list](https://github.com/Hclothilde/Test/issues/1#issue-2233328206)

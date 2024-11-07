{{"Akilesh"}}
{{10}}
{{[1,2,3,4,5]}}
{{True}}
{{{1:'Akilesh',2:'Vishnu'}}}

--Variables in Jinja
{% set var1='Akilesh' %}
{{var1}}
{{var1}}

{%- set var2=78 -%} --using the (- -)to get use the same line as the previous line
{{var2}}

--Comments
{# Akilesh is the {var2} GOAT #}

-- If Condition
{% if 1==2 %}
    {{"I am not the GOAT"}}
{% else %}
    {{"I am the GOAT"}}
{% endif %}


-- Else-If Condition
{% if 1==2 %}
    {{"I am not the GOAT"}}
{% elif 3==2 %}
    {{"I am not the GOAT"}}
{% elif 4==4 %}
    {{"I am definitely the GOAT"}}
{% else %}
    {{"I am the GOAT"}}
{% endif %}



--For Loop
{% for i in [1,2,3,4,5,6] %}
{{ i }}
{%- endfor -%}
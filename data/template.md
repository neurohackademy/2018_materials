# Neurohackademy 2018 course materials

This repository contains (or will eventually contain) links and descriptions of all publicly shareable materials, code, data, etc. used by instructors at Neurohackademy 2018. The ordering of lectures and tutorials roughly follows the chronology of the course.

## Table of Contents
{% for sec in sections %}
* {{sec.name}}
{% for bl in blocks %}{% if bl.date == sec.value %}	* [{{bl.title}}](#bl{{loop.index}}){% endif %}{% endfor %}
{% endfor %}


## Materials
{% for bl in blocks %}<a id="bl{{loop.index}}"></a>### {{bl.title}}
**Instructor**: {{bl.instructor}}
{% if bl.repo %}**Repository**: [{{bl.repo}}]({{bl.repo}}){% endif %}
{% if bl.date %}**Date/time**: {{bl.date}}, {{bl.time}}{% endif %}
{{bl.desc}}

{% endfor %}

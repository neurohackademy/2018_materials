# Neurohackademy 2018 course materials

This repository contains (or will eventually contain) links and descriptions of all publicly shareable materials, code, data, etc. used by instructors at Neurohackademy 2018. The ordering of lectures and tutorials roughly follows the chronology of the course.

# Table of Contents
{% for sec in sections %}* {{sec.name}} ({{sec.value}})
{% for bl in blocks %}{% if bl.date == sec.value %}	* [{{bl.time}}] {% if bl.slides %}[{% endif %}{{bl.title}}{% if bl.slides %}]({{bl.slides}}){% endif %} ({{bl.instructor}}){% if bl.repo %} [repo]({{bl.repo}}){% endif %}
{% endif %}{% endfor %}
{% endfor %}
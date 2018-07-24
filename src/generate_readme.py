import json
from jinja2 import Template
from os.path import join, dirname

data_dir = join(dirname(__file__), '..', 'data')
template = open(join(data_dir, 'template.md')).read()
template = Template(template)

sections = json.load(open(join(data_dir, 'sections.json')))
data = json.load(open(join(data_dir, 'materials.json')))

md = template.render(sections=sections, blocks=data)

readme = open(join(dirname(__file__), '..', 'README.md'), 'w')
readme.write(md)
readme.close()

#!/usr/bin/env python3

from jinja2 import Template
from os import path, walk
from toml import loads
from subprocess import run

CONFIG_PATH = path.expanduser("~/.config/themes.toml")
TEMPLATE_SUFFIX = ":template"
TEMPLATE_SCAN_DIRS = [
    path.expanduser("~/.config"),
]


def get_config() -> dict:
    print(f"parsing config file at {CONFIG_PATH}")
    with open(CONFIG_PATH, "r") as config_file:
        return loads(config_file.read())


def get_template_paths() -> list[str]:
    result = []
    for template_dir in TEMPLATE_SCAN_DIRS:
        for root, _, files in walk(template_dir):
            for file in files:
                if file.endswith(TEMPLATE_SUFFIX):
                    result.append(path.join(root, file))
    return result


def main() -> int:
    config = get_config()
    for template_path in get_template_paths():
        result = "\n"
        reload_command = ""
        output_path = template_path.removesuffix(TEMPLATE_SUFFIX)
        print(f"parsing template file at {template_path}")
        with open(template_path, "r") as template_file:
            template = Template(template_file.read())
            render = template.render(config).split("\n")
            reload_command = render[:1][0]
            result = result.join(render[1:])

        print(f"writing {template_path} output to {output_path}")
        with open(output_path, "w") as output_file:
            output_file.write(result)

        print(f"executing reload command '{reload_command}'")
        run(["/bin/sh", "-c", reload_command])
    return 0


if __name__ == "__main__":
    exit(main())

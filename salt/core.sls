tmux:            # ID declaration
  pkg:           # state declaration
    - installed  # function declaration

https://github.com/moodle/moodle.git:
  git.latest:
    - rev: MOODLE_25_STABLE
    - target: /var/www/moodle
    - force: True

# https://github.com/saltstack-formulas/salt-formula
salt:
  master:
    fileserver_backend:
      - git
      - roots
    gitfs_remotes:
      - git://github.com/saltstack-formulas/salt-formula.git
    file_roots:
      base:
        - /srv/salt
    pillar_roots:
      base:
        - /srv/salt/pillar

  minion:
    master: salt
    module_config:
      test: True
      test.foo: foo
      test.bar: 
        - baz
        - quo
      test.baz:
        spam: sausage
        cheese: bread

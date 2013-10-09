rdiff-backup Cookbook
=====================

This cookbook configures backup using the [rdiff-backup backup tool](http://rdiff-backup.nongnu.org/ "rdiff-backup home page").

Requirements
------------

Pretty much none.

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### rdiff-backup::default
default['rdiff-backup']['client_role'] = "backupped"
default['rdiff-backup']['server_role'] = "backup"

default['rdiff-backup']['backup_dir'] = "/backup"
default['rdiff-backup']['etc_dir'] = "/etc/rdiff-backup"
default['rdiff-backup']['var_dir'] = "/var/rdiff-backup"
default['rdiff-backup']['user'] = "rdiff-backup"
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### rdiff-backup::default
TODO: Write usage instructions for each cookbook.
#### rdiff-backup::client
TODO: Write usage instructions for each cookbook.
#### rdiff-backup::server
TODO: Write usage instructions for each cookbook.

e.g.
Just include `rdiff-backup` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rdiff-backup]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: ka’imi <kaimi@piratenfraktion-nrw.de>

rdiff-backup Cookbook
=====================

This cookbook configures backup using the [rdiff-backup backup tool](http://rdiff-backup.nongnu.org/ "rdiff-backup home page").

Requirements
------------

### ssh key

Put a ssh private key into `files/default/#{node['rdiff-backup']['key']}` and the 
corresponding public one into `files/default/#{node['rdiff-backup']['key']}.pub`.

This key will be used for the `rdiff-backup` user that runs the backups.

### Cookbooks:

* ssh\_known\_hosts
* sudo

Attributes
----------

### rdiff-backup::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['backup_dir']</tt></td>
    <td>String</td>
    <td>where to put the backup files</td>
    <td><tt>/backup</tt></td>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['etc_dir']</tt></td>
    <td>String</td>
    <td>where to put the rdiff-backup config files</td>
    <td><tt>/etc/rdiff-backup</tt></td>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['user']</tt></td>
    <td>Boolean</td>
    <td>the user to run the backup task as</td>
    <td><tt>rdiff-backup</tt></td>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['key']</tt></td>
    <td>String</td>
    <td>the ssh key file name</td>
    <td><tt>id_rsa</tt></td>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['notification_email']</tt></td>
    <td>String</td>
    <td>where to send summary emails</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['autotrim_enable']</tt></td>
    <td>Boolean</td>
    <td>whether to auto trim backups</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['rdiff-backup']['autotrim_timespan']</tt></td>
    <td>String</td>
    <td>backup retention timespan (in rdiff-backup format)</td>
    <td><tt>1y</tt></td>
  </tr>
</table>

Definitions
-----------

### backup\_path

Adds a path to the backup directory list.

#### Example

`backup_path "/var/lib/mailman"`

Adds the mailman home directory to be backed up.

Usage
-----
### rdiff-backup::default
Used in the other recipes. Do not call directly.
### rdiff-backup::client
Sets up the client (= host to be backed up) side.
### rdiff-backup::server
Sets up the server (= host to save backups to) side.

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

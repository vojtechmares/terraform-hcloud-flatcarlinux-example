---
passwd:
  users:
    - name: core
      ssh_authorized_keys: ${ssh_authorized_keys}
storage:
  files:
    - path: /home/core/works
      filesystem: root
      mode: 0755
      contents:
        inline: |
          #!/bin/bash
          set -euo pipefail
          hostname="$(hostname)"
          echo My name is ${name} and the hostname is $${hostname}

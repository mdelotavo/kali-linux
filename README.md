Generate ssh keys.
```sh
$ ssh-keygen
```

Add public key to `authorized_keys`.
```sh
$ cat ~/.ssh/id_rsa.pub >> authorized_keys
```

Build image.
```sh
$ docker build -t mdelotavo/kali-linux .
```

Run container.
```sh
$ docker run -d -P --name kali mdelotavo/kali-linux
```

Find port.
```sh
$ docker port kali 22
0.0.0.0:32775
```

Connect to port.
```sh
$ ssh root@localhost -p 32775
The authenticity of host '[localhost]:32775 ([::1]:32775)' can't be established.
ECDSA key fingerprint is SHA256:fFvHT0g2HPs9u/AUuBu1dIAx+zJf6rz5p9Kk4Kcve14.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '[localhost]:32775' (ECDSA) to the list of known hosts.
Linux f842ece275c7 4.9.125-linuxkit #1 SMP Fri Sep 7 08:20:28 UTC 2018 x86_64

The programs included with the Kali GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Kali GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
root@f842ece275c7:~# 
```
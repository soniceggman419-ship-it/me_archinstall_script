# me_archinstall_script
to start the install can curl to run the script but don't because this is dangerous it is dangerous to run scripts and this script is dangerous arch1.sh is dangerous to run you might want to follow the arch wiki on configuring the discs and instead use curl to download The script and save it to the TMP directory like this
```bash
curl https://raw.githubusercontent.com/soniceggman419-ship-it/me_archinstall_script/refs/heads/main/arch1.sh >> /tmp/arch1.sh
```
if everything look in the scriptand 
```bash
bash /tmp/arch1.sh
```
once that's done
and partitions that have been set up manually remove the offending content that will screw up something I only leave the parts that won't and then run and the terminal this 
```bash
arch-chroot /mnt
```
and this 
```
curl https://raw.githubusercontent.com/soniceggman419-ship-it/me_archinstall_script/refs/heads/main/arch2.sh | bash
```
you're now done

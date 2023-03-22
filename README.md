## dotfiles

#### mount

    sudo mount /dev/sda7 /dat.mnt

<pre>
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 232.9G  0 disk 
├─sda1   8:1    0     1G  0 part /boot
├─sda2   8:2    0     8G  0 part [SWAP]
├─sda3   8:3    0    30G  0 part /
├─sda4   8:4    0    30G  0 part 
├─sda5   8:5    0    30G  0 part 
├─sda6   8:6    0    30G  0 part 
└─sda7   8:7    0 103.9G  0 part /dat.mnt
</pre>




<pre>
save all your dotfiles to:
/dat.mnt/dotfiles/

sudo mkdir /dat.mnt
sudo chown -R m:m /dat.mnt
cd /dat.mnt
git clone https://github.com/mort1skoda/dotfiles.git
</pre>

---

<pre>
create symlinks from ~ dir to /dat.mnt/dotfiles
Then it will reflect any adjustments / updates
to your dotfiles by running:
./create.symlinks.sh


remember to periodically:
cd /rep/dotfiles
git pull
git add
git commit
git push

or run:
./dotf.update.sh
or use the alias:
ud  [update dotfiles]

So that any changes are synced with github.
</pre>


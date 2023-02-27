## dotfiles

<pre>
put dotfiles in:
/dat.mnt/dotfiles

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

So that updates are copied to github.
</pre>


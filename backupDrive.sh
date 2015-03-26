########################################################################
# Create and shrink a disk image using dd, or restore a disk image created the same way.
# Copyright (C) 2015  Carl J Smith
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
########################################################################
# - Use dd to backup a drive and resize the partitions with resize2fs
# - Look into gziping all the included images to the disk for storage
#   the restoreDrive program will have to extract these
# - If the user does not specify options display the available drives to work with
# - Figure out a way to do feedback for running dd command.
# - User must only specify a drive itself, this tool is NOT for creating partition
#   backups. dd does that already, that is a component of this tool
tempDir="/tmp/$1backup";
ext=".img";
mkdir -p $tempDir/dev;
for item in $(find /dev | grep $1);do
	if [ $item == "/dev/$1" ];then
		echo "lol";
	else
		echo "dd if=$item of=$tempDir$item$ext";
		echo "dd if=$item of=$tempDir$item$ext" > $tempDir$item$ext;#DEBUG
	fi
done
finExt=.tar.gz
tar -czvf $1$finExt $(find $tempDir/dev | grep $1);

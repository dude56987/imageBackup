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
# - Restore all drive partitions with dd 
# - Restore from a ziped archive containing
#   .img files for each image partition
# - Uses 2 arguments 
#   - First the path of the image backup
#   - Second the drive you want to restore to
#     e.g. /dev/sdb or /dev/sdc or /dev/hdb
########################################################################
# this lists the files in the archive
unzip -Z -1 $1


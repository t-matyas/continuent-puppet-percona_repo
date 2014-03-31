# Copied from https://github.com/arioch/puppet-percona
# 
# Copyright (C) 2012 Tom De Vylder
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class percona_repo::yum {
  yumrepo { 'percona':
    descr => 'CentOS $releasever - Percona',
    baseurl => 'http://repo.percona.com/centos/$releasever/os/$basearch/',
    gpgkey => 'http://www.percona.com/downloads/percona-release/RPM-GPG-KEY-percona',
    enabled => 1,
    gpgcheck => 1,
  }
}
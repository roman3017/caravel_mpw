#!/bin/bash
# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

export RUN_ROOT=$(pwd)
export CARAVEL_ROOT=$(pwd)/caravel

cd $RUN_ROOT/..
echo $PWD
export OPENLANE_ROOT=$(pwd)/openlane
export PDK_ROOT=$(pwd)/pdks
export INSTALL_SRAM=enable

rm -rf $OPENLANE_ROOT $PDK_ROOT $CARAVEL_ROOT

cd $RUN_ROOT
echo $PWD
make install

cd $CARAVEL_ROOT
echo $PWD
git checkout $CARAVEL_TAG

cd $RUN_ROOT
echo $PWD
make install_mcw
make openlane
#cd $OPENLANE_ROOT
#echo $PWD
#git checkout $OPENLANE_TAG
make pdk

echo "done installing"

cd $RUN_ROOT
exit 0
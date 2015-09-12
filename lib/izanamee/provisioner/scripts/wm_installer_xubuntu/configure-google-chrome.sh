<<COMMENT
/*************************IZANAMEE-LICENSE-START*********************************
 * Copyright 2015 CapitalOne, LLC.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *************************IZANAMEE-LICENSE-END*********************************/
COMMENT

#!/bin/bash -e

echo "\n############################ Installing Chrome Desktop entry with proxy settings, etc. ############################\n"
export DESKTOP_FN=google-chrome.desktop
export DESKTOP_DIR=/home/vagrant/Desktop
if [ ! -d "$DESKTOP_DIR" ]; then
    mkdir ${DESKTOP_DIR}
    chown -R vagrant:vagrant ${DESKTOP_DIR}
fi

cp $1 ${DESKTOP_DIR}/${DESKTOP_FN}
chown vagrant:vagrant ${DESKTOP_DIR}/${DESKTOP_FN}
chmod +x ${DESKTOP_DIR}/${DESKTOP_FN}
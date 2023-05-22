#!/bin/sh

#  generateNetworkPackage.sh
#  hwServiceLocator
#
#  Created by Sasha Kurganova on 22.05.2023.
#

openapi-generator generate \
    -i "NobelMedia-NobelMasterData-2.0-resolved.json" \
    --reserved-words-mappings Character=chdf \
    -g swift5 \
    --global-property models,apis,modelDocs=false,apiDocs=false,supportingFiles \
    --additional-properties swiftPackagePath=/,projectName=Network \
    -o "../../hwArchitecture/Network/Sources/Network"

#!/usr/bin/env bash
java -jar ApplitoolsSimpleTestRunner-4.0.2.jar job.xml "-var[env_prefix,https://]" "-var[override_baseline,false]" "-var[env_batchName,ProdRun]" -narrate -time > Applitoolslogs_Prod.log

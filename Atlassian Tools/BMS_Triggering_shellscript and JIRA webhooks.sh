===========#######LS_JIRAWebhook_TEST2_Build plan script for triggering from jira webhooks########=============
===========#######Listener Service for JIRA build Webhook call########=============

echo "Listener Service for JIRA Webhook call"

JIRA_ID=${bamboo.jiraKey}

if [ -z "$JIRA_ID" ]
then
    echo "JIRA IDs is empty. Cannot trigger deployment pipeline without JIRA ID"
    exit 1
fi

sleep 10

echo "Listener Service triggered by ${JIRA_ID}"
base64JIRACred=$(echo -n ${bamboo.jiraUser}:${bamboo.jiraPassword} | base64)


curl -X GET -H "Authorization: Basic ${base64JIRACred}" -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}${JIRA_ID} > bb.json
echo ""
cat bb.json

#ReleaseEnv="Test2"
ReleaseEnv=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_13008.value)

#ReleaseSystem="EAI-MB"
ReleaseSystem=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_13007.value)

issueType=$(cat bb.json | /home/bradmin/bin/jq -r .fields.issuetype.name)
status=$(cat bb.json | /home/bradmin/bin/jq -r .fields.status.name)

packageName=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_16800)
repoName=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_16801)
NexusUrl=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_16802)

echo "Package Name : ${packageName}"
echo "Repo Name : ${repoName}"
echo "Deployment Package URL : ${NexusUrl}"
echo "JIRA Issue Type : ${issueType}"
echo "JIRA Issue Status : ${status}"
echo "JIRA Issue Release Environment : ${ReleaseEnv}"
echo "JIRA Issue Release System : ${ReleaseSystem}"

if [[ ${issueType} == "Release" && ${status} == "Build Started" && ${ReleaseEnv} == "Test2" ]]
then
    if [[ ${repoName} == "CollectionSystem" ]]; then
        echo "Triggering Collection System Build LS"

        curl --user ${bamboo.bambooUser}:${bamboo.bambooPassword} -X POST -d "stage&executeAllStages" -d "bamboo.variable.package_name=${packageName}" -d "bamboo.variable.jiraKey=${JIRA_ID}" -d "bamboo.variable.Repo=${repoName}"  http://10.14.170.220:8085/rest/api/latest/queue/${bamboo.collectionKey}.json
    elif [[ ${repoName} == "MBI_Common" ]]; then
        echo "Triggering MBI Common Build LS"

        curl --user ${bamboo.bambooUser}:${bamboo.bambooPassword} -X POST -d "stage&executeAllStages" -d "bamboo.variable.package_name=${packageName}" -d "bamboo.variable.jiraKey=${JIRA_ID}" -d "bamboo.variable.Repo=${repoName}"  http://10.14.170.220:8085/rest/api/latest/queue/${bamboo.commonKey}.json
	elif [[ ${repoName} == "MBI_CORE" ]]; then
        echo "Triggering MBI Core Build LS"

        curl --user ${bamboo.bambooUser}:${bamboo.bambooPassword} -X POST -d "stage&executeAllStages" -d "bamboo.variable.package_name=${packageName}" -d "bamboo.variable.jiraKey=${JIRA_ID}" -d "bamboo.variable.Repo=${repoName}"  http://10.14.170.220:8085/rest/api/latest/queue/${bamboo.coreKey}.json
	elif [[ ${repoName} == "MBI_2.0"  || ${repoName} == "MBI_Business" ]]; then
        echo "Triggering webapp Build LS"

        curl --user ${bamboo.bambooUser}:${bamboo.bambooPassword} -X POST -d "stage&executeAllStages" -d "bamboo.variable.package_name=${packageName}" -d "bamboo.variable.jiraKey=${JIRA_ID}" -d "bamboo.variable.Repo=${repoName}"  http://10.14.170.220:8085/rest/api/latest/queue/${bamboo.webAppKey}.json
    else
        echo "LS job not configured for ${ReleaseSystem} release system"
    fi
else
    echo "The JIRA Issue Type should be 'Release' , Status of JIRA should be 'Start Build' and Release Environment should be 'Test2'"
    echo "Not triggering any JIRA deployement because it failed above condition"
fi


${repoName} == "CollectionSystem" 
collectionKey = BMSDEV-COLLECTIONSIT = LS_BMS_CollectionSystem_SIT ==> LS_BMS_CollectionSystem_TEST2 : BMSDEV-LSBMSCOL

${repoName} == "MBI_Common"
commonKey = BMSDEV-WEBAPPSIT = LS_BMS_Webapp_SIT ==> LS_BMS_Webapp_Test2 : BMSDEV-WEBAPPTEST2

${repoName} == "MBI_CORE" 
coreKey = BMSDEV-CORESIT = LS_BMS_MBI_CORE_SIT ==> LS_BMS_MBI_CORE_TEST2 : BMSDEV-LSBMSMBIT2

${repoName} == "MBI_2.0" || ${repoName} == "MBI_Business"
webAppKey = BMSDEV-WEBAPPSIT = LS_BMS_Webapp_SIT  ==> LS_BMS_Webapp_Test2 : BMSDEV-WEBAPPTEST2

LS_BMS_Webapp_Test2
LS_BMS_MBI_CORE_TEST2

LS_BMS_MBI_CORE_TEST2


http://bradmin:Mobily1234@10.14.170.220:8085/rest/api/latest/queue/BMSDEV-LSJIRT2?os_authType=basic&stage=&executeAllStages&bamboo.variable.jiraKey=${issue.key}
http://bradmin:Mobily1234@10.14.170.220:8085/rest/api/latest/queue/BMSDEV-LSJIRPRE?os_authType=basic&stage=&executeAllStages&bamboo.variable.jiraKey=${issue.key}

EAI_Devops_Webhook_Test2 = http://bradmin:Mobily1234@10.14.170.220:8085/rest/api/latest/queue/EAID-LSJIRT2?os_authType=basic&stage=&executeAllStages&bamboo.variable.jiraKey=${issue.key}

to trigger from bamboo plan to other plan
curl --user ${bamboo.ID}:${bamboo.password} -X POST -d "stage&executeAllStages" http://sprl013.prod.mobily.lan:8085/rest/api/latest/queue/GBRM-BAF 
curl --user ${bamboo.ID}:${bamboo.password} -X POST -d "stage&executeAllStages" http://sprl013.prod.mobily.lan:8085/rest/api/latest/queue/GBRM-BAF6

-d "bamboo.buildKey=GBRM-BAF-CCFS"
-d "bamboo.variable.Branch=Test2"


Could you please place the URL between quotes and give another try, e.g:

# replace {USERNAME} with a user that can run build
# replace {PASSWORD} with {USERNAME}'s password
# replace {PLAN_KEY} with plan you would like to run build from, e.g PROJ-PLAN

curl -k -u {USERNAME}:{PASSWORD} \
-X POST "https://bamboo-starterkit.abc.com/rest/api/latest/queue/{PLAN_KEY}?bamboo.variable.var_name1=var1&bamboo.variable.var_name2=var2-v"


curl -k -u bradmin:Mobily123 -X POST http://sprl013.prod.mobily.lan:8085/rest/api/latest/queue/GBRM-BAF


refer: http://www.rndblog.com/bamboo-rest-api-how-to-trigger-a-plan-and-waiting-for-a-result/
upload artifacts to nexus repo with curl:
curl --upload-file project/Account-Management/target/mobily-api-accountMgmt.ear -u admin:admin123 -v http://10.14.165.244:8081/repository/ePortal/${bamboo.planRepository.branchName}/mobily-api/accountMgmt/content-compressed/mobily-api-accountMgmt-${bamboo.JiraIssue}-${bamboo.buildNumber}.ear

===========#######LS_JIRAWebhook_TEST2_Deployment plan script for triggering from jira webhooks########=============
===========#######Listener Service for JIRA deployment Webhook call########=============


echo "Listener Service for JIRA Webhook call"

JIRA_ID=${bamboo.jiraKey}

if [ -z "$JIRA_ID" ]
then
    echo "JIRA IDs is empty. Cannot trigger deployment pipeline without JIRA ID"
    exit 1
fi

sleep 10

echo "Listener Service triggered by ${JIRA_ID}"
base64JIRACred=$(echo -n ${bamboo.jiraUser}:${bamboo.jiraPassword} | base64)


curl -X GET -H "Authorization: Basic ${base64JIRACred}" -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}${JIRA_ID} > bb.json
echo ""
cat bb.json

#ReleaseEnv="Test2"
ReleaseEnv=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_13008.value)

#ReleaseSystem="EAI-MB"
ReleaseSystem=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_13007.value)

issueType=$(cat bb.json | /home/bradmin/bin/jq -r .fields.issuetype.name)
status=$(cat bb.json | /home/bradmin/bin/jq -r .fields.status.name)

packageName=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_16800)
repoName=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_16801)
NexusUrl=$(cat bb.json | /home/bradmin/bin/jq -r .fields.customfield_16802)

echo "Package Name : ${packageName}"
echo "Repo Name : ${repoName}"
echo "Deployment Package URL : ${NexusUrl}"
echo "JIRA Issue Type : ${issueType}"
echo "JIRA Issue Status : ${status}"
echo "JIRA Issue Release Environment : ${ReleaseEnv}"
echo "JIRA Issue Release System : ${ReleaseSystem}"

if [[ ${issueType} == "Release" && ${status} == "Deployment In Progress" && ${ReleaseEnv} == "Test2" ]]
then
    # [[ ${ReleaseSystem} == "BMS-JAVA" ]]; then
	if [[ ${repoName} == "mbi_2.0" || ${repoName} == "mbi_business" ]]
	then
	 echo "Triggering WebApp Test2 deployment"
        curl --user ${bamboo.bambooUser}:${bamboo.bambooPassword} -X POST -d "stage&executeAllStages" -d "bamboo.variable.package_name=${packageName}" -d "bamboo.variable.jiraKey=${JIRA_ID}" -d "bamboo.variable.Repo=MBIEAR"  http://10.14.170.220:8085/rest/api/latest/queue/${bamboo.webAppDeploymentKey}.json
	else
        echo "Triggering JAVA Project Test2 deployment"
        curl --user ${bamboo.bambooUser}:${bamboo.bambooPassword} -X POST -d "stage&executeAllStages" -d "bamboo.variable.package_name=${packageName}" -d "bamboo.variable.jiraKey=${JIRA_ID}" -d "bamboo.variable.Repo=${repoName}"  http://10.14.170.220:8085/rest/api/latest/queue/${bamboo.javaDeploymentKey}.json
    #else
     #   echo "LS job not configured for ${ReleaseSystem} release system"
    fi
else
    echo "The JIRA Issue Type should be 'Release' , Status of JIRA should be 'Deployment In Progress' and Release Environment should be 'Test2'"
    echo "Not triggering any JIRA deployement because it failed above condition"
fi

webAppDeploymentKey : BMSDEV-SITDEPL = SIT_webapp_Deployment_Pipeline ==> Test2_Webapp_Deployment_Pipeline : BMSDEV-TEST2DEPL
javaDeploymentKey : BMSDEV-SITDP = SIT_Generic_BMS-JAVA_Deployment_Pipeline ==> Test2_Generic_BMS-JAVA_Deployment_Pipeline : BMSDEV-TEST2JDP



Date=`date +%Y%m%d`
packageName="REL_${bamboo.Repo}_Test2_$Date.${bamboo.buildNumber}.zip"
RepoName=${bamboo.Repo}
NexusURL="http://10.14.165.244:8081/repository/${bamboo.Repo}/Test2/REL_${bamboo.Repo}_Test2_$Date.${bamboo.buildNumber}.zip"
echo "Nexus URL"
echo "${NexusURL}"
jiraIDFlag=0
jiraFile="jiraIDTracker.jira"
if [ -f "$jiraFile" ]; then
    echo "JIRA ID file exists"
    JIRA_ID=$(cat jiraIDTracker.jira)
    echo $JIRA_ID
    jiraIDFlag=1
else
    echo "JIRA ID not captured"
    jiraIDFlag=0
fi

if [ $jiraIDFlag -eq 1 ]; then

    base64JIRACred=$(echo -n ${bamboo.jiraUser}:${bamboo.jiraPassword} | base64)
    base64BambooCred=$(echo -n ${bamboo.bambooUser}:${bamboo.bambooPassword} | base64)
    echo "${bamboo.bambooAPIEndpoint}${bamboo.saveTagBuildKey}/${bamboo.buildNumber}.json"
    curl -X GET -H "Authorization: Basic ${base64BambooCred}" -H "Content-Type: application/json" ${bamboo.bambooAPIEndpoint}${bamboo.saveTagBuildKey}/${bamboo.buildNumber}.json > bb.json
    cat bb.json
    stateOfStage=$(cat bb.json | /home/bradmin/bin/jq -r .state)
    echo "$stateOfStage"

    if [[ $stateOfStage == "Successful" ]]; then
        echo "Build is successful"
        echo "Update ${JIRA_ID} transitions state"
        #Update the transitions
        curl -X POST -H "Authorization: Basic ${base64JIRACred}" --data '{"update": {"comment": [{"add": {"body": "Bamboo updated ticket status"}}]},"transitions": {"id": "701"}}' -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}$JIRA_ID/transitions
        curl -X POST -H "Authorization: Basic ${base64JIRACred}" --data '{"body": "Build completed successfully. Bamboo Build number is ${bamboo.buildNumber}. http://sprl013.prod.mobily.lan:8085/browse/${bamboo.planKey}-${bamboo.buildNumber}/log"}' -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}$JIRA_ID/comment
        #curl -X PUT -H "Authorization: Basic ${base64JIRACred}" --data '{"fields": {"description": "Adding description using REST API. Same can be used to set Nexus package name post successful build test1"}}' -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}$JIRA_ID
        #jsonBody=""
        curl -X PUT -H "Authorization: Basic ${base64JIRACred}" --data '{"fields": {"customfield_16800": "'${packageName}'", "customfield_16801":"'${RepoName}'", "customfield_16802":"'${NexusURL}'" }}' -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}$JIRA_ID
        echo "Updated the transitions state"
    else
        echo "Build Failed"
        echo "Update ${JIRA_ID} transitions state"
        #base64JIRACred=$(echo -n ${bamboo.jiraUser}:${bamboo.jiraPassword} | base64)
        curl -X POST -H "Authorization: Basic ${base64JIRACred}" --data '{"update": {"comment": [{"add": {"body": "Bamboo updated ticket status"}}]},"transitions": {"id": "691"}}' -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}$JIRA_ID/transitions
        curl -X POST -H "Authorization: Basic ${base64JIRACred}" --data '{"body": "Build Failed. Bamboo Build number is ${bamboo.buildNumber}. http://sprl013.prod.mobily.lan:8085/browse/${bamboo.planKey}-${bamboo.buildNumber}/log"}' -H "Content-Type: application/json" ${bamboo.jiraAPIEndpoint}$JIRA_ID/comment
        echo "Updated the transitions state"
    fi
else
    echo "No JIRA updates for this build"
fi

mkdir trackerFiles | echo "Directory exists"
if [ -f "jiraIDTracker.jira" ]; then
    mv jiraIDTracker.jira ./trackerFiles
fi
if [ -f "bambooStage.status" ]; then
    mv bambooStage.status ./trackerFiles
fi


saveTagBuildKey = BMSDEV-SIT-CER : SIT_Generic_BMS-JAVA_Build_Pipeline ==> Test2_Generic_BMS-JAVA_Build_Pipeline : BMSDEV-TEST2JB
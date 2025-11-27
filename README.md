################
### WORKFLOW ###
################

#################################
### Run Condor Install Script ###
#################################

chmod +x condorinstall.sh

bash condorinstall.sh

#################################
### Run Condor Install Script ###
#################################

Assign Roles to nodes:

# Central Manager,

curl -fsSL https://get.htcondor.org | sudo GET_HTCONDOR_PASSWORD="$htcondor_password" /bin/bash -s -- --no-dry-run --central-manager $central_manager_name

# Submission Node,

curl -fsSL https://get.htcondor.org | sudo GET_HTCONDOR_PASSWORD="$htcondor_password" /bin/bash -s -- --no-dry-run --submit $central_manager_name

# Execution Node,

curl -fsSL https://get.htcondor.org | sudo GET_HTCONDOR_PASSWORD="$htcondor_password" /bin/bash -s -- --no-dry-run --execute $central_manager_name




 #!/bin/bash
      TWISTLOCK_USERNAME="ad463b31-6029-44a6-b9dd-1ae009c2646f"
      TWISTLOCK_PASSWORD="/Ia3aOndByYQFqMQxCYezweq+J4="
  
      # Set the Twistlock API endpoint
      TWISTLOCK_API_ENDPOINT="https://asia-south1.cloud.twistlock.com/india-1131960831/api/v1/util/twistcli"
      TWISTLOCK_COSOLE_URL="https://asia-south1.cloud.twistlock.com/india-1131960831"
      
      # Download the twistcli binary using curl with username and password
      curl -k -u "$TWISTLOCK_USERNAME:$TWISTLOCK_PASSWORD" -L -o twistcli "$TWISTLOCK_API_ENDPOINT"
  
      # Provide execute permissions to the downloaded twistcli binary
      sudo chmod a+x ./twistcli
  
      echo "Twistlock CLI (twistcli) has been downloaded successfully."
  
      ./twistcli defender install kubernetes \
      --namespace twistlock \
      --container-runtime containerd \
      --monitor-service-accounts \
      --address https://asia-south1.cloud.twistlock.com/india-1131960831 \
      --cluster-address asia-south1.cloud.twistlock.com \
      -u  "$TWISTLOCK_USERNAME" \
      -p  "$TWISTLOCK_PASSWORD" \
  
      echo "Defenders are successfully installed and deployed"
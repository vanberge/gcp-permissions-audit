gcloud projects list | grep "PROJECT_ID" | awk '{print $2}' | while read PROJECT
do
 gcloud projects get-ancestors-iam-policy $PROJECT
done


echo "Looping through projects..."
gcloud projects list | grep "PROJECT_ID" | awk '{print $2}' | while read PROJECT
do
	echo "Generating permissions audit for $PROJECT..."
	echo "============================================="
	gcloud projects get-ancestors-iam-policy $PROJECT
	echo "    "
done
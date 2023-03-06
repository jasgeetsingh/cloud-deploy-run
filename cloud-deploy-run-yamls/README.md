# Cloudbuild yaml execution steps walkthrough

Here we will see the execution steps being performed from the CloudBuild configuration file.

1. In the very first step we are Building and tagging the image using commit sha

2. Next, we are pushing the build immediately to Google Container registry.

3. Next, we are creating a `Delivery Pipeline` and targets with the Google Cloud Deploy service.

4. Next, we will be creating a release in Google Cloud Deploy. Here a `Release` is the central Google Cloud Deploy resource representing the changes being deployed. Basically the `Delivery Pipeline` defines the lifecycle of that `Release`.

5. At last we are using `Cloud Storage Bucket` to store all the Cloudbuild logs.

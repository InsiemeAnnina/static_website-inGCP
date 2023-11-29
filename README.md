# static_website-inGCP

**Set up configuration**

Prerequisites:
- Google Cloud Platform Account: Ensure you have a GCP account. If not, sign up here.
- Terraform: Install Terraform.

STEPS
1. Clone this Repository.

2. Configure GCP Project from the GCP Console.

3. Set up Service Account:
  - Create a service account with the role roles/editor and download the JSON key file.
  - Store the JSON key file securely.

4. **Create a new bucket manually named "statefilebucket" and don't allow pubblic access on it. This is where your terraform state-file will be stored.**

5. Configure Terraform:
   Open each of terraform files and replace the placeholder values with your desired configuration.

6. Use GitHub Actions CI/CD to deploy the app in the automated way:
  - **Create a new repository secret named TF_GOOGLE_CREDENTIALS and fill it with the content of your JSON key file.**
  - Open the .github/workflows/deploy.yml file.
  - Ensure that the workflow is triggered on pushes to the main branch.
  - Check the status of your workflow in the Actions.

7. Access the Web Application:
Find the external IP address in your GCP (Cloud storage -> bucket: static-site -> index.html) and paste it in your browser.
You should see a web page with text and an image.

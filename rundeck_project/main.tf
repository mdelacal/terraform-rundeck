resource "rundeck_project" "tf_rundeck" {
  name        = "tf_rundeck"
  description = "Rundeck automation with Terraform"

  resource_model_source {
    type = "local"
    config = {

    }
  }

  # We can add more than one resource_model_source to the Rundeck project
  resource_model_source {
    type = "file"
    config = {
        format = "resourcexml"
        # This path is interpreted on the Rundeck server.
        file = "/var/rundeck/projects/tf_rundeck/resources.xml"
    }
  }
}
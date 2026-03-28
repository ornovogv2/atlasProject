env "dev" {
  # URL to the target database
  url = "postgres://ornovogroder@localhost:5432/mydb?sslmode=disable"
  # URL to the dev-database
  dev = "docker://postgres/17/dev?search_path=public"
  schema {
    # Desired schema state
    src = "file://schema.sql"
    # Atlas Registry config
    repo {
      name = "atlas_project"
    }
  }
}
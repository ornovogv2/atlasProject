env "dev" {
  dev = "docker://postgres/17/dev?search_path=public"
  schema {
    src = "file://schema.sql"
    repo {
      name = "atlas_project"
    }
  }
}

env "local" {
  url = "postgres://ornovogroder@localhost:5432/mydb?sslmode=disable&search_path=public"
  dev = "docker://postgres/17/dev?search_path=public"
  schema {
    src = "file://schema.sql"
    repo {
      name = "atlas_project"
    }
  }
}
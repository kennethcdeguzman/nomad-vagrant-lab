job "docs" {
  multiregion {

    strategy {
      max_parallel = 1
      on_failure   = "fail_all"
    }

    region "west" {
      count = 2
      datacenters = ["west-1"]
      meta {
        my-key = "my-value-west"
      }
    }

    region "east" {
      count = 5
      datacenters = ["east-1", "east-2"]
      meta {
        my-key = "my-value-east"
      }
    }
  }
}

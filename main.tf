provider "google" {
    credentials = "${file("account.json")}"
    project = "${var.project_name}"
    region = "${var.region}"
}


resource "google_container_cluster" "test_cluster" {
    name = "${var.cluster_name}"
    zone = "${var.cluster_zone}"

    initial_node_count = "${var.count_cluster_node}"

}

resource "google_container_node_pool" "test_cluster_pool" {
    name = "${var.node_cluster_prefix}"
    region = "${var.cluster_zone}"
    cluster = "${google_container_cluster.test_cluster.name}"
    node_count = 1

    node_config {
        machine_type = "${var.node_machine_type}"

        tags = ["dev","gitlab","deploy"]
    }
}
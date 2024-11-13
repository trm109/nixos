{ pkgs, ... }:
{
# Enable common container config files in /etc/containers
  virtualisation.containers.enable = true;
  virtualisation.docker.enable = true;
  virtualisation.docker.storageDriver = "btrfs";


  #virtualisation = {
  #  podman = {
  #    enable = true;

  #    # Create a `docker` alias for podman, to use it as a drop-in replacement
  #    dockerCompat = true;

  #    # Required for containers under podman-compose to be able to talk to each other.
  #    defaultNetwork.settings.dns_enabled = true;
  #  };
  #};

  #services.k3s.enable = true;
  # Useful otherdevelopment tools
  environment.systemPackages = with pkgs; [
    #dive # look into docker image layers
    #podman-tui # status of containers in the terminal
    docker-compose # start group of containers for dev
    #podman-compose # start group of containers for dev
    #kind
    #kubectl
    #kubernetes-helm
    #faas-cli
    #arkade
  ];
}

{ pkgs, ... }:

let
  customKeystore = import ./import-ssl-cert.nix { inherit pkgs; };
in
{
  programs.java = {
    enable = true;
    package = pkgs.openjdk21.override {
      cacert = customKeystore;
    };
  };

  environment.variables = {
    JAVAX_NET_SSL_TRUSTSTORE = "${customKeystore}/etc/ssl/certs/custom-keystore.jks";
  };
}

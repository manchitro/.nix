{ pkgs ? import <nixpkgs> {} }:

let
  cert = /home/s/orion/ssl/localhost.cer;
in

pkgs.jdk21.overrideAttrs (oldAttrs: {
  installPhase = oldAttrs.installPhase + ''
    # Import the custom certificate
    $out/bin/keytool -noprompt -trustcacerts -import -alias mycert -file ${cert} -keystore $out/lib/security/cacerts -storepass changeit
  '';
})

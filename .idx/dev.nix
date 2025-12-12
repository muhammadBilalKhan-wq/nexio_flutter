{ pkgs, ... }: {
  channel = "unstable";

  packages = [
    pkgs.flutter
    pkgs.dart-sdk
    pkgs.openjdk
    pkgs.unzip
    pkgs.wget
    pkgs.git
  ];

  env = {};

  idx = {
    previews = {
      enable = true;

      previews = {
        flutter = {
          command = [
            "flutter"
            "run"
            "-d"
            "web-server"
            "--web-port"
            "$PORT"
            "--web-hostname"
            "0.0.0.0"
          ];
          manager = "web";
        };
      };
    };

    workspace = {
      onStart = [
        "flutter doctor"
      ];
    };
  };
}

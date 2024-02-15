{ config, pkgs, ... }:
{
home.file.".config/test3.txt".text = '' 
dit is een test.
'';

}
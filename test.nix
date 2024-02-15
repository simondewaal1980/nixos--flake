{ config, pkgs, ... }:
{
home.file."test.txt".text = '' 
dit is een test.
'';

}
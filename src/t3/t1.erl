%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 一月 2019 14:36
%%%-------------------------------------------------------------------
-module(t1).
-author("tongzhou").

%% API
-export([]).



typedef struct _IMAGE_RESOURCE_DIRECTORY {
  DWORD Characteristics;
  DWORD TimeDateStamp;
  WORD MajorVersion;
  WORD MinorVersion;
  WORD NumberOfNamedEntries;
  WORD NumberOFIdEntries;
} IMAGE_RESOURCE_DIRECTORY, *PIMAGE_RESOURCE_DIRECTORY;

-define(DWORD, 32/unsigned-little-integer).
-define(LONG, 32/unsigned-little-integer).
-define(DWORD, 16/unsigned-little-integer).
-define(BYTE, 8/unsigned-little-integer).
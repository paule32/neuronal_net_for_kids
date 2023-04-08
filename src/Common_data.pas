// ---------------------------------------------------------------------------
// This is my first AI Application for Education usage.
// It wait for User Input, and give back Monkey Sentences as Answer to one or
// more Request's.
//
// (c) 2023 Jens Kallup - paule32
// all rights reserved.
//
// Licensed under the MIT-License.
// For more Informations, read the LICENSE.TXT
//
// Compiled, and tested with the FPC - Free Pascal Compiler Version: 3.2.2
// in Turbo Pascal, and Delphi compatible Mode.
// ---------------------------------------------------------------------------
{$mode delphi}
unit Common_data;

interface
uses Classes, StrUtils;

// ---------------------------------------------------------------------------
// our simple data record structure:
// ---------------------------------------------------------------------------
type
	PAntwortRecord = ^TAntwortRecord;
	TAntwortRecord = record
		rand: integer;
		astr: string;
	end;
	TInputRecord = record
		afun: real;             // activation function
		astr: array of string;  // activation string
		ares: PAntwortRecord;   // activation result
		aptr: Pointer;          // activation action function
	end;

// ---------------------------------------------------------------------------
// common used variables:
// ---------------------------------------------------------------------------
var
	wordSplitArray: TStringList;        // splitted prompt sentence
	output        : array of real;      // activation output
	wordPrompt    : string;             // user input (prompt text)
	tmpstr        : string;
	
var
	i: integer; // iterate variable
	idx: Integer;

function sigmoid(x: real): real;

implementation

// ---------------------------------------------------------------------------
// the well known Sigmoid-Function, that shows like a S - there for the name.
// ---------------------------------------------------------------------------
function sigmoid(x: real): real;
begin
	result := 1 / (1 + exp(-x));
end;

end.

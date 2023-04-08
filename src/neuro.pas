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
program neuro;

uses
	Classes,
	Common_data,
	DEU_data,	// german  data
	ENG_data;	// english data

// ---------------------------------------------------------------------------
// activation function for all items in the language list(s):
// ---------------------------------------------------------------------------
procedure activationFunction(var output: array of real);
begin
	for i := 0 to Length( DEU_SatzInput ) - 1 do
	begin
		output[i] := sigmoid( DEU_SatzInput[i].afun );
	end;
end;

procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings) ;
begin
  ListOfStrings.Clear;
  ListOfStrings.Delimiter       := Delimiter;
  ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
  ListOfStrings.DelimitedText   := Str;
end;

var j,p: Integer;

// ---------------------------------------------------------------------------
// program entry function
// ---------------------------------------------------------------------------
begin
	Write('Eingabe: ');
	ReadLn(wordPrompt);

	idx := 0;
	j   := 1;
	p   := 0;
	wordSplitArray := TStringList.Create;
	try
		wordSplitArray.Delimiter := ' ';
		wordSplitArray.DelimitedText := wordPrompt;

		for idx := 0 to wordSplitArray.Count - 1 do
		begin
			if p > 0 then	// tail
			begin
				if LowerCase( wordSplitArray[ idx ] )
				=  LowerCase( DEU_SatzInput [ j-1 ].astr[ idx ] ) then
				begin
					WriteLn('Wort: ', wordSplitArray[ idx ]);
				end;
			end else		// head
			begin
				while (true) do
				begin
					if p > 0 then
					break;
					
					if LowerCase( wordSplitArray[ idx ] )
					=  LowerCase( DEU_SatzInput [ j ].astr[ idx ] ) then
					begin
						WriteLn('Wort: ', wordSplitArray[ idx ]);
						inc(j);
						p := j;
						break;
					end;
				end;
			end;
		end;
		
		//exit;
		SetLength(output, wordSplitArray.Count);
		activationFunction( output );
		
		for i := 0 to wordSplitArray.Count - 1 do
		begin
			WriteLn('Index: ', i, ', act: ', output[i], ' ', wordSplitArray[i]);
		end;
	finally
		wordSplitArray.Clear;
		wordSplitArray.Free;
	end;
end.

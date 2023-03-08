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
unit ENG_data;

interface
uses Common_data;

procedure ENG_Action_00001;

// ---------------------------------------------------------------------------
// english data part:
// ---------------------------------------------------------------------------
var
	ENG_Antwort_00000: array [1..3] of TAntwortRecord = (
		( rand: 10; astr: 'sorry, but i can not help' ),
		( rand: 10; astr: 'not enough information for your input' ),
		( rand: 10; astr: 'to few informations' )
	);
	ENG_Antwort_00001: array [1..2] of TAntwortRecord = (
		( rand: 10; astr: 'yes, we can talk in english' ),
		( rand: 20; astr: 'okay, i switch to english talking mode' )
	);
	ENG_Antwort_00002: array [1..3] of TAntwortRecord = (
		( rand: 10; astr: 'i dont have a name' ),
		( rand: 20; astr: 'you can call me as you would' ),
		( rand: 30; astr: 'i am a computer appplication, i dont have a personal name' )
	);
// ---------------------------------------------------------------------------
// english (prompt) sentences:
// ---------------------------------------------------------------------------
var
	ENG_SatzInput: array [1..4] of TInputRecord = (
		( afun: 1; astr: ['in','german','please'];    ares: @ENG_Antwort_00001; aptr: @ENG_Action_00001 ),
		( afun: 1; astr: ['what','is','your','name']; ares: @ENG_Antwort_00002; aptr: nil ),
		( afun: 1; astr: ['who'  ];                   ares: @ENG_Antwort_00000; aptr: nil ),
		( afun: 1; astr: ['where'];                   ares: @ENG_Antwort_00000; aptr: nil )
	);

implementation

procedure ENG_Action_00001;
begin
end;

end.

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
unit DEU_data;

interface
uses Common_data, ENG_data;

procedure DEU_Action_00001;

// ---------------------------------------------------------------------------
// german data part:
// ---------------------------------------------------------------------------
var
	DEU_Antwort_00000: array [1..3] of TAntwortRecord = (
		( rand: 10; astr: 'ich kann leider nicht helfen' ),
		( rand: 20; astr: 'es fehlen mir informationen zu deiner eingabe' ),
		( rand: 30; astr: 'zu wenig informationen verfügbar' )
	);
	DEU_Antwort_00001: array [1..2] of TAntwortRecord = (
		( rand: 10; astr: 'natürlich können wir uns auf deutsch unterhalten' ),
		( rand: 20; astr: 'einen augenblick, ich schalte zum deutsch modus' )
	);
	DEU_Antwort_00002: array [1..3] of TAntwortRecord = (
		( rand: 10; astr: 'ich habe keinen bestimmten namen' ),
		( rand: 20; astr: 'nenne mich doch wie du willst' ),
		( rand: 30; astr: 'ich bin ein Computer-Programm das keinen persönlichen Namen trägt' )
	);
// ---------------------------------------------------------------------------
// german (prompt) sentences:
// ---------------------------------------------------------------------------
var
	DEU_SatzInput: array [1..4] of TInputRecord = (
		( afun: 0.1; astr: ['bitte','auf','english'];   ares: @ENG_Antwort_00001; aptr: @DEU_Action_00001 ),
		( afun: 0.2; astr: ['wie','ist','dein','name']; ares: @DEU_Antwort_00002; aptr: nil ),
		( afun: 0.3; astr: ['wie','wirst','du','genannt'];       ares: @DEU_Antwort_00000; aptr: nil ),
		( afun: 0.4; astr: ['wie','rufen','dich','die','leute']; ares: @DEU_Antwort_00000; aptr: nil )
	);
	
implementation

procedure DEU_Action_00001;
begin
end;

end.

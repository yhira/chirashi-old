unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFileCompo, Menus, StdCtrls, ComCtrls, ToolWin, ImgList,
  ActnList, DateUtils, XPMan, StdActns, About, AppEvnts, ExtCtrls,
  ColorPicker, RichEdit, Dbg, TB2Item, TB2Dock, TB2Toolbar, TB2ExtItems,
  TB2ToolWindow;

const
//  APP_NAME  = 'チラシの裏';
  APP_VER   = 'Ver1.18.15';
  MEMO_TEXT = 'memo.txt';   
  MEMO_RTF = 'memo.rtf';
  _SEPARATOR = '-----------------------------';
type
	TOptionRec = record
    Delete: Boolean;
    DeleteSize: Cardinal;
    LFCount: Cardinal;
    DateTime: Boolean;   
    DateFormat: string;
    Separator: string;
    Marker: Boolean;
    DateTimeColor: TColor;
  end;     

  TFormMain = class(TForm)
    ToolBar1: TToolBar;
    ToolButtonNew: TToolButton;
    ToolButton2: TToolButton;
    ToolButtonFont: TToolButton;
    ToolButtonWordWrap: TToolButton;
    ToolButtonVersion: TToolButton;
    FontDialog1: TFontDialog;
    ToolButton1: TToolButton;
    ActionList1: TActionList;
    ActionNew: TAction;
    ActionFont: TAction;
    ActionWordWrap: TAction;
    ActionVer: TAction;
    ToolButtonOption: TToolButton;
    ActionOption: TAction;
    ActionStayOnTop: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    XPManifest1: TXPManifest;
    Memo1: TRichEdit;
    IniFileCompo1: TIniFileCompo;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    PopupMenu1: TPopupMenu;
    U1: TMenuItem;
    N1: TMenuItem;
    T1: TMenuItem;
    C1: TMenuItem;
    P1: TMenuItem;
    D1: TMenuItem;
    N2: TMenuItem;
    A1: TMenuItem;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ActionPrev: TAction;
    ActionNext: TAction;
    ToolButton13: TToolButton;
    ActionDeleteMemo: TAction;
    ToolButton14: TToolButton;
    ApplicationEvents1: TApplicationEvents;
    SepMarker: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ActionBold: TAction;
    ActionUnderLine: TAction;
    ImageList2: TImageList;
    ActionStrikeOut: TAction;
    ColorBtnFontColor1: TColorBtn;
    ColorBtnBkColor1: TColorBtn;
    ToolButton15: TToolButton;
    ActionItalic: TAction;
    ToolButton18: TToolButton;
    ControlBar1: TControlBar;
    ToolBarMarker: TToolBar;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ColorBtnFontColor: TColorBtn;
    ColorBtnBkColor: TColorBtn;
    ToolBarStanderd: TToolBar;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton48: TToolButton;
    ToolButton49: TToolButton;
    ToolButton50: TToolButton;
    ToolButton51: TToolButton;
    ToolButton52: TToolButton;
    ToolButton53: TToolButton;
    ToolButton54: TToolButton;
    ToolButton55: TToolButton;
    ToolButton56: TToolButton;
    ToolButton57: TToolButton;
    ToolButton58: TToolButton;
    ToolButton59: TToolButton;
    ToolButton65: TToolButton;
    ToolButton66: TToolButton;
    SaveTimer: TTimer;
    ActionSaveText: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActionFontExecute(Sender: TObject);
    procedure ActionVerExecute(Sender: TObject);
    procedure ActionWordWrapExecute(Sender: TObject);
    procedure ActionNewExecute(Sender: TObject);
    procedure ActionOptionExecute(Sender: TObject);
    procedure ActionStayOnTopExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActionNextExecute(Sender: TObject);
    procedure Memo1SelectionChange(Sender: TObject);
    procedure ActionPrevExecute(Sender: TObject);
    procedure ActionDeleteMemoExecute(Sender: TObject);
    procedure ApplicationEvents1Activate(Sender: TObject);
    procedure ActionBoldExecute(Sender: TObject);
    procedure ActionUnderLineExecute(Sender: TObject);
    procedure ActionStrikeOutExecute(Sender: TObject);
    procedure ColorBtnFontColor1Click(Sender: TObject);
    procedure ColorBtnBkColor1Click(Sender: TObject);
    procedure ActionItalicExecute(Sender: TObject);
    procedure ApplicationEvents1Deactivate(Sender: TObject);
    procedure ActionSaveTextExecute(Sender: TObject);
    procedure SaveTimerTimer(Sender: TObject);
  private
    { Private 宣言 }
    Option: TOptionRec;
    FStayOnTop: Boolean;
    FIsMarker: Boolean;
    procedure SaveINI;
    procedure ReadINI;
    procedure DeleteMany;
    procedure SetStayOnTop(const Value: Boolean);
    procedure GoToLine(ToLine: Integer);
    function GetNextLine: Integer;
    function GetPrevLine: Integer;
    function GetPrevDelLine: Integer;
    function GetNextDelLine: Integer;
    function CurrText: TTextAttributes;
    function GetBkColor: TColor;
    procedure SetBkColor(AColor: TColor);
    procedure SetIsMarker(const Value: Boolean);
    procedure SetSelColors(RichEdit: TRichEdit; TextColor, BackColor: TColor);
  protected
  public
    { Public 宣言 }
    property StayOnTop: Boolean read FStayOnTop write SetStayOnTop;
    property IsMarker: Boolean read FIsMarker write SetIsMarker;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses option, Types;


procedure TFormMain.FormCreate(Sender: TObject);
var sl: TStringList;
begin
//  SetSelColors(Memo1, clWhite, clNavy);
  ColorBtnFontColor.Selection := False;  
  ColorBtnBkColor.Selection := False;
  ToolBarMarker.Left := 382;
  ToolBarMarker.Top := 2;
  ReadINI;

//  sl := TStringList.Create;
//  try
//    if FileExists(MEMO_TEXT) then begin
//      sl.LoadFromFile(MEMO_TEXT);
//      if AnsiPos('{\rtf1\ansi\ansicpg93', sl.Text) = 1 then
//        Memo1.PlainText := False;
//    end;
//  finally
//    sl.Free;
//  end;
  if FileExists(MEMO_TEXT) then begin
    Memo1.Lines.LoadFromFile(MEMO_TEXT);
    DeleteFile(MEMO_TEXT);
    Memo1.Lines.SaveToFile(MEMO_RTF);
  end;     
  if FileExists(MEMO_RTF) then begin
    Memo1.Lines.LoadFromFile(MEMO_RTF);
  end;

  Memo1SelectionChange(Memo1);
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//  Memo1.PlainText := True;
  Hide;
  SaveINI;
  DeleteMany;
  Memo1.Lines.SaveToFile(MEMO_RTF);
end;

procedure TFormMain.ReadINI;
begin
  with IniFileCompo1 do begin
    ReadForm('Window', 'Form', FormMain);
    ToolBarStanderd.Left := ReadInt('Window', 'ToolBarStanderd.Left', ToolBarStanderd.Left);
    ToolBarStanderd.Top := ReadInt('Window', 'ToolBarStanderd.Top', ToolBarStanderd.Top);
    ToolBarMarker.Left := ReadInt('Window', 'ToolBarMarker.Left', ToolBarMarker.Left);
    ToolBarMarker.Top := ReadInt('Window', 'ToolBarMarker.Top', ToolBarMarker.Top);
    ReadFont('Option', 'Font', Memo1.Font);
    //折り返し
    ActionWordWrap.Checked := ReadBool('Option', 'WordWrap', True);
    Memo1.WordWrap := ActionWordWrap.Checked;
    if Memo1.WordWrap then
      Memo1.ScrollBars  := ssVertical
    else Memo1.ScrollBars := ssBoth;
    StayOnTop := ReadBool('Option', 'StayOnTop', False);
    ColorBtnFontColor.ActiveColor := ReadColor('Option',
      'ColorBtnFontColor.ActiveColor', ColorBtnFontColor.ActiveColor);
    ColorBtnFontColor.TargetColor := ColorBtnFontColor.ActiveColor;
    ColorBtnBkColor.ActiveColor := ReadColor('Option',
      'ColorBtnBkColor.ActiveColor', ColorBtnBkColor.ActiveColor); 
    ColorBtnBkColor.TargetColor := ColorBtnBkColor.ActiveColor;

    //オプション
    with Option do begin
      Delete := ReadBool('Option', 'Del', True);
      DeleteSize := ReadCardinal('Option', 'DelSize', 10);
      LFCount := ReadCardinal('Option', 'LFCount', 2);
      DateTime := ReadBool('Option', 'Date', True);  
      DateFormat := ReadStr('Option', 'DateFormat', 'yyyy/mm/dd hh:nn');
      Separator := ReadStr('Option', 'Separator', _SEPARATOR);
      Marker := ReadBool('Option', 'Marker', False);
      IsMarker := Marker;
      DateTimeColor := ReadColor('Option', 'DateTimeColor', Memo1.Font.Color);
    end;
  end;

end;

procedure TFormMain.SaveINI;
begin
  with IniFileCompo1 do begin
    WriteForm('Window', 'Form', FormMain);    
    WriteInt('Window', 'ToolBarStanderd.Left', ToolBarStanderd.Left);
    WriteInt('Window', 'ToolBarStanderd.Top', ToolBarStanderd.Top);
    WriteInt('Window', 'ToolBarMarker.Left', ToolBarMarker.Left);
    WriteInt('Window', 'ToolBarMarker.Top', ToolBarMarker.Top);
    WriteFont('Option', 'Font', Memo1.Font);
    //折り返し
    WriteBool('Option', 'WordWrap', ToolButtonWordWrap.Down); 
    WriteBool('Option', 'StayOnTop', StayOnTop);
    WriteColor('Option','ColorBtnFontColor.ActiveColor', ColorBtnFontColor.ActiveColor);
    WriteColor('Option', 'ColorBtnBkColor.ActiveColor', ColorBtnBkColor.ActiveColor);

    //オプション
    with Option do begin
    	WriteBool('Option', 'Del', Delete);
      WriteCardinal('Option', 'DelSize', DeleteSize);  
      WriteCardinal('Option', 'LFCount', LFCount);
      WriteBool('Option', 'Date', DateTime);
      WriteStr('Option', 'Separator', Separator);
      WriteStr('Option', 'DateFormat', DateFormat);
      WriteBool('Option', 'Marker', Marker);
      WriteColor('Option', 'DateTimeColor', DateTimeColor);

    end;
  end;
  
end;

procedure TFormMain.ActionFontExecute(Sender: TObject);
var tmpStart: Integer;
begin
  FontDialog1.Font.Assign(Memo1.Font);
  if FontDialog1.Execute then begin
    Memo1.Font.Assign(FontDialog1.Font);
    tmpStart := Memo1.SelStart;
    Memo1.SelStart := 0;
    Memo1.SelLength := Length(Memo1.Text);
    Memo1.SelAttributes.Size := FontDialog1.Font.Size;  
    Memo1.SelAttributes.Name := FontDialog1.Font.Name;
    Memo1.SelStart := tmpStart;
//    Application.HandleMessage;
//    Memo1.PlainText := False;
//    if Option.Marker then
//      Memo1.DefAttributes.Size := FontDialog1.Font.Size;
  end;
end;

procedure TFormMain.ActionVerExecute(Sender: TObject);
begin
  AboutForm := TAboutForm.Create(Self);
  try
    AboutForm.ShowModal;
  finally
    AboutForm.Release;
  end;
//  MessageDlg(APP_NAME + ' ' + APP_VER + #13#10 +
//                         'Copyright (C) 2003-' +
//                         IntToStr(YearOf(Now)) + ' by yhira', mtInformation, [mbOK], 0);
//  Application.MessageBox(APP_NAME + ' ' + APP_VER + #13#10 +
//                         'Copyright (C) 2003-2006 by yhira' + #13#10 +
//                         #13#10 +
//                         'Mousist Software' + #13#10 +
//                         'http://mousist.cside.com/',
//                         'バージョン情報'
//                         MB_ICONINFORMATION)
end;

procedure TFormMain.ActionWordWrapExecute(Sender: TObject);
begin
	ActionWordWrap.Checked := not ActionWordWrap.Checked;
  Memo1.Lines.BeginUpdate;
  Memo1.WordWrap := ActionWordWrap.Checked;
  Memo1.Lines.EndUpdate;
//  Memo1.WordWrap := ToolButtonWordWrap.Down;
  if Memo1.WordWrap then begin
    Memo1.ScrollBars  := ssVertical;
  end else begin
    Memo1.ScrollBars := ssBoth;
  end;
end;

procedure TFormMain.ActionNewExecute(Sender: TObject);
  function GetLFCount: string;
  var i: Integer;
  begin
    Result := '';
    for i := 0 to Option.LFCount-1 do begin
      Result := Result + #13#10;
    end;
  end;
	function AddSeparator: string;
  var
  	sDateTime: string;
  begin
    Result := '';
    if Option.DateTime then begin
      sDateTime :=  FormatDateTime(Option.DateFormat, Now) + #13#10;
    end else begin
      sDateTime := '';
    end;
    Result := GetLFCount + 
              sDateTime +
              Option.Separator;// + #13#10;
    
  end;
var
  cl: Integer;
begin
  Memo1.Lines.BeginUpdate;
  Memo1.SelAttributes.Color := Memo1.Font.Color;
  Memo1.SelAttributes.Style := Memo1.Font.Style;
  SetBkColor(clWhite);
  
  Memo1.Lines.Insert(0, AddSeparator);
  if Option.DateTime and Option.Marker then begin
    cl := Option.LFCount;
    Memo1.SelStart := AnsiPos(Memo1.Lines[cl], Memo1.Text)-1;
    Memo1.SelLength := Length(Memo1.Lines[cl]);
    Memo1.SelAttributes.Color := Option.DateTimeColor;
    
  end;
//  Memo1.Text := AddSeparator + Memo1.Text;
  Memo1.SelStart := 0;
  Memo1.SetFocus;
  Memo1.Lines.EndUpdate;
end;

procedure TFormMain.ActionOptionExecute(Sender: TObject);
begin
	FormOption := TFormOption.Create(Self);
  try
  	with Option, FormOption do begin
      CheckBoxDelete.Checked   := Delete;
      SpinEditDeleatSize.Value := DeleteSize;
      SpinEditLFCount.Value := LFCount;
      CheckBoxDateTime.Checked := DateTime;   
      EditDateFormat.Text := DateFormat;
      EditSeparator.Text       := Separator;
      CheckBoxMarker.Checked := Marker;
      ColorBoxDateTimeColor.Selected := DateTimeColor;

//      SpinEditDeleatSize.Enabled := Delete;

    end;
    if FormOption.ShowModal = mrOK then begin
      with Option, FormOption do begin
        Delete     := CheckBoxDelete.Checked;
        DeleteSize := SpinEditDeleatSize.Value;
        LFCount := SpinEditLFCount.Value;
        DateTime   := CheckBoxDateTime.Checked;
        DateFormat := EditDateFormat.Text;
        Separator  := EditSeparator.Text;
        Marker := CheckBoxMarker.Checked;
        IsMarker := Marker;
        DateTimeColor := ColorBoxDateTimeColor.Selected;
      end;
    end;
  finally
  	FormOption.Release;
  end;
end;

procedure TFormMain.DeleteMany;
var
	DelSise: Cardinal; i: Integer;
begin
  Memo1.Lines.BeginUpdate;
	DelSise := Option.DeleteSize * 1024;
//	if Option.Delete then begin
//    Memo1.Text := Copy(Memo1.Text, 1, DelSise);
//  end;
  if Option.Delete then begin
    for i := Memo1.Lines.Count-1 downto 0 do begin
      if Length(Memo1.Text) > DelSise then begin
        Memo1.Lines.Delete(i);
      end else begin
        Break;
      end;
    end;
  end;
  Memo1.Lines.EndUpdate;
end;

procedure TFormMain.ActionStayOnTopExecute(Sender: TObject);
begin
  StayOnTop := not StayOnTop;
end;

procedure TFormMain.SetStayOnTop(const Value: Boolean);
begin
  FStayOnTop := Value;
  ActionStayOnTop.Checked := Value;
  If Value Then  begin
    //表示
    SetWindowPos(Handle, HWND_TOPMOST,0,0,0,0,SWP_NOSIZE or SWP_NOMOVE);
  end else begin
    //解除
    SetWindowPos(Handle, HWND_NOTOPMOST,0,0,0,0,SWP_NOSIZE or SWP_NOMOVE);
  End;
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  Memo1.Invalidate;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  Memo1.SetFocus;
end;

function TFormMain.GetNextLine: Integer;
var i, n: Integer; s: string;
begin
  Result := -1;
  n := Memo1.Perform(EM_LINEFROMCHAR, -1, 0);
  if n+1 < Memo1.Lines.Count then begin
    for i := n+1 to Memo1.Lines.Count-1 do begin
      s := Memo1.Lines[i];
      if s = Option.Separator then begin
        if i+1 < Memo1.Lines.Count then begin
          Result := i+1;
          Exit;
        end;
      end;
    end;
  end;
end;

function TFormMain.GetPrevLine: Integer;
var i, n, count: Integer; s: string;
begin
  Result := 0;
  count := 0;
  n := Memo1.Perform(EM_LINEFROMCHAR, -1, 0);
  if n = 0 then begin
    Result := -1;
    Exit;
  end else begin
    for i := n downto 0 do begin
      s := Memo1.Lines[i];
      if s = Option.Separator then begin
        if count >= 1 then begin
          Result := i+1;
          Exit;
        end;
        Inc(count);
      end;
    end;
  end;
end;

function TFormMain.GetNextDelLine: Integer;
var i, n: Integer; s: string;
begin             
  if Memo1.Text = '' then begin
    Result := -1;
    Exit;
  end;
  Result := Memo1.Lines.Count-1;
  n := Memo1.Perform(EM_LINEFROMCHAR, -1, 0);
  if n < Memo1.Lines.Count then begin
    for i := n to Memo1.Lines.Count-1 do begin
      s := Memo1.Lines[i];
      if s = Option.Separator then begin
        if i < Memo1.Lines.Count then begin
          Result := i;
          Exit;
        end;
      end;
      Result := i;
    end;
  end;
end;

function TFormMain.GetPrevDelLine: Integer;
var i, n, count: Integer; s: string;
begin
  if Memo1.Text = '' then begin
    Result := -1;
    Exit;
  end;
  Result := 0;
  count := 0;
  n := Memo1.Perform(EM_LINEFROMCHAR, -1, 0);
  if n = 0 then begin
    Result := 0;
    Exit;
  end else begin
    if (n-1) > 0 then begin
      for i := n-1 downto 0 do begin
        s := Memo1.Lines[i];
        if s = Option.Separator then begin
          Result := i+1;
          Exit;
        end;
      end;
    end;

  end;
end;

procedure TFormMain.GoToLine(ToLine:Integer);
var p: Integer;
begin
  with Memo1 do begin
    SelStart := SendMessage(Handle, EM_LINEINDEX, ToLine, 0);
    SendMessage(Handle, EM_SCROLLCARET, 0, 0);
    SetFocus;
    //カーソルのある行位置を得る
    p := Perform(EM_LINEFROMCHAR, SelStart, 0);
    //一番上の行位置を引く
    p := p - Perform(EM_GETFIRSTVISIBLELINE,0,0);
    //スクロールさせる
    Perform(EM_LINESCROLL,0,p);
  end;

end;

procedure TFormMain.ActionNextExecute(Sender: TObject);
begin
  GoToLine(GetNextLine);
end;

procedure TFormMain.ActionPrevExecute(Sender: TObject);
begin
  GoToLine(GetPrevLine);
end;

procedure TFormMain.Memo1SelectionChange(Sender: TObject);
var Length0: Boolean;
begin
  ActionNext.Enabled := GetNextLine <> -1;  
  ActionPrev.Enabled := Memo1.Perform(EM_LINEFROMCHAR, -1, 0) <> 0;
  ActionDeleteMemo.Enabled := Memo1.Text <> '';

  Length0 := Memo1.SelLength = 0;
//  if Length0 then begin
//    Memo1.DefAttributes.Color := Memo1.Font.Color;
//    Memo1.DefAttributes.Style := Memo1.Font.Style;
//  end;
  ActionBold.Checked := (fsBold in Memo1.SelAttributes.Style) and not Length0;
  ActionUnderLine.Checked := (fsUnderline in Memo1.SelAttributes.Style) and not Length0;
  ActionStrikeOut.Checked := (fsStrikeOut in Memo1.SelAttributes.Style) and not Length0;
  ActionItalic.Checked := (fsItalic in Memo1.SelAttributes.Style) and not Length0;
//  ColorBtnFontColor.ActiveColor := Memo1.SelAttributes.Color;
//  ColorBtnFontColor.TargetColor := Memo1.SelAttributes.Color;  
//  ColorBtnBkColor.ActiveColor := GetBkColor;
//  ColorBtnBkColor.TargetColor := GetBkColor;
end;

procedure TFormMain.ActionDeleteMemoExecute(Sender: TObject);
var i, n, p: Integer;
begin
  if GetNextDelLine = -1 then Exit;
  Memo1.Lines.BeginUpdate;
  n := GetNextDelLine;
  p := GetPrevDelLine;
  for i := n downto p do begin
    Memo1.Lines.Delete(i);
  end;
  Memo1.Lines.EndUpdate;
  GoToLine(GetPrevLine);
end;

procedure TFormMain.ApplicationEvents1Activate(Sender: TObject);
var p: TPoint;
  Res:DWORD;
begin
  GetCursorPos(p);
  p := Memo1.ScreenToClient(p);
  if PtInRect(Memo1.ClientRect, p) then begin
    Memo1.Perform(WM_LBUTTONDOWN, 1, MakeLParam(p.X, p.Y));
  end;
end;

function TFormMain.CurrText: TTextAttributes;
begin
//  if Memo1.SelLength > 0 then Result := Memo1.SelAttributes
//  else Result := Memo1.DefAttributes;
  Result := Memo1.SelAttributes;
end;

procedure TFormMain.ActionBoldExecute(Sender: TObject);
begin
  if not ActionBold.Checked then
    CurrText.Style := CurrText.Style + [fsBold]
  else
    CurrText.Style := CurrText.Style - [fsBold];
  Memo1SelectionChange(nil);
end;

procedure TFormMain.ActionUnderLineExecute(Sender: TObject);
begin
  if not ActionUnderLine.Checked then
    CurrText.Style := CurrText.Style + [fsUnderline]
  else
    CurrText.Style := CurrText.Style - [fsUnderline];
  Memo1SelectionChange(nil);
end;

procedure TFormMain.ActionStrikeOutExecute(Sender: TObject);
begin
  if not ActionStrikeOut.Checked then
    CurrText.Style := CurrText.Style + [fsStrikeOut]
  else
    CurrText.Style := CurrText.Style - [fsStrikeOut];
  Memo1SelectionChange(nil);
end;

procedure TFormMain.ColorBtnFontColor1Click(Sender: TObject);
begin               //ColorBtnFontColor.AutoClicked := False;
  CurrText.Color := ColorBtnFontColor.ActiveColor; // ColorBtnFontColor.
  Memo1SelectionChange(nil);
end;

procedure TFormMain.ColorBtnBkColor1Click(Sender: TObject);
begin
  SetBkColor(ColorBtnBkColor.ActiveColor);
  Memo1SelectionChange(nil);
end;

procedure TFormMain.SetBkColor(AColor: TColor);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  with Format do begin
    cbSize := SizeOf(Format);
    dwMask := CFM_BACKCOLOR;// + CFM_COLOR;
//    crTextColor := clRed;
    crBackColor := AColor;
    Memo1.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
  end;
end;

function TFormMain.GetBkColor: TColor;
var 
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  with Format do begin
    cbSize := SizeOf(Format);
    dwMask := CFM_BACKCOLOR;
    Memo1.Perform(EM_GETCHARFORMAT, SCF_SELECTION, Longint(@Format));
  end;
  Result := Format.crBackColor;
  if Result = clBlack then Result := Memo1.Color;
//  DOut(ColorToString(Result));
end;

procedure TFormMain.SetIsMarker(const Value: Boolean);
begin
  ToolBarMarker.Visible := Value;
//  FIsMarker := Value;
////  ToolBar1.Visible := False;
////
//  ColorBtnBkColor.Visible := Value;
//  ColorBtnFontColor.Visible := Value;
//  ActionBold.Visible := Value;
//  ActionUnderLine.Visible := Value;
//  ActionStrikeOut.Visible := Value;
//  ActionItalic.Visible := Value;
//  SepMarker.Visible := Value;
////
////  ToolBar1.Visible := True;
//  ToolBar1.Refresh;
end;

procedure TFormMain.SetSelColors(RichEdit: TRichEdit; TextColor, BackColor: TColor);
var
  Format: CHARFORMAT2;
begin                            
  FillChar(Format, SizeOf(Format), 0);
  with Format do
  begin
    cbSize := SizeOf(Format);
    dwMask := CFM_BACKCOLOR or CFM_COLOR;
    crTextColor := TextColor;
    crBackColor := BackColor;
    Richedit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
  end;
end;

procedure TFormMain.ActionItalicExecute(Sender: TObject);
begin
  if not ActionItalic.Checked then
    CurrText.Style := CurrText.Style + [fsItalic]
  else
    CurrText.Style := CurrText.Style - [fsItalic];
  Memo1SelectionChange(nil);
end;

procedure TFormMain.ApplicationEvents1Deactivate(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(MEMO_RTF);
end;

procedure TFormMain.ActionSaveTextExecute(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(MEMO_RTF);
  Caption := 'テキストを保存しました。';
  SaveTimer.Enabled := True;
end;

procedure TFormMain.SaveTimerTimer(Sender: TObject);
begin
  Caption := Application.Title;
  SaveTimer.Enabled := False;
end;

end.

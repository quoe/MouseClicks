unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ShellAPI, CLIPBrd;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    LabeledEdit1: TLabeledEdit;
    TabSheet2: TTabSheet;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    TabSheet3: TTabSheet;
    Image1: TImage;
    Button3: TButton;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Label1: TLabel;
    Label2: TLabel;
    LabeledEdit6: TLabeledEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button4: TButton;
    TabSheet4: TTabSheet;
    ScrollBar1: TScrollBar;
    GroupBox6: TGroupBox;
    Button5: TButton;
    Label3: TLabel;
    Button6: TButton;
    LabeledEdit7: TLabeledEdit;
    Label4: TLabel;
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
  procedure Repaint();
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMDropFiles (var Msg: TMessage); message wm_DropFiles;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.WMDropFiles(var Msg: TMessage);
var hDrop: integer;
    i: integer;
    NameSize: integer;
    FileName: string;
begin
  hDrop := Msg.WParam;
  NameSize := DragQueryFile(hDrop, 0, nil, 0);
  SetLength(FileName, NameSize+1);
  DragQueryFile(hDrop, 0, PChar(FileName), NameSize+1);
  DragFinish(hDrop);
  LabeledEdit1.Text := FileName;
end;

procedure TForm1.Button1Click(Sender: TObject);
var S, Sk1, Sk2: String;
    x, y, i, R: integer;
begin
  Memo1.Clear;
  Memo2.Clear;
  Image1.Picture.Bitmap.Width := StrToInt(LabeledEdit4.Text);;  //Ширина
  Image1.Picture.Bitmap.Height := StrToInt(LabeledEdit5.Text);; //Высота
  Repaint;
  Memo1.Lines.LoadFromFile(LabeledEdit1.Text);
  S := Memo1.Text;
  //'[log] CLICK on L(515,487)@S(0)[0,0 1280x1024]';
  S  := StringReplace(S, LabeledEdit2.Text, '', [rfReplaceAll, rfIgnoreCase]);
  S  := StringReplace(S, LabeledEdit3.Text, '', [rfReplaceAll, rfIgnoreCase]);
  Memo1.Text := S;

  //Delete(S, Pos(Sk2, S), Length(S));

  Image1.Canvas.Brush.Color := ColorBox1.Selected; //Цвет заливки окружности
  Image1.Canvas.Pen.Color := ColorBox2.Selected;  //Цвет самой окружности (точнее границ)
  R := StrToInt(LabeledEdit6.Text);
  for I := 0 to Memo1.Lines.Count - 1 do
  begin
    S := Memo1.Lines[i];
    x := StrToInt(Copy(S, 1, Pos(LabeledEdit7.Text, S) - 1));
    y := StrToInt(Copy(S, Pos(LabeledEdit7.Text, S) + 1, Length(S)));
    if CheckBox1.Checked then
      x := -x;
    if CheckBox2.Checked then
      y := -y;
    Memo2.Lines.Add(IntToStr(x) + #$9 + IntToStr(y));
    //Image1.Canvas.Ellipse(x, y, R, R); // рисуем окружность.
    Image1.Canvas.Ellipse(X-R, Y-R, X+R, Y+R);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Clipboard.AsText := Memo2.Text;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Repaint;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  openDialog : TOpenDialog;    // Переменная OpenDialog
begin
  // Создание объекта OpenDialog - назначение на нашу переменную OpenDialog
  openDialog := TOpenDialog.Create(self);
  openDialog.InitialDir := GetCurrentDir;
  openDialog.Filter :=
    'TXT files|*.txt';

  if openDialog.Execute
  then LabeledEdit1.Text := openDialog.FileName;
  openDialog.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  formattedDateTime : string;
begin
  DateTimeToString(formattedDateTime, 'yymmdd_hh-mm-ss', Now);
  Image1.Picture.SaveToFile(ExtractFilePath(ParamStr(0)) + 'Clicks' + formattedDateTime + '.bmp');
end;

procedure TForm1.Button6Click(Sender: TObject);
var i: integer;
    //edit: TComponent;
    St: TStringList;
begin
  St:= TStringList.Create;
  for i := 2 to 7 do
  begin
    St.Add((Form1.FindComponent('LabeledEdit'+inttostr(i)) as TLabeledEdit).Text);
    //(Form1.FindComponent('LabeledEdit'+inttostr(i)) as TLabeledEdit).Text := '0';
  end;
  St.SaveToFile(ExtractFilePath(ParamStr(0)) + 'MouseClicks_Options.txt');
  St.Free;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar(ExtractFilePath(Application.ExeName)), '', '', 1);
end;

procedure TForm1.Repaint();
begin
  Image1.Canvas.Brush.Color := clWhite;
  Image1.Canvas.Pen.Color := clWhite;
  Image1.Canvas.Rectangle(Image1.ClientRect);
  Image1.Repaint;
end;
procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Form1.AlphaBlendValue := ScrollBar1.Position;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i: integer;
    St: TStringList;
begin
  if FileExists(ExtractFilePath(ParamStr(0)) + 'MouseClicks_Options.txt') then
  begin
    St:= TStringList.Create;
    St.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'MouseClicks_Options.txt');
    for i := 2 to 7 do
    begin
      (Form1.FindComponent('LabeledEdit'+inttostr(i)) as TLabeledEdit).Text := St.Strings[i - 2];
      //(Form1.FindComponent('LabeledEdit'+inttostr(i)) as TLabeledEdit).Text := '0';
    end;
    St.Free;
  end;
  DragAcceptFiles(Handle, true);
  // Сделаем первоначальную заливку
  PageControl1.TabIndex := 0;
  Repaint;

end;

end.

uses CRT;

begin
  Print('Поиск Автомобиля:');
  var f: TextFile;
  var p2, p3, p4, p5: string;
  var c1, c2, c3, c4, c5, c6: char;
  var p6: string;
  Read(c1, c2, c3, c4, c5, c6);
  Assign(f, 'base.txt');
  Reset(f);
  while not Eof(f) do
  begin
    Readln(f, p6, p2, p3, p4, p5);
    if(c1 = p6[1]) and (c2 = p6[2]) and (c3 = p6[3]) and (c4 = p6[4]) and (c5 = p6[6]) and (c6 = p6[6]) then break;
  end;
  Print('_________________________', #13#10, 'Сведенья:');
  Println(p6, p2, p3, p4, p5);
  Close(f);
  repeat
  until (keyPressed);
end.
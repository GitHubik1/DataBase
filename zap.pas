var
  a: array[1..12]of char;
  f: TextFile;

begin
  var (s1, s2, s3) := (1, 1, 1);
  var i := 111;
  a[1] := 'A';
  a[2] := 'B';
  a[3] := 'E';
  a[4] := 'K';
  a[5] := 'M';
  a[6] := 'H';
  a[7] := 'O';
  a[8] := 'P';
  a[9] := 'C';
  a[10] := 'T';
  a[11] := 'Y';
  a[12] := 'X';
  //------------------------------------------------------------------------------
  //ОСНОВНАЯ ПРОГРАММА
  //------------------------------------------------------------------------------
  AssignFile(f, 'base.txt');
  Rewrite(f);
  while true do
  begin
    var p1, p2, p3, p4: string;
    case Random(1, 10) of
      1: p1:='Иван';
      2: p1:='Игорь';
      3: p1:='Даша';
      4: p1:='Петр';
      5: p1:='Ира';
      6: p1:='Олег';
      7: p1:='Рюрик';
      8: p1:='Алекс';
      9: p1:='Давид';
      10: p1:='Оля';
    end;
    case Random(1, 10) of
      1: p2:='Иванов(а)';
      2: p2:='Свиньев(а)';
      3: p2:='Сергеев(а)';
      4: p2:='Петров(а)';
      5: p2:='Степонянов(а)';
      6: p2:='Олегов(а)';
      7: p2:='Сервисов(а)';
      8: p2:='Кодов(а)';
      9: p2:='Файлов(а)';
      10: p2:='Ольгов(а)';
    end;
    case Random(1, 5) of
      1: p3:='Хонда';
      2: p3:='Мерсидес';
      3: p3:='Тайота';
      4: p3:='Пежо';
      5: p3:='Нисан';
    end;
    case Random(1, 5) of
      1: p4:='Белый';
      2: p4:='Серый';
      3: p4:='Чёрный';
      4: p4:='Красный';
      5: p4:='Салатовый';
    end;
    writeln(f ,$'{a[s1]}{i}{a[s2]}{a[s3]} {p1} {p2} {p3} {p4}');
    Inc(s3);
    if(s3 = 13) then begin
      s3 := 1;
      Inc(s2);
    end;
    if(s2 = 13) then begin
      s2 := 1;
      Inc(i);
    end;
    if(i = 1000) then begin
      i := 111;
      Inc(s1);
    end;
    if(s1 = 13) then break;
  end;
end.
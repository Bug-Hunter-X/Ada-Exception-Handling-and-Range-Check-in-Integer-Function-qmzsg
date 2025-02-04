```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num > 10 then
      return True;
   else
      return False;
   end if;
exception
   when others =>
      return False; -- Handle potential exceptions
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer := 20;
   Result : Boolean;
begin
   Result := Check_Range(Num);
   Put_Line("Result: " & Boolean'Image(Result));

   Num := 5; 
   Result := Check_Range(Num);  
   Put_Line("Result: " & Boolean'Image(Result));
   
   Num := -5; -- potential exception
   Result := Check_Range(Num);
   Put_Line("Result: " & Boolean'Image(Result));
end Main;
```
```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num > 10 then
      return True;
   else
      return False;
   end if;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error: Number out of range");
      return False; -- Or raise a custom exception
   when others =>
      Put_Line("Unexpected Error: " & Ada.Exceptions.Exception_Message);
      return False; 
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
   
   Num := Integer'Last + 1; -- Force a Constraint_Error
   Result := Check_Range(Num);
   Put_Line("Result: " & Boolean'Image(Result));
end Main;
```
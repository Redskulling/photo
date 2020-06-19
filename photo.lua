-- Set the folder location
folder = "Images/Night/"

-- open the file
file = io.open("out.txt", "w");

file:write();

file:close();

collumLength = 4;

f = assert (io.popen("ls " .. folder))

file = io.open("out.txt", "a");

local i = 1;
for line in f:lines() do
    if (i - 1) % collumLength == 0 or i == 1 then 
        file:write("<div class=\"column\">\n");
    else
        file:write("");
    end
    file:write(
        "\t<img src=\"" .. folder .. line .. "\" alt=\"" .. line .. "\">"
    )

    if i % collumLength == 0 then 
        file:write("\n</div>\n");
    else
        file:write("\n");
    end

    i = i + 1;
end

if (i & collumLength ~= 0) then
    file:write("</div>");
end

file:close();

f:close();
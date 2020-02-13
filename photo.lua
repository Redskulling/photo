-- Set the folder location
folder = "Images/Abstract/"

-- open the file
file = io.open("out.txt", "w");

file:write();

file:close();

f = assert (io.popen("ls " .. folder))

file = io.open("out.txt", "a");

for line in f:lines() do
    file:write(
        "<div class=\"column\">\n" ..
        "\t<img src=\"" .. folder .. line .. "\" alt=\"" .. line .. "\">\n" ..
        "</div>\n"
    )
end

file:close();

f:close();
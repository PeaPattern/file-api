# file-api
save.profile('example')
save.save('example', 'dataname', "money:999")
print(save.load('example', 'dataname')

--> Compared to <--

makefolder("example")
writefile("example/dataname", "money:999")

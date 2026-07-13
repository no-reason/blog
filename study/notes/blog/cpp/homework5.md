B
C
B
C
B
A
C
C
B
A
survive
ofstream
ifstream
<<
exits
True
False
True
False
True
True
True
False
True
True
把 "Buy milk" 写入 todo.txt。
从 notes.txt 中读取第一行内容到 note。
Learn C++
这段代码只是读取笔记，没有把它保存成持久化数据。
file.close()
临时存储只在程序运行期间存在；持久化存储会保存到磁盘，程序关闭后仍然保留。
持久化让记事应用在程序结束后仍能保留数据，用户下次还可以继续使用。
ofstream 用来写文件，ifstream 用来读文件。
持久化表示数据可以在程序关闭后继续存在。
5_1.cpp
5_2.cpp
5_3.cpp
5_4.cpp
5_5.cpp
因为它把笔记从“只在程序运行时存在”变成了“程序关闭后也能保留”，这样用户下次打开程序时还能继续看到之前保存的内容。

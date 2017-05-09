# IConsoleTest
及时log日志查看工具，可以捕获系统崩溃。


使用：<br>
1.在AppDelegate中，替换原window。 <br>
self.window = iConsoleWindow(frame: UIScreen.main.bounds)<br>
2.调用<br>
 [iConsole warn:@" [data]：%@",result error:NULL]];<br>
<br>
其它：<br>
1:主动调用显示<br>
[iConsole show];<br>
2:三跟手指由下往上滑动. 模拟器两根手指, 默认启动<br>
<br>
[iConsole sharedConsole].simulatorTouchesToShow = YES;  <br>
[iConsole sharedConsole].deviceTouchesToShow = YES;<br>
<br>
3:摇动手机启动 默认启用<br>
<br>
[iConsole sharedConsole].deviceShakeToShow = YES;<br>

4，注意：
iConsole 默认记录的日志条数是1000条. 如果日志记录到上限时,会删除最早的一条,如此循环,可通过如下属性设置上下限:
[[iConsole sharedConsole] setMaxLogItems:40];

_maxLogItems = 40; //change by zjs 原来是1000. 属性列表不适合存大量数据,侧重于实时性，没有必要缓存那么多。

��    
      l               �      �      �   	   �      �      �   +     ^   8     �  �   �  }  g     �     �     	          6  O   O  �   �     .  �   ;   1. Import dependencies 2. Constructing Op 3. Script 4. Trace 5. C++ deployment An operation (Op) is a class or a function. Note that we import various types from Python typing module as Matx enforces type annotations. Quick Start This section provides an example to walk through the basic usage of Matx. The complete code can be found `here <https://github.com/bytedance/matxscript/blob/main/examples/text2ids/text2ids.py>`_. Project-Id-Version: Matxscript 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-12-10 03:03+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.3
 1. Import 相关依赖 2. OP 创建 3. Script 编译 4. Trace 保存编译产物 5. C++代码调用产物 operator，需要是一个函数，或者是一个实现了__call__方法的类 注意在涉及到matx编译部分的Python代码需要进行类型标注，因此我们import了typing模块下的一些Python常用类型。 快速开始 下面我们一起结合一个简单的范例来熟悉下matx的使用。完整代码可访问 `这里 <https://github.com/bytedance/matxscript/blob/main/examples/text2ids/text2ids.py>`_  
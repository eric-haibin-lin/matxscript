��          T               �   	   �   	   �      �   Z   �      
  [   %  }  �  	   �  	   	       �     !   �  �   �   Example 1 Example 2 Functionality Note that we enforce type annotation of the class members and signatures of the functions. Usage  :meth:`matx.script` matx.script is used to compile Python function/class into corresponding C++ function/class. Project-Id-Version: Matxscript 
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
 案例一 案例二 功能 注意：所有的类的成员变量和函数的声明需要强制类型标注（python的typing的link）具体请参照编程规范（link to 编程规范） 使用方式 :meth:`matx.script`  通过matx.script可以将用Python的类/函数翻译成 C++，并提供统一接口，以op的形式集成到整体 pipeline。 
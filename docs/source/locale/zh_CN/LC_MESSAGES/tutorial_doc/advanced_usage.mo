��          D               l   �   m   m   2     �     �  }  �  �   @  �        �     �   Due to Gobal Interpreter Lock (GIL) implemented in Python interpreter, multithreading in Python can be truly executed in parallel. In matx, we implement matx.pmap to support multithreading in C++. Matx implements a builtin regular expression engine based on `PCRE <https://github.com/PCRE2Project/pcre2>`_. Multithreading Regular Expression Project-Id-Version: Matxscript 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-12-10 08:52+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.3
 对于原生 python，受限制于 GIL，并行以多进程的方式进行，但在日常使用，由其是 Serving 中，多线程 有着广泛的需求，我们当前支持 pmap并行原语。 Matx 内置了一个基于 `PCRE <https://github.com/PCRE2Project/pcre2>`_ 的高性能正则引擎，目前单独封装了接口，可以如下使用 并行支持 正则表达式 
��          �               \     ]  ;   }  )   �  u   �  W   Y     �  8   �  	   �  5   	  -   ?  .   m     �  �   �     @  P   ]  �   �  h   �     �  P    }  b  7   �  q   	     �	  s   �	  S   
     p
  F   }
     �
  =   �
  8   	  7   B     z  o   �     �  @     _   Q  u   �  !   '  �   I   Code after return is discarded. Every rectangle in the following chart is considered an Op. For now, only the Op Call Graph is saved. For operators implemented in Python. It needs matx.script to be able to use in trace. Please refer to Script chapter. For/While is unrolled based on the given input during trace. Usually, this causes bugs. Integration Examples Modular design the pipeline. Each module is an operator. Objective Only the if-branch executed during trace is recorded. Operators can be implemented in C++ or Python Organize operators in your pipeline into a DAG Restrictions on design pattern Take text classification task as an example. Tokenization can be designed  as an operator. One-hot encoding can be another operator. Third party library support. To use trace without potential bugs, users need to follow the restrctions below: Trace can conviencelly pack training code written in Python to a format that matx c++ interface can recognize and use for online inference. It records the execution process of given Python code and saves it as a graph on disk. Trace depends on the execution of the code, so only code executed during the trace process is recoreded. What does trace record When the code being traced contains calls to a third party library such as requests, then returns from the calls are saved as constant and used when executing the trace result. In other words, third party libraries are only called during the generation of the trace file but not called anymore during loading and running the trace file. Project-Id-Version: Matxscript 
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
 Return 之后的逻辑会被丢弃，需要灵活把握 比如下图的文本分类的 pipeline，每个框均是一个 Op，这些 Op 串联起来是一个简单的 DAG 目前只保存 OP Call Graph 对于python开发的op，需要可以被matx.script否则仍会受到trace的约束，具体请参照 Script章节 For/While 循环会根据当时的输入条件强制展开，通常这意味着 BUG 集成样例 业务需要进行模块设计，每个模块视为一个Op (Operator) 目标 IF 语句只能记录一个 branch，这个需要灵活把握 Op 可以由 C++ 或 Python 开发，不受 Trace 约束 由 Op 集合组成一个DAG，即为业务的 Pipeline 约束设计模式 比如一个 文本分类的 pipeline，分词可以认为是一个 Op，文本 ID 化也是一个 Op 等等。 第三方库支持 使用 Trace 机制是有代价的，需要遵守以下约定： 将训练代码一键打包成 C++ Server 所需格式，方便优化和 Server 上线服务。 Trace 机制是依赖程序执行才能记录，换句话说，能够记录的逻辑需要在运行时被执行到！ 能够记录哪些执行过程？ 在被trace的函数中如果调用了第三方库比如requests，那么本次的结果将被当做常量保存并且会在之后执行时使用。换句话说，第三方库仅会在生成trace文件时被调用。 
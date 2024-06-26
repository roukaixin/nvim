> 查看文件类型

```shell
:set filetype
```

`RRethy/vim-illuminate` : 相同单词高亮

`lukas-reineke/indent-blankline.nvim` : 缩进空白行

![image-20240508094642965](./assets/readme/image-20240508094642965.png)

`akinsho/bufferline.nvim` :  显示所在层级

![image-20240508094831536](./assets/readme/image-20240508094831536.png)

`lewis6991/gitsigns.nvim` : 缓冲区的 Git 集成


# 代码格式化

> clang-format
创建 `~/.clang-format` , 并添加下面配置

# 模糊搜索

```shell
sudo pacman -S ripgrep fzf
```


```yaml
#基于那个配置文件
BasedOnStyle: LLVM
#指针的*的挨着哪边
PointerAlignment: Right
#缩进宽度
IndentWidth: 4
# 连续的空行保留几行
MaxEmptyLinesToKeep: 1
# 在 @property 后面添加空格, \@property (readonly) 而不是 \@property(readonly).
ObjCSpaceAfterProperty: true
# OC block后面的缩进
ObjCBlockIndentWidth: 4
# 是否允许短方法单行
AllowShortFunctionsOnASingleLine: false
# 是否允许短if单行 If true, if (a) return; 可以放到同一行
AllowShortIfStatementsOnASingleLine: true
#注释对齐
AlignTrailingComments: true
# 换行的时候对齐操作符
#AlignOperands: true
# 中括号两边空格 [] 
SpacesInSquareBrackets: true
# 小括号两边添加空格
SpacesInParentheses : false
#多行声明语句按照=对齐
AlignConsecutiveDeclarations: true
#连续的赋值语句以 = 为中心对齐
AlignConsecutiveAssignments: true
#等号两边的空格
SpaceBeforeAssignmentOperators: true
# 容器类的空格 例如 OC的字典
SpacesInContainerLiterals: true
#缩进
IndentWrappedFunctionNames: true
#在block从空行开始
KeepEmptyLinesAtTheStartOfBlocks: true
#在构造函数初始化时按逗号断行，并以冒号对齐
BreakConstructorInitializersBeforeComma: true
#函数参数换行
AllowAllParametersOfDeclarationOnNextLine: true
#括号后添加空格
SpaceAfterCStyleCast: true
#tab键盘的宽度
TabWidth: 4
UseTab: Never
```

oh-my-posh init pwsh --config C:\Users\0\AppData\Local\Programs\oh-my-posh\themes\montys.omp.json| Invoke-Expression

# profile 文件中添加
 
#  自动建议 并设置预测文本来自历史记录
Import-Module PSReadLine
 
Set-PSReadLineOption -ShowToolTips
 
# Tab 当按Tab键时，显示所有选项的导航菜单
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
 
# 设置列表视图模式 默认InlineView
Set-PSReadLineOption -PredictionViewStyle ListView
 
# 设置预测文本来源为历史记录 默认设置 HistoryAndPlugin 7.2 之前 History
Set-PSReadLineOption -PredictionSource History
 
# 每次回溯输入历史，光标定位于输入内容末尾
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
 
# 提示文本颜色
Set-PSReadLineOption -Colors @{ InlinePrediction = '#8A0303'}
 
# Set-PSReadLineOption -Colors @{ InlinePrediction = '#2F7004'}
# Set-PSReadLineOption -Colors @{ InlinePrediction = "$([char]0x1b)[36;7;238m"}
# Set-PSReadLineOption -Colors @{ InlinePrediction = "$([char]0x1b)[38;5;238m"} 恢复默认
 
# 方向键自动补全 
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
 
# 下一条自动补全 History记录 line模式中相反
# Set-PSReadlineKeyHandler -Key Ctrl+n -Function HistorySearchForward
# 上一条自动补全 History记录
# Set-PSReadlineKeyHandler -Key Ctrl+p -Function HistorySearchBackward
 
 
####-----相关命令
# 获取所有键映射
# Get-PSReadLineKeyHandler
 
# 获取 PSReadLineOption配置
# Get-PSReadLineOption

Import-Module posh-git # git的自动补全

Import-Module Terminal-Icons # 命令行图标

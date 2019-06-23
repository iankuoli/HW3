#######################################
# 檔名: functions.py
# 功能: 一些在blog.py中會用到的函數
# TODO: 如果你想把一些函數放這的話才要改，要全部寫在blog.py也可
#######################################

import re

# filters
filters = ["All", "Finished", "Not Finished"]

# sort keys
sort_keys = ["Created Time", "Deadline", "Title"]

# 防呆措施
def is_date(due):
	if due == '': return True
	return re.match('([12]\d{3}/(0[1-9]|1[0-2])/(0[1-9]|[12]\d|3[01]))', due)

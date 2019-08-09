class EmployeeObserver < ActiveRecord::Observer
  def after_create(employee)
    # 新しいemployeeレコードが生成されました。
  end

  def after_update(employee)
    # employeeレコードが更新されました。
  end

  def after_destroy(employee)
    # employeeレコードが削除されました。
  end
end

###############################################################################

require 'rexml/parsers/sax2parser'
require 'rexml/sax2listener'

#
# 独自のXMLパーサを作成
#
xml = File.read('data.xml')
parser = REXML::Parsers::SAX2Parser.new(xml)

#
# 要素の開始と終了の通知を受けるオブザーバを追加
#
parser.listen(:start_element) do |uri, local, qname, attrs|
  puts("start element: #{local}")
end

parser.listen(:end_element) do |uri, local, qname|
  puts("end element #{local}")
end

#
# XMLを解析
#
parser.parse

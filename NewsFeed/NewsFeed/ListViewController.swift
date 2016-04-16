//
//  ListViewController.swift
//  NewsFeed
//
//  Created by 白鳥 友里恵 on 2016/01/14.
//  Copyright © 2016年 swan. All rights reserved.
//

import UIKit
class ListViewController : UITableViewController, NSXMLParserDelegate { //デリゲート
    
    var parser:NSXMLParser! //rssを解析するプロパティーを格納
    var items = [Item]() //複数の記事を格納する配列
    var item:Item? //Itemのクラス型のプロパティー（title,link）
    var currentString = "" //抽出素た文字列の格納場所
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = items[indexPath.row].title
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        startDownload()
    }
    
    func startDownload() {
        self.items = []     //最初の要素を空に
        if let url = NSURL(string: "http://feeds.lifehacker.jp/rss/lifehacker/index.xml"){  //ここでエラー起きた,記事元のURL,オプショナルバインディング！
            if let parser = NSXMLParser(contentsOfURL: url) {       //NSXMLParserのインスタンス、不正なurlをnilで返せるようにoptional型
                self.parser = parser
                self.parser.delegate = self
                self.parser.parse()     //データの解析開始
            }
        }
    }
    
    //必要なデータのみ取り出すメゾット
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        self.currentString = ""
        if elementName == "item" {
            self.item = Item()
        }
    }
    
    //itemsにひとつの記事を追加する
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        self.currentString += string
    }
    
    
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        switch elementName {    //要素名を格納
            case "title": self.item?.title = currentString
            case "link": self.item?.link = currentString
            case "item": self.items.append(self.item!)
        default : break
        }
    }
    
    //解析したデータを表示
    func parserDidEndDocument(parser: NSXMLParser) {
         self.tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)  {
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let item = items[indexPath.row]
            let controller = segue.destinationViewController as! DetailViewController
            controller.title = item.title
            controller.link = item.link
        }
    }
}





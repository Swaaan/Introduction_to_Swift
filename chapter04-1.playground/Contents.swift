//04-01

print("こんにちわ")

var alert = "バッテリー残量が少なくなっています"
print(alert)

print("1 + 1")
print("1" + "1")

var batteryRemaining = 0
for r in 0...100 {
    batteryRemaining = batteryRemaining + r
}
print("バッテリー残量はあと\(batteryRemaining)%です")

batteryRemaining == 5050
batteryRemaining == 10


var number:Int = 3

//04-02

var battery = 38
if battery <= 20 {
    print("バッテリー残量が少なくなっています")
}
else {
    print("バッテリー残量が多いです")
}

var num = 1
if num > 0 {
    print("\(num)は整数です")
}
else {
    print("\(num)は負の数か０です")
}
//04-03
var todo = ["ジョギング", "選択", "掃除"]
print(todo)
print(todo[0])

var index = 0
var todos = ["A", "B", "C"]
print(todos[index])
todos[0] = "わろた"
print(todos[index])

//練習問題4-2

var zero = 0
var test = [95, 70, 60]
for sum in test {               //  for sum  in 1...3　と同義、代入されたわけじゃない
    zero = zero + sum
}
print(zero)
print(test[0] + test[1] + test[2])

var numberOfTires = ["車":4,"自転車":2 ]
print(numberOfTires["車"])

numberOfTires["車"] = 100
numberOfTires["三輪車"] = 3

print(numberOfTires["車"])
print(numberOfTires["三輪車"])

numberOfTires["車"] = nil
print(numberOfTires["車"])



//練習問題 4-3
var sumsum = ["国":95, "数":70, "英":80]
sumsum["数"] = 100




//04-04　関数
func kuku2() {
    for x in 1...9 {
        print(2 * x)
    }
}

kuku2()

func kuku(dan:Int) {
    for x in 1...9 {
        print(dan * x)
    }
}

kuku(2)
kuku(9)
kuku(4)




func areaOfTriangle(base:Int, andHeight:Int) {
    print(base * andHeight / 2)
}
areaOfTriangle(3, andHeight:4)


func area(basee:Int, andHeight height:Int) -> Int {
    let result = basee * height / 2
    return result
}
var re = area(3, andHeight: 4)
print(area)


//練習問題　4-4

func discarea(base:Int) -> Int {
    print(base * base)
}
discarea(3)

















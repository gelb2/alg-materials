// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

example(of: "creating nodes") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    node3.next = nil
    
    print(node1)
}

example(of: "push to linklist") {
    var list = LinkedList<Int>()
    
    list.push(3)
    list.push(2)
    list.push(1)
    
    print(list)
}

example(of: "append") {
  var list = LinkedList<Int>()
  list.append(1)
  list.append(2)
  list.append(3)

  print(list)
}


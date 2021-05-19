import PlaygroundSupport
import Module
let dragDrop = DragDrop()
dragDrop.setPage(PlaygroundPage.current)
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.setLiveView(dragDrop)

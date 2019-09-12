import { Controller } from "stimulus"
import Tribute from "tributejs"
import Trix from "trix"

export default class extends Controller {
  static targets = [ "field" ]

  connect() {
    this.editor = this.fieldTarget.editor
    this.initializeTribute()
  }

  disconnect() {
    this.tribute.detach(this.fieldTarget)
  }

  initializeTribute(){
    this.tribute = new Tribute({
      allowSpaces: true,
      lookup: 'name',
      values: this.fetchUsers,
    })
    this.tribute.attach(this.fieldTarget)
    this.tribute.range.pasteHtml = this._pasteHtml.bind(this)
    this.fieldTarget.addEventListener('tribute-replaced', this.replaced)
  }

  replaced(event) {
    let shoutout = e.detail.item.original
    let attachment = new Trix.Attachment({
      // keys allowed by Trix & ActionText
      sgid: shoutout.sgid,
      content: shoutout.content
    })
    this.editor.insertAttachment(attachment)
    this.editor.insertString(" ") // adds space after User name
  }
  // override the default to play nicely w Trix
  _pasteHtml(html, startPos, endPos ){
    let position = this.editor.getPosition() // in Trix
    this.editor.setSelectedRange([position - endPos, position])
    this.editor.deleteInDirection('backward')
  }

  // from our endpoint
  fetchUsers(text, callback){
    fetch(`/shoutouts.json?query=${text}`)
      .then(response => response.json())
      .then(users => callback(users))
      .catch(error => callback([]))
  }
}

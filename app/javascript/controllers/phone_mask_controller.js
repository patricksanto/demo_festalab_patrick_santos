import { Controller } from "@hotwired/stimulus"
import Inputmask from "inputmask";

export default class extends Controller {
  connect() {
    this.initMask();
    console.log("Hello, Stimulus!", this.element)
  }

  initMask() {
    const im = new Inputmask({
      mask: "(99) 99999-9999",
      placeholder: "",
      clearIncomplete: true,
      showMaskOnHover: false,
    });
    im.mask(this.element);
  }

  disconnect() {
    Inputmask.remove(this.element);
  }
}

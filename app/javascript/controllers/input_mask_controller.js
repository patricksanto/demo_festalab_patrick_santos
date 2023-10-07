import { Controller } from "@hotwired/stimulus";
import Inputmask from "inputmask";

export default class extends Controller {
  static targets = ["phone", "cpf"];

  connect() {
    this.initMasks();
  }

  initMasks() {
    const phoneMask = new Inputmask({
      mask: "(99) 99999-9999",
      placeholder: "",
      clearIncomplete: true,
      showMaskOnHover: false
    });

    const cpfMask = new Inputmask({
      mask: "999.999.999-99",
      placeholder: "",
      clearIncomplete: true,
      showMaskOnHover: false,
      removeMaskOnSubmit: true
    });

    phoneMask.mask(this.phoneTarget);
    cpfMask.mask(this.cpfTarget);
  }
}

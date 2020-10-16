import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["addButton", "template", "addLocation"]

  connect() {
    // console.log(this.element)
  }

  addAssociation(event) {
    event.preventDefault();
    var content = this.templateTarget.innerHTML.replace(/TEMPLATE_RECORD/g, new Date().valueOf());
    this.addLocationTarget.insertAdjacentHTML('beforeend', content);
  }

  removeAssociation(event) {
    event.preventDefault();
    let item = event.target.closest(".nested-fields-stimulus");
    item.querySelector("input[name*='_destroy']").value = 1;
    item.style = 'display: none !important';
  }
}

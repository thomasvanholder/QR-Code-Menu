import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["add_category", "template"]

  add(event) {
    event.preventDefault();
    const randomNumber = new Date().getTime();
    const content = this.templateTarget.innerHTML.replace(/TEMPLATE_RECORD/g, randomNumber);
    this.add_categoryTarget.insertAdjacentHTML("beforebegin", content) //insert "add .. " link
  }

  remove(event) {
    event.preventDefault();
    let item = event.target.closest('.nested-fields')
    item.querySelector("input[name*='_destroy']").value = 1
    item.style.display = "none"
  }
}

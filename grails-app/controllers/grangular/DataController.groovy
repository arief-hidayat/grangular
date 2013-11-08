package grangular

import grails.converters.JSON

class DataController {
    def publicData() {
        render " I have received and processed your public data ${request.JSON.data}"
    }
    def protectedData() {
        render "I have received and processed your protected data ${request.JSON.data}"
    }
}

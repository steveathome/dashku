assert = require 'assert'

describe "WidgetTemplate", ->

  describe "getAll", ->

    describe "if successful", ->

      it "should return a success status with a list of widget templates", (done) ->
        new WidgetTemplate({name: "Widge"}).save (err, wt) ->
          ass.rpc 'widgetTemplate.getAll', (res) ->
            assert.equal res[0].status, "success"
            assert.deepEqual res[0].widgetTemplates[0].name, "Widge"
            done()
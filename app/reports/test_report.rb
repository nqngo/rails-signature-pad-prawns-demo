class TestReport < Prawn::Document

  def initialize()
    super()
    signature = '[{"lx":29,"ly":18,"mx":29,"my":17},{"lx":29,"ly":19,"mx":29,"my":18},{"lx":29,"ly":24,"mx":29,"my":19},{"lx":29,"ly":27,"mx":29,"my":24},{"lx":29,"ly":30,"mx":29,"my":27},{"lx":29,"ly":32,"mx":29,"my":30},{"lx":32,"ly":32,"mx":29,"my":32},{"lx":33,"ly":32,"mx":32,"my":32},{"lx":35,"ly":31,"mx":33,"my":32},{"lx":39,"ly":24,"mx":35,"my":31},{"lx":42,"ly":16,"mx":39,"my":24},{"lx":48,"ly":7,"mx":42,"my":16},{"lx":51,"ly":2,"mx":48,"my":7},{"lx":54,"ly":-3,"mx":51,"my":2},{"lx":58,"ly":2,"mx":58,"my":1},{"lx":59,"ly":9,"mx":58,"my":2},{"lx":60,"ly":18,"mx":59,"my":9},{"lx":60,"ly":27,"mx":60,"my":18},{"lx":60,"ly":38,"mx":60,"my":27},{"lx":55,"ly":45,"mx":60,"my":38},{"lx":49,"ly":51,"mx":55,"my":45},{"lx":45,"ly":54,"mx":49,"my":51},{"lx":39,"ly":57,"mx":45,"my":54},{"lx":35,"ly":51,"mx":35,"my":50},{"lx":43,"ly":45,"mx":35,"my":51},{"lx":54,"ly":39,"mx":43,"my":45},{"lx":70,"ly":32,"mx":54,"my":39},{"lx":81,"ly":28,"mx":70,"my":32},{"lx":96,"ly":25,"mx":81,"my":28},{"lx":111,"ly":23,"mx":96,"my":25},{"lx":119,"ly":23,"mx":111,"my":23},{"lx":126,"ly":23,"mx":119,"my":23},{"lx":129,"ly":23,"mx":126,"my":23},{"lx":130,"ly":23,"mx":129,"my":23},{"lx":128,"ly":24,"mx":130,"my":23},{"lx":117,"ly":25,"mx":128,"my":24},{"lx":105,"ly":27,"mx":117,"my":25},{"lx":96,"ly":29,"mx":105,"my":27},{"lx":89,"ly":30,"mx":96,"my":29},{"lx":85,"ly":30,"mx":89,"my":30},{"lx":84,"ly":31,"mx":85,"my":30},{"lx":87,"ly":32,"mx":84,"my":31},{"lx":101,"ly":36,"mx":87,"my":32},{"lx":118,"ly":39,"mx":101,"my":36},{"lx":136,"ly":42,"mx":118,"my":39},{"lx":151,"ly":43,"mx":136,"my":42},{"lx":165,"ly":43,"mx":151,"my":43},{"lx":171,"ly":40,"mx":165,"my":43},{"lx":175,"ly":37,"mx":171,"my":40},{"lx":177,"ly":34,"mx":175,"my":37},{"lx":178,"ly":32,"mx":177,"my":34},{"lx":178,"ly":31,"mx":178,"my":32}]'
    @sig = JSON.parse signature
    all
  end

  def all
    text "Form text here"
    move_down 20
    
    sigpad_height = 98
    sigpad_width = 198
    
    bounding_box([0, cursor], width: sigpad_width, height: sigpad_height) do
      stroke_bounds
      @sig.each do |e|
        stroke { line [e["lx"], sigpad_height - 10 - e["ly"]], [e["mx"], sigpad_height - 10 - e["my"] ] }
      end
    end
    
  end
  
end
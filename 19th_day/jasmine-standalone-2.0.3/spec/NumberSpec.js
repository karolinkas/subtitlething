describe("Number", function() {
  
  it("should return 10", function() {
    var array = [1,2,3,4];
    expect(sum(array)).toEqual(10);

  });

  it("should return 0", function() {
    var array = [];
    expect(sum(array)).toEqual(0);

  });
});

describe("Average",function(){

  it("should return 2.5",function(){
    var array = [1,2,3,4];
    expect(average(array)).toEqual(2.5);

  });

    it("should return 0",function(){
    var array = [-1,2,3,-4];
    expect(average(array)).toEqual(0);

  });

}); 





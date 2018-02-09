exports.defineAutoTests = function () {
    describe("Echo (CordovaTestExample.echo)", function () {

        it("should exist", function () {
            expect(CordovaTestExample.echo).toBeDefined();
        });

        it("should be a function", function () {
            expect(typeof CordovaTestExample.echo === "function").toBe(true);
        });
        
        it("should return phrase", function(done) {
            CordovaTestExample.echo("ping", function(value) {
                expect(value).toEqual("ping");
                done();
            });
        });
    });
};
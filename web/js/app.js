var app = angular.module('phoneCallsApp', []);
var pharoUrl = 'http://localhost:1701';
app.controller('PhoneRegisterController', function($scope, $http) {
	$scope.call = {};
	$scope.datePattern = /[0-9]{4}-[0-9]{2}-[0-9]{2}/;
	$scope.timePattern = /[0-9]{2}:[0-9]{2}/;
	$scope.updateTimes = function(){
		if( typeof $scope.start.date === "string" &&
		typeof $scope.start.time === "string" &&
		$scope.start.date.match($scope.datePattern).length === 1 &&
		$scope.start.time.match($scope.timePattern).length === 1 ) {
			var split = $scope.start.date.split('-'),
				splitt = $scope.start.time.split(':');
				year = split[0],
				month = split[1]-1,
				day = split[2],
				hours = splitt[0],
				minutes = splitt[1];
			$scope.call.startTime = new Date( year, month, day, hours, minutes ).getTime();
			$scope.call.endTime = $scope.call.startTime + $scope.duration * 60000;
		}

		$scope.register = function() {
			$scope.call.callingParty = "+54" + $scope.calling_party;
			$scope.call.calledParty = $scope.called_party;
			var url = pharoUrl + "/calls/" + $scope.call.callingParty;
			$http.put( url, {
					to: $scope.call.calledParty,
					startTime: $scope.call.startTime,
					endTime: $scope.call.endTime
			});
		}
	};
});
app.controller('PhoneBillController', function($scope, $http) {
	$scope.line;
	$scope.monthOfYear;
	$scope.bill = {
		basic: 0,
		localCalls: [],
		nattionalCalls: [],
		internationalCalls: []
	};
	$scope.getBill = function() {
		var url = [ pharoUrl, 'bill', '+54' + $scope.line, $scope.monthOfYear ].join("/");
		$http.get( url ).success( function( response ) {
			$scope.bill = response;
			$scope.bill.totals = {
				local: 0,
				national: 0,
				international: 0
			};
			$scope.bill.localCalls.forEach( function( call ) {
				$scope.bill.totals.local += call.cost;
			});
			$scope.bill.nationalCalls.forEach( function( call ) {
				$scope.bill.totals.national += call.cost;
			});
			$scope.bill.internationalCalls.forEach( function( call ) {
				$scope.bill.totals.international += call.cost;
			});
			$scope.bill.calculatedTotal =
				$scope.bill.basic +
				$scope.bill.totals.local +
				$scope.bill.totals.national +
				$scope.bill.totals.international;
		});
		/*$scope.bill = {
			basic: 8,
			localCalls: [
				{
					to: '+54(011)4444-4444',
					start: new Date().getTime(),
					duration: 5,
					cost: 10.25
				}
			],
			nationalCalls: [
				{
					to: '+54(02262)44-4444',
					start: new Date().getTime(),
					duration: 5,
					cost: 20.45
				}
			],
			internationalCalls: [
				{
					to: '+1(111)1-1111-1111',
					start: new Date().getTime(),
					duration: 5,
					cost: 30.65
				},
				{
					to: '+1(111)1-1111-1111',
					start: new Date().getTime() + 6 * 60000,
					duration: 5,
					cost: 30.65
				}
			],
			total: 100 
		};*/
	}
});

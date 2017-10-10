angular.module('storeApp', []) .controller('MainCtrl', ['$http','$compile', function($http,$compile) {
        var self = this;
        self.cartArr = [];
        var cartArrIndex = 0;
        self.totalAmt = 0;
        self.amount = 0;
        self.tax = 0;
       
        console.log('MainCtrl has been created');

        self.hellomsg = "hi Angular";
        
		  self.addToCart = function(itemCde){
			  console.log('hello --- inside add to cart');
			  console.log(itemCde);
			  for(var i = 0 ; i<self.itemDetails.length; i++){
				  if(self.itemDetails[i].itemCode == itemCde){
					  console.log('Matching cart value');
					  self.cartArr.push(self.itemDetails[i]);
					  self.amount = self.amount + self.cartArr[cartArrIndex].itemPrice;
					  self.tax = self.tax + self.cartArr[cartArrIndex].salesTax;
					  self.totalAmt = self.totalAmt + self.cartArr[cartArrIndex].itemPrice + self.cartArr[cartArrIndex].salesTax;
					  cartArrIndex++;
				  }
			  }
			  console.log(self.cartArr);
			  console.log(self.amount);
			  console.log(self.tax);
			  console.log(self.totalAmt);
			  
		  };
		  
		  self.loadItems = function(){
			  console.log('Loading Items from server');
			  $http({
					method : 'POST',
					url : '/SmartStoreMO/loadItems.do',
					contentType: 'application/json'
				
				
				
				}).then(function(response){
					console.log("inside promise object view recommended jobs");
					console.log(response);
					self.itemDetails = response.data;
					
				},
				function(data){
					console.log("inside error handler");
				}); 
			  };
			  
			  self.emptyCart = function(){
				  console.log('inside Empty Cart Function');
				  self.cartArr = [];
			        cartArrIndex = 0;
			        self.totalAmt = 0;
			        self.amount = 0;
			        self.tax = 0;
			  };

      }]);
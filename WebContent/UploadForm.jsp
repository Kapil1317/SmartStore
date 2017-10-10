<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome to Smart Shop</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	 
    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
     <!-- Angular Material Dependencies -->
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>

	<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.19/angular.js">
    		</script> -->
	
  </head>

  <body>
  
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Smart Shop</a>
        
      </div>
    </nav>

    <!-- Page Content -->
    <div ng-app="storeApp">
	    <div class="container" style = "padding-top: 50px" ng-controller="MainCtrl as ctrl" ng-init = "ctrl.loadItems()">
	
	      <div class="row">
			<!-- <div class="col-lg-9"> -->
	        <div class="col-lg-8">
	         
	          <div class="row">
	          	
		          <div class="col-lg-4 col-md-6 mb-4" ng-repeat = "item in ctrl.itemDetails">
		              <div class="card h-100">
		                <a href="#"><img src="images/{{item.itemImgName}}" alt={{item.itemName}} style="width:210px; height:120px"/></a>
		                <div class="card-body">
		                  <h4 class="card-title">
		                    <a href="#">{{item.itemName}}</a>
		                  </h4>
		                  <h5>{{item.itemPrice|currency: "&#8377;"}}</h5>
		                 <button type="button" class="btn btn-primary btn-block" ng-click = "ctrl.addToCart(item.itemCode)">Add to Cart</button>
		                </div>
		                <div class="card-footer">
		                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
		                </div>
		              </div>
		            </div>

	          </div>
	          <!-- /.row -->
	
	        </div>
	        <!-- /.col-lg-10 -->
	        
	        <div class="col-lg-4">
	
		        <div class="panel panel-default">
				  <div class="panel-heading">
					  <div class = "row">
					  	<div class = "col-lg-8">
					  	<h2>Customer Cart</h2>
					  	</div>
					  	<div class = "col-lg-4" style = "text-align: right">
					  	<img src="images/cart.png" alt="cart" style="width:50px; height:50px;"/>
					  	</div>
					  </div>
				  </div>
				  <div class="panel-body">
				  	<div class="col-md-12">
						
						<div class="row" style="border-bottom-style:solid;border-color:grey;border-width:1px;" ng-repeat = "cartItem in ctrl.cartArr">
							<div class="col-md-8" style="padding-left:0; padding-top:10px;">
								<p><strong>{{cartItem.itemName}}</strong></p>
								<p style = "padding: 0px">Tax: </p>
							</div>
							<div class="col-md-4" style="padding-top:10px;text-align:right; padding-right:0;">
								<p><strong>&#8377; {{cartItem.itemPrice}}</strong></p>
								<p style = "padding: 0px">&#8377; {{cartItem.salesTax}}</p>
							</div>
						</div>

						<div class="row" style="border-bottom-style:solid;border-color:grey;border-width:1px;">
							<div class="col-md-8" style="padding-left:0; padding-top:10px">
								<p><strong>Total Item Value: </strong></p>
								<p><strong>Total Tax : </strong></p>
								<p><strong>Net Payable Amount: </strong></p>
							</div>
							<div class="col-md-4" style="padding-top:10px;text-align:right; padding-right:0;">
								<p><strong>&#8377; {{ctrl.amount}}</strong></p>
								<p><strong>&#8377; {{ctrl.tax}}</strong></p>
								<p><strong>&#8377; {{ctrl.totalAmt}}</strong></p>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12" style="padding-top:30px">
								<button type="button" class="btn btn-basic btn-block" ng-click = "ctrl.emptyCart()">Empty Cart</button>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12" style="padding-top:20px">
								<button type="button" class="btn btn-success btn-block">Proceed</button>
							</div>
						</div>

					</div>
				  </div>
				</div>
	
	        </div>
			<!-- /.col-lg-2 -->
	      </div>
	      <!-- /.row -->
	
	    </div>
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Project developed for demo purpose</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
   	<script src="js/storeapp.js"></script>
    
    <!-- <script type="text/javascript">
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
    
    </script> -->

  </body>

</html>

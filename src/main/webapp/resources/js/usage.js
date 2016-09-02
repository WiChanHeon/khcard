$(document).ready(function(){
	function cards(){
		  var getP = document.getElementById("cardcategory");
		  var price = getP.options[getP.selectedIndex].value;
		  var cardimg='';
		  if (price == '1') {
				cardimg = '<img src="${pageContext.request.contextPath}/resources/images/card_ME2.png">';
		  }else if(price == '2') {
			  cardimg = '<img src="${pageContext.request.contextPath}/resources/images/card_ZRO.png">';
		  }else{
		    return false;
		  }
		  document.getElementById("cardcategory").value = cardimg;
		}
});


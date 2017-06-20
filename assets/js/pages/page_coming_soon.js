var PageComingSoon = function () {
    return {
      //Coming Soon
      initPageComingSoon: function () {
			var newYear = new Date();
			newYear = new Date("July 31, 2017");
			$('#defaultCountdown').countdown({until: newYear})
        }
    };
}();

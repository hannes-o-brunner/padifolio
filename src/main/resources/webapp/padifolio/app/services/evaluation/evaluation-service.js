
angular
.module("evaluation")
.factory("evaluationService", EvaluationService);

EvaluationService.$inject = ["$http", "appService"];

function EvaluationService($http, appService) {

	var EVAL_URL = "/evaluations/{portfolioId}/{refCurry}/{fromDate}/{toDate}";

	return {
		getEvaluation: getEvaluation
	}

	function getEvaluation(portfolioId, refCurry, fromDate, toDate) {
		var url = EVAL_URL.replace("{portfolioId}", portfolioId).replace("{refCurry}", refCurry).replace("{fromDate}", fromDate).replace("{toDate}", toDate);
		return $http.get(appService.getApiUrl(url))
		.then(function(result) {
			return result.data;
		});
	}

}

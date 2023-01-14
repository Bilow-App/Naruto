import 'package:in_app_review/in_app_review.dart';
import 'package:starter/abstracts/abstracts.dart';

class ReviewService implements ReviewServiceAbstract {
  final InAppReview _inAppReview;

  ReviewService({InAppReview? inAppReview})
      : _inAppReview = inAppReview ?? InAppReview.instance;

  @override
  Future<bool> updateAvailable() {
    return _inAppReview.isAvailable();
  }

  @override
  Future<void> request() async {
    return await _inAppReview.requestReview();
  }
}

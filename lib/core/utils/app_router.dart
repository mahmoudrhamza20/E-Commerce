// import 'package:e_commerce/features/splash/presentations/views/splash_view.dart';
// import 'package:go_router/go_router.dart';
// import '../../features/auth/presentation/views/forget_password_view.dart';
// import '../../features/auth/presentation/views/login_view.dart';
// import '../../features/auth/presentation/views/register_view.dart';
// import '../../features/auth/presentation/views/reset_password_view.dart';
// import '../../features/auth/presentation/views/verify_code_view.dart';
// import '../../features/cart/presentaion/view/cart_view.dart';
// import '../../features/category_brand/presentaion/view/widgets/category_brand_details_view.dart';
// import '../../features/drawer/presentation/view/about_us_view.dart';
// import '../../features/drawer/presentation/view/add_address_view.dart';
// import '../../features/drawer/presentation/view/add_card_view.dart';
// import '../../features/drawer/presentation/view/all_categories_view.dart';
// import '../../features/drawer/presentation/view/card_details_view.dart';
// import '../../features/drawer/presentation/view/language_view.dart';
// import '../../features/drawer/presentation/view/my_profile_view.dart';
// import '../../features/drawer/presentation/view/save_addresses_view.dart';
// import '../../features/drawer/presentation/view/setting_view.dart';
// import '../../features/drawer/presentation/view/sub_category_item_details_view.dart';
// import '../../features/drawer/presentation/view/menu_item_details_view.dart';
// import '../../features/drawer/presentation/view/sub_category_view_all.dart';
// import '../../features/drawer/presentation/view/track_my_order_view_of_proceeing.dart';
// import '../../features/drawer/presentation/view/widgets/details_of_payment.dart';
// import '../../features/drawer/presentation/view/widgets/my_order_view.dart';
// import '../../features/drawer/presentation/view/track_my_order_view_of_Delivered.dart';
// import '../../features/drawer/presentation/view/widgets/track_my_order_view_of_canceled.dart';
// import '../../features/home/presentation/views/flash_sale_product_item_details.dart';
// import '../../features/home/presentation/views/flash_sale_view.dart';
// import '../../features/home/presentation/views/home__sub_category_view_all.dart';
// import '../../features/home/presentation/views/home_category_sub_category_item_details.dart';
// import '../../features/home/presentation/views/product_choose_payment_method_view.dart';
// import '../../features/home/presentation/views/reviews_view.dart';
// import '../../features/home/presentation/views/week_promotion_item_details_view.dart';
// import '../../features/home/presentation/views/widgets/home_category_item_details_view.dart';
// import '../../features/home/presentation/views/recommended_view.dart';
// import '../../features/main_screen/presentation/views/main_view.dart';
// import '../../features/notifications/presentation/view/notifications_view.dart';
// import '../../features/onBoarding/data/presentation/view/on_boarding_view.dart';
// import '../widgets/product_item_details.dart';
// abstract class AppRouter {
//  static const kOnBoardingView = '/onBoarding';
//  static const kLoginView = '/loginView';
//  static const kRegisterView = '/registerView';
//  static const kForgetPassView = '/forgetPasswordView';
//  static const kVerifyCodeView = '/verifyCodeView';
//  static const kResetPassView = '/resetPassView';
//  static const kMainScreen = '/mainScreen';
//  static const kNotificationsView = '/notificationsView';
//  static const kCategoryBrandDetailsView = '/categoryBrandDetailsView';
//  static const kAboutUsView = '/aboutUsView';
//  static const kLanguageView = '/languageView';
//  static const kMyProfileView = '/myProfileView';
//  static const kTrackMyOrderViewOfDelivered = '/trackMyOrderViewOfDelivered';
//  static const kTrackMyOrderViewOfProcessing = '/trackMyOrderViewOfProcessing';
//  static const kTrackMyOrderViewOfCanceled = '/trackMyOrderViewOfCanceled';
//  static const kAllCategoriesView = '/allCategoriesView';
//  static const kMyOrderView = '/myOrderView';
//  static const kSettingView = '/settingView';
//  static const kSavedAddressesView = '/savedAddressesView';
//  static const kAddAddressView = '/addAddressView';
//  static const kCardDetailsView = '/cardDetailsView';
//  static const kAddCardView = '/addCardView';
//  static const kMenuItemDetailsView = '/menuItemDetailsView';
//  static const kSubCategoryViewAll = '/subCategoryViewAll';
//  static const kSubCategoryItemDetails = '/subCategoryItemDetails';
//  static const kWeekPromotionItemDetailsView = '/weekPromotionItemDetailsView';
//  static const kFlashSaleView = '/flashSaleView';
//  static const kFlashSaleProductItemDetails = '/flashSaleProductItemDetails';
//  static const kCartView = '/cartView';
//  static const kRecommendedView = '/recommendedView';
//  static const kHomeCategoryItemDetailsView = '/homeCategoryItemDetailsView';
//  static const kHomeCategorySubCategoryItemDetails = '/homeCategorySubCategoryItemDetails';
//  static const kHomeSubCategoryViewAll = '/homeSubCategoryViewAll';
//  static const kProductItemDetails = '/productItemDetails';
//  static const kReviewsView = '/reviewsView';
//  static const kDetailsOfPayment = '/detailsOfPayment';
//  static const kProductChoosePaymentMethodView = '/productChoosePaymentMethodView';
//   static final router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => const SplashView(),
//       ),
//       GoRoute(
//         path: kOnBoardingView,
//         builder: (context, state) => const OnBoardingView(),
//       ),
//       GoRoute(
//         path: kLoginView,
//         builder: (context, state) => const LoginView(),
//       ),
//       GoRoute(
//         path: kRegisterView,
//         builder: (context, state) => const RegisterView(),
//       ),
//       GoRoute(
//         path: kForgetPassView,
//         builder: (context, state) => const ForgetPasswordView(),
//       ),
//       GoRoute(
//         path: kVerifyCodeView,
//         builder: (context, state) =>   VerifyCodeView(),
//       ),
//       GoRoute(
//         path: kResetPassView,
//         builder: (context, state) =>  const ResetPasswordView(),
//       ),
//       GoRoute(
//         path: kMainScreen,
//         builder: (context, state) =>  const MainScreen(),
//       ),
//       GoRoute(
//         path: kNotificationsView,
//         builder: (context, state) =>  const NotificationsView(),
//       ),
//       GoRoute(
//         path: kCategoryBrandDetailsView,
//         builder: (context, state) =>  const CategoryBrandDetailsView(),
//       ),
//       GoRoute(
//         path: kAboutUsView,
//         builder: (context, state) =>  const AboutUsView(),
//       ),
//       GoRoute(
//         path: kLanguageView,
//         builder: (context, state) =>  const LanguageView(),
//       ),
//       GoRoute(
//         path: kMyProfileView,
//         builder: (context, state) =>  const MyProfileView(),
//       ),
//       GoRoute(
//         path: kAllCategoriesView,
//         builder: (context, state) =>  const AllCategoriesView(),
//       ),
//       GoRoute(
//         path: kMyOrderView,
//         builder: (context, state) =>  const MyOrderView(),
//       ),
//       GoRoute(
//         path: kSettingView,
//         builder: (context, state) =>  const SettingView(),
//       ),
//       GoRoute(
//         path: kSavedAddressesView,
//         builder: (context, state) =>  const SavedAddressesView(),
//       ),
//       GoRoute(
//         path: kAddAddressView,
//         builder: (context, state) =>   AddAddressView(),
//       ),
//       GoRoute(
//         path: kCardDetailsView,
//         builder: (context, state) =>   const CardDetailsView(),
//       ),
//       GoRoute(
//         path: kAddCardView,
//         builder: (context, state) =>   const AddCardView(),
//       ),
//       GoRoute(
//         path: kTrackMyOrderViewOfDelivered,
//         builder: (context, state) =>  const TrackMyOrderViewOfDelivered(),
//       ),
//       GoRoute(
//         path: kTrackMyOrderViewOfProcessing,
//         builder: (context, state) =>  const TrackMyOrderViewOfProcessing(),
//       ),
//       GoRoute(
//         path: kTrackMyOrderViewOfCanceled,
//         builder: (context, state) =>  const TrackMyOrderViewOfCanceled(),
//       ),
//       GoRoute(
//         path: kMenuItemDetailsView,
//         builder: (context, state) =>  const MenuItemDetailsView(),
//       ),
//       GoRoute(
//         path: kSubCategoryViewAll,
//         builder: (context, state) =>  const SubCategoryViewAll(),
//       ),
//       GoRoute(
//         path: kSubCategoryItemDetails,
//         builder: (context, state) =>  const SubCategoryItemDetailsView(),
//       ),
//       GoRoute(
//         path: kWeekPromotionItemDetailsView,
//         builder: (context, state) =>  const WeekPromotionItemDetailsView(),
//       ),
//       GoRoute(
//         path: kFlashSaleView,
//         builder: (context, state) =>  const FlashSaleView(),
//       ),
//       GoRoute(
//         path: kFlashSaleProductItemDetails,
//         builder: (context, state) =>  const FlashSaleProductItemDetails(),
//       ),
//       GoRoute(
//         path: kCartView,
//         builder: (context, state) =>  const CartView(),
//       ),
//       GoRoute(
//         path: kRecommendedView,
//         builder: (context, state) =>  const RecommendedView(),
//       ),
//       GoRoute(
//         path: kHomeCategoryItemDetailsView,
//         builder: (context, state) =>  const HomeCategoryItemDetailsView(),
//       ),
//       GoRoute(
//         path: kHomeCategorySubCategoryItemDetails,
//         builder: (context, state) =>  const HomeCategorySubCategoryItemDetails(),
//       ),
//       GoRoute(
//         path: kHomeSubCategoryViewAll,
//         builder: (context, state) =>  const HomeSubCategoryViewAll(),
//       ),
//       GoRoute(
//         path: kProductItemDetails,
//         builder: (context, state) =>  const ProductItemDetails(),
//       ),
//       GoRoute(
//         path: kReviewsView,
//         builder: (context, state) =>  const ReviewsView(),
//       ),
//       GoRoute(
//         path: kDetailsOfPayment,
//         builder: (context, state) =>  const DetailsOfPayment(),
//       ),
//       GoRoute(
//         path: kProductChoosePaymentMethodView,
//         builder: (context, state) =>  const ProductChoosePaymentMethodView(),
//       ),
//     ],
//   );
// }

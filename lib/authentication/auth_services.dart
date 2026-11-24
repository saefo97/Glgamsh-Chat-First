import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // تسجيل حساب جديد
  Future<String?> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null; // نجاح التسجيل
    } catch (e) {
      return errorHandler(e);
    }
  }

  // تسجيل الدخول
  Future<String?> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null; // نجاح تسجيل الدخول
    } catch (e) {
      return errorHandler(e);
    }
  }

  // تسجيل الخروج
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // معالجة كافة أخطاء FirebaseAuth
  String errorHandler(dynamic e) {
    if (e is FirebaseAuthException) {
      print("Firebase Auth Error Code: ${e.code}");
      switch (e.code) {
        case 'invalid-email':
          return 'البريد الإلكتروني غير صالِح.';
        case 'user-disabled':
          return 'تم تعطيل هذا الحساب من قبل الإدارة.';
        case 'user-not-found':
          return 'لم يتم العثور على حساب بهذا البريد الإلكتروني.';
        case 'wrong-password':
          return 'كلمة المرور غير صحيحة.';
        case 'email-already-in-use':
          return 'البريد الإلكتروني مستخدم بالفعل بحساب آخر.';
        case 'weak-password':
          return 'كلمة المرور ضعيفة جداً، يجب أن تكون 6 أحرف على الأقل.';
        case 'operation-not-allowed':
          return 'تسجيل الدخول بهذه الطريقة غير مفعّل حالياً.';
        case 'invalid-credential':
          return 'بيانات الدخول غير صحيحة (البريد أو كلمة المرور).';
        case 'too-many-requests':
          return 'تم إجراء محاولات كثيرة خاطئة، يرجى المحاولة لاحقاً.';
        case 'network-request-failed':
          return 'تعذّر الاتصال بالشبكة، يرجى التأكد من الاتصال بالإنترنت.';
        case 'requires-recent-login':
          return 'يتطلب هذا الإجراء إعادة تسجيل الدخول للحماية.';
        case 'expired-action-code':
          return 'انتهت صلاحية هذا الرابط.';
        case 'invalid-action-code':
          return 'رابط التحقق غير صالِح.';
        case 'channel-error':
        case 'missing-password':
        case 'missing-email':
          return 'يرجى كتابة البريد الإلكتروني وكلمة المرور.';
        default:
          return e.message ?? 'حدث خطأ في المصادقة (${e.code}).';
      }
    }
    return 'حدث خطأ غير متوقع، يرجى المحاولة لاحقاً.';
  }
}

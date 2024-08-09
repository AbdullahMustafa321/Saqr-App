import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChaletsDescription extends StatelessWidget {
  const ChaletsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('الوصف',textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),
          Opacity(
            opacity: 0.7,
            child: Text('شاليه فخم للإيجار يتميز بموقعه الرائع على بعد خطوات من الشاطئ، حيث يمكنك الاستمتاع بمناظر البحر الخلابة وصوت الأمواج الهادئ. يتألف الشاليه من غرفتي نوم فسيحتين ومكيفتين، مع صالة مريحة مزودة بتلفاز حديث. يحتوي الشاليه على مطبخ مجهز بالكامل بجميع الأدوات اللازمة لتحضير وجباتك المفضلة. يتميز الشاليه أيضًا بوجود حديقة خاصة بها منطقة جلوس خارجية ومرافق للشواء. قريب من المتاجر والمطاعم الشهيرة، مما يجعله المكان المثالي لقضاء عطلة هادئة ومريحة مع العائلة أو الأصدقاء.'
              ,textAlign: TextAlign.right,),
          )

        ],
      ),
    );
  }
}

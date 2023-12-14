import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/theme/app_color.dart';

class DialogHelper {
  Future<bool?> showWarningDialog(
      {required BuildContext context, String? message}) async {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false, // Prevent dialog dismissal on tap outside.
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message ?? 'Warning',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context, true),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColor.primaryOrangeColor),
                    child: const Text(
                      'Okay',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<bool?> showPdfIfoDialod(
      {required BuildContext context,
      String? message,
      String? description}) async {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false, // Prevent dialog dismissal on tap outside.
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message ?? 'Warning',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  description ?? '',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context, true),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColor.primaryOrangeColor),
                    child: const Text(
                      'Okay',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //
  // Future<bool?> showActionDialog(
  //     {required BuildContext context,
  //     String? message,
  //     String? deniedActionLabel,
  //       bool ageWarning = false,
  //     String? grantActionLabel}) async {
  //
  //   return showDialog<bool?>(
  //     context: context,
  //     barrierDismissible: false, // Prevent dialog dismissal on tap outside.
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(8.0),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.all(16.0),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Text(
  //                 message ?? 'Warning',
  //                 textAlign: TextAlign.center,
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               Row(
  //                 children: [
  //                   Expanded(
  //                     child: InkWell(
  //                         onTap: () => Navigator.pop(context, false),
  //                         child: Container(
  //                             alignment: Alignment.center,
  //                             width: double.infinity,
  //                             padding: const EdgeInsets.all(12),
  //                             decoration: BoxDecoration(
  //                                 borderRadius: BorderRadius.circular(6),
  //                                 color: Colors.grey.shade100),
  //                             child:  Text(
  //                               deniedActionLabel??'Cancel',
  //                               style: const TextStyle(
  //                                   color: Colors.black,
  //                                   fontWeight: FontWeight.w600,
  //                                   fontSize: 16),
  //                             ))),
  //                   ),const SizedBox(width: 12,),
  //                   Expanded(
  //                     child: InkWell(
  //                         onTap: () => Navigator.pop(context, true),
  //                         child: Container(
  //                             alignment: Alignment.center,
  //                             width: double.infinity,
  //                             padding: const EdgeInsets.all(12),
  //                             decoration: BoxDecoration(
  //                                 borderRadius: BorderRadius.circular(6),
  //                                 color: Styles.primaryOrangeColor),
  //                             child:  Text(
  //                               grantActionLabel??'Continue',
  //                               style: const TextStyle(
  //                                   color: Colors.white,
  //                                   fontWeight: FontWeight.w600,
  //                                   fontSize: 16),
  //                             ))),
  //                   ),
  //
  //
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  void showLoadingDialog(
      {required BuildContext context, String? message, bool wantToPop = true}) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dialog dismissal on tap outside.
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            return wantToPop;
          },
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CupertinoActivityIndicator(),
                  const SizedBox(height: 16),
                  Text(message ?? 'Loading...'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<bool?> endExamDialog(
      {required BuildContext context,
      required Map<String, dynamic> data}) async {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false, // Prevent dialog dismissal on tap outside.
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                  ),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Congratulation',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context, true),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColor.primaryOrangeColor),
                    child: const Text(
                      'Okay',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

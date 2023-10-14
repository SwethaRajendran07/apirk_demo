// To parse this JSON data, do
//
//     final warehouseDetails = warehouseDetailsFromJson(jsonString);

import 'dart:convert';

WarehouseDetails warehouseDetailsFromJson(String str) => WarehouseDetails.fromJson(json.decode(str));

String warehouseDetailsToJson(WarehouseDetails data) => json.encode(data.toJson());

class WarehouseDetails {
  List<Datum> data;

  WarehouseDetails({
    required this.data,
  });

  factory WarehouseDetails.fromJson(Map<String, dynamic> json) => WarehouseDetails(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String name;
  String shortName;
  String email;
  String phone;
  dynamic website;
  String lightLogo;
  String darkLogo;
  dynamic smallDarkLogo;
  dynamic smallLightLogo;
  dynamic address;
  String appLayout;
  int rtl;
  String mysqldumpCommand;
  String shortcutMenus;
  dynamic langId;
  dynamic websiteLangId;
  String leftSidebarTheme;
  String primaryColor;
  String dateFormat;
  String timeFormat;
  int autoDetectTimezone;
  String timezone;
  String sessionDriver;
  int appDebug;
  int updateAppNotification;
  DateTime createdAt;
  dynamic loginImage;
  String stripeId;
  String cardBrand;
  String cardLastFour;
  dynamic trialEndsAt;
  String packageType;
  DateTime licenceExpireOn;
  int isGlobal;
  String status;
  int totalUsers;
  dynamic emailVerificationCode;
  int verified;
  int whiteLabelCompleted;
  String invoiceTemplate;
  String xid;
  String xCurrencyId;
  String xWarehouseId;
  String xAdminId;
  String xSubscriptionPlanId;
  String xPaymentTranscationId;
  String loginImageUrl;
  String lightLogoUrl;
  String darkLogoUrl;
  String smallLightLogoUrl;
  String smallDarkLogoUrl;
  String beepAudioUrl;
  List<Warehouse> warehouses;

  Datum({
    required this.name,
    required this.shortName,
    required this.email,
    required this.phone,
    required this.website,
    required this.lightLogo,
    required this.darkLogo,
    required this.smallDarkLogo,
    required this.smallLightLogo,
    required this.address,
    required this.appLayout,
    required this.rtl,
    required this.mysqldumpCommand,
    required this.shortcutMenus,
    required this.langId,
    required this.websiteLangId,
    required this.leftSidebarTheme,
    required this.primaryColor,
    required this.dateFormat,
    required this.timeFormat,
    required this.autoDetectTimezone,
    required this.timezone,
    required this.sessionDriver,
    required this.appDebug,
    required this.updateAppNotification,
    required this.createdAt,
    required this.loginImage,
    required this.stripeId,
    required this.cardBrand,
    required this.cardLastFour,
    required this.trialEndsAt,
    required this.packageType,
    required this.licenceExpireOn,
    required this.isGlobal,
    required this.status,
    required this.totalUsers,
    required this.emailVerificationCode,
    required this.verified,
    required this.whiteLabelCompleted,
    required this.invoiceTemplate,
    required this.xid,
    required this.xCurrencyId,
    required this.xWarehouseId,
    required this.xAdminId,
    required this.xSubscriptionPlanId,
    required this.xPaymentTranscationId,
    required this.loginImageUrl,
    required this.lightLogoUrl,
    required this.darkLogoUrl,
    required this.smallLightLogoUrl,
    required this.smallDarkLogoUrl,
    required this.beepAudioUrl,
    required this.warehouses,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        shortName: json["short_name"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"],
        lightLogo: json["light_logo"],
        darkLogo: json["dark_logo"],
        smallDarkLogo: json["small_dark_logo"],
        smallLightLogo: json["small_light_logo"],
        address: json["address"],
        appLayout: json["app_layout"],
        rtl: json["rtl"],
        mysqldumpCommand: json["mysqldump_command"],
        shortcutMenus: json["shortcut_menus"],
        langId: json["lang_id"],
        websiteLangId: json["website_lang_id"],
        leftSidebarTheme: json["left_sidebar_theme"],
        primaryColor: json["primary_color"],
        dateFormat: json["date_format"],
        timeFormat: json["time_format"],
        autoDetectTimezone: json["auto_detect_timezone"],
        timezone: json["timezone"],
        sessionDriver: json["session_driver"],
        appDebug: json["app_debug"],
        updateAppNotification: json["update_app_notification"],
        createdAt: DateTime.parse(json["created_at"]),
        loginImage: json["login_image"],
        stripeId: json["stripe_id"],
        cardBrand: json["card_brand"],
        cardLastFour: json["card_last_four"],
        trialEndsAt: json["trial_ends_at"],
        packageType: json["package_type"],
        licenceExpireOn: DateTime.parse(json["licence_expire_on"]),
        isGlobal: json["is_global"],
        status: json["status"],
        totalUsers: json["total_users"],
        emailVerificationCode: json["email_verification_code"],
        verified: json["verified"],
        whiteLabelCompleted: json["white_label_completed"],
        invoiceTemplate: json["invoice_template"],
        xid: json["xid"],
        xCurrencyId: json["x_currency_id"],
        xWarehouseId: json["x_warehouse_id"],
        xAdminId: json["x_admin_id"],
        xSubscriptionPlanId: json["x_subscription_plan_id"],
        xPaymentTranscationId: json["x_payment_transcation_id"],
        loginImageUrl: json["login_image_url"],
        lightLogoUrl: json["light_logo_url"],
        darkLogoUrl: json["dark_logo_url"],
        smallLightLogoUrl: json["small_light_logo_url"],
        smallDarkLogoUrl: json["small_dark_logo_url"],
        beepAudioUrl: json["beep_audio_url"],
        warehouses: List<Warehouse>.from(json["warehouses"].map((x) => Warehouse.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "short_name": shortName,
        "email": email,
        "phone": phone,
        "website": website,
        "light_logo": lightLogo,
        "dark_logo": darkLogo,
        "small_dark_logo": smallDarkLogo,
        "small_light_logo": smallLightLogo,
        "address": address,
        "app_layout": appLayout,
        "rtl": rtl,
        "mysqldump_command": mysqldumpCommand,
        "shortcut_menus": shortcutMenus,
        "lang_id": langId,
        "website_lang_id": websiteLangId,
        "left_sidebar_theme": leftSidebarTheme,
        "primary_color": primaryColor,
        "date_format": dateFormat,
        "time_format": timeFormat,
        "auto_detect_timezone": autoDetectTimezone,
        "timezone": timezone,
        "session_driver": sessionDriver,
        "app_debug": appDebug,
        "update_app_notification": updateAppNotification,
        "created_at": createdAt.toIso8601String(),
        "login_image": loginImage,
        "stripe_id": stripeId,
        "card_brand": cardBrand,
        "card_last_four": cardLastFour,
        "trial_ends_at": trialEndsAt,
        "package_type": packageType,
        "licence_expire_on": licenceExpireOn.toIso8601String(),
        "is_global": isGlobal,
        "status": status,
        "total_users": totalUsers,
        "email_verification_code": emailVerificationCode,
        "verified": verified,
        "white_label_completed": whiteLabelCompleted,
        "invoice_template": invoiceTemplate,
        "xid": xid,
        "x_currency_id": xCurrencyId,
        "x_warehouse_id": xWarehouseId,
        "x_admin_id": xAdminId,
        "x_subscription_plan_id": xSubscriptionPlanId,
        "x_payment_transcation_id": xPaymentTranscationId,
        "login_image_url": loginImageUrl,
        "light_logo_url": lightLogoUrl,
        "dark_logo_url": darkLogoUrl,
        "small_light_logo_url": smallLightLogoUrl,
        "small_dark_logo_url": smallDarkLogoUrl,
        "beep_audio_url": beepAudioUrl,
        "warehouses": List<dynamic>.from(warehouses.map((x) => x.toJson())),
      };
}

class Warehouse {
  int companyId;
  String? logo;
  String? darkLogo;
  String name;
  String slug;
  String email;
  String phone;
  int showEmailOnInvoice;
  int showPhoneOnInvoice;
  dynamic address;
  String termsCondition;
  dynamic bankDetails;
  dynamic signature;
  dynamic gstInNo;
  String? qrCode;
  String? upiId;
  int onlineStoreEnabled;
  String customersVisibility;
  String suppliersVisibility;
  String productsVisibility;
  String defaultPosOrderStatus;
  int showMrpOnInvoice;
  int showDiscountTaxOnInvoice;
  DateTime createdAt;
  DateTime updatedAt;
  String posType;
  String setPosType;
  String isBarcode;
  String isWainvoice;
  String firstInvoiceNo;
  String prefixInvoice;
  String invoiceSpliter;
  String? suffixInvoice;
  String? resetInvoice;
  String invoiceStarted;
  String dailyReset;
  dynamic otp;
  String xid;
  String logoUrl;
  String darkLogoUrl;
  dynamic signatureUrl;

  Warehouse({
    required this.companyId,
    required this.logo,
    required this.darkLogo,
    required this.name,
    required this.slug,
    required this.email,
    required this.phone,
    required this.showEmailOnInvoice,
    required this.showPhoneOnInvoice,
    required this.address,
    required this.termsCondition,
    required this.bankDetails,
    required this.signature,
    required this.gstInNo,
    required this.qrCode,
    required this.upiId,
    required this.onlineStoreEnabled,
    required this.customersVisibility,
    required this.suppliersVisibility,
    required this.productsVisibility,
    required this.defaultPosOrderStatus,
    required this.showMrpOnInvoice,
    required this.showDiscountTaxOnInvoice,
    required this.createdAt,
    required this.updatedAt,
    required this.posType,
    required this.setPosType,
    required this.isBarcode,
    required this.isWainvoice,
    required this.firstInvoiceNo,
    required this.prefixInvoice,
    required this.invoiceSpliter,
    required this.suffixInvoice,
    required this.resetInvoice,
    required this.invoiceStarted,
    required this.dailyReset,
    required this.otp,
    required this.xid,
    required this.logoUrl,
    required this.darkLogoUrl,
    required this.signatureUrl,
  });

  factory Warehouse.fromJson(Map<String, dynamic> json) => Warehouse(
        companyId: json["company_id"],
        logo: json["logo"],
        darkLogo: json["dark_logo"],
        name: json["name"],
        slug: json["slug"],
        email: json["email"],
        phone: json["phone"],
        showEmailOnInvoice: json["show_email_on_invoice"],
        showPhoneOnInvoice: json["show_phone_on_invoice"],
        address: json["address"],
        termsCondition: json["terms_condition"],
        bankDetails: json["bank_details"],
        signature: json["signature"],
        gstInNo: json["gst_in_no"],
        qrCode: json["qr_code"],
        upiId: json["upi_id"],
        onlineStoreEnabled: json["online_store_enabled"],
        customersVisibility: json["customers_visibility"],
        suppliersVisibility: json["suppliers_visibility"],
        productsVisibility: json["products_visibility"],
        defaultPosOrderStatus: json["default_pos_order_status"],
        showMrpOnInvoice: json["show_mrp_on_invoice"],
        showDiscountTaxOnInvoice: json["show_discount_tax_on_invoice"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        posType: json["pos_type"],
        setPosType: json["set_pos_type"],
        isBarcode: json["is_barcode"],
        isWainvoice: json["is_wainvoice"],
        firstInvoiceNo: json["first_invoice_no"],
        prefixInvoice: json["prefix_invoice"],
        invoiceSpliter: json["invoice_spliter"],
        suffixInvoice: json["suffix_invoice"],
        resetInvoice: json["reset_invoice"],
        invoiceStarted: json["invoice_started"],
        dailyReset: json["daily_reset"],
        otp: json["otp"],
        xid: json["xid"],
        logoUrl: json["logo_url"],
        darkLogoUrl: json["dark_logo_url"],
        signatureUrl: json["signature_url"],
      );

  Map<String, dynamic> toJson() => {
        "company_id": companyId,
        "logo": logo,
        "dark_logo": darkLogo,
        "name": name,
        "slug": slug,
        "email": email,
        "phone": phone,
        "show_email_on_invoice": showEmailOnInvoice,
        "show_phone_on_invoice": showPhoneOnInvoice,
        "address": address,
        "terms_condition": termsCondition,
        "bank_details": bankDetails,
        "signature": signature,
        "gst_in_no": gstInNo,
        "qr_code": qrCode,
        "upi_id": upiId,
        "online_store_enabled": onlineStoreEnabled,
        "customers_visibility": customersVisibility,
        "suppliers_visibility": suppliersVisibility,
        "products_visibility": productsVisibility,
        "default_pos_order_status": defaultPosOrderStatus,
        "show_mrp_on_invoice": showMrpOnInvoice,
        "show_discount_tax_on_invoice": showDiscountTaxOnInvoice,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "pos_type": posType,
        "set_pos_type": setPosType,
        "is_barcode": isBarcode,
        "is_wainvoice": isWainvoice,
        "first_invoice_no": firstInvoiceNo,
        "prefix_invoice": prefixInvoice,
        "invoice_spliter": invoiceSpliter,
        "suffix_invoice": suffixInvoice,
        "reset_invoice": resetInvoice,
        "invoice_started": invoiceStarted,
        "daily_reset": dailyReset,
        "otp": otp,
        "xid": xid,
        "logo_url": logoUrl,
        "dark_logo_url": darkLogoUrl,
        "signature_url": signatureUrl,
      };
}

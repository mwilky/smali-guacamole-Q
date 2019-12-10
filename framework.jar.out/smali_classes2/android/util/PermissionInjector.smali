.class public Landroid/util/PermissionInjector;
.super Ljava/lang/Object;
.source "PermissionInjector.java"


# static fields
.field public static final BLOCK_CALLER:Z = true

.field public static final CUSTOM_PERMISSION_CONTROL_BLUETOOTH:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

.field public static final CUSTOM_PERMISSION_CONTROL_DATA:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_DATA"

.field public static final CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

.field public static final CUSTOM_PERMISSION_CONTROL_WIFI:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_WIFI"

.field public static final CUSTOM_PERMISSION_READ_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_READ_MMS"

.field public static final CUSTOM_PERMISSION_SEND_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_SEND_MMS"

.field private static final ENABLED:Z

.field public static final MSG_BIND_SERVICE:I = 0x3e7

.field public static final MSG_GET_ALL_PERMISSION_STATES:I = 0x3

.field public static final MSG_GET_PACKAGE_PERMISSION_STATES:I = 0x5

.field public static final MSG_PERMISSION_DONE:I = 0x5

.field public static final MSG_REGISTER_CLIENT:I = 0x1

.field public static final MSG_REPLY_ALL_PERMISSION_STATES:I = 0x4

.field public static final MSG_REPLY_PACKAGE_PERMISSION_STATES:I = 0x6

.field public static final MSG_REPLY_REQUSET_DONE:I = 0x4

.field public static final MSG_REPLY_RESET_SINGLE_PACKAGE_PERMISSION_STATES:I = 0x8

.field public static final MSG_REPLY_UPDATE_RESULT:I = 0x2

.field public static final MSG_REQUEST_PERMISSION:I = 0x3

.field public static final MSG_RESET_SINGLE_PACKAGE_PERMISSION_STATES:I = 0x7

.field public static final MSG_SET_USER_DECISION:I = 0x1

.field public static final MSG_UNREGISTER_CLIENT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sPermission:Landroid/util/IPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/util/PermissionInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PermissionInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IPermission;

    sput-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    :cond_0
    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/util/IPermission;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getForegroundPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IPermission;

    sput-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    :cond_0
    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/util/IPermission;->getForegroundPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasBackgroundPermission(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IPermission;

    sput-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    :cond_0
    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/util/IPermission;->hasBackgroundPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isBackgroundPermission(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IPermission;

    sput-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    :cond_0
    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/util/IPermission;->isBackgroundPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCTAMonitoredPermission(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IPermission;

    sput-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    :cond_0
    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/util/IPermission;->isCTAMonitoredPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCTAPermForSDK23(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IPermission;

    sput-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    :cond_0
    sget-object v0, Landroid/util/PermissionInjector;->sPermission:Landroid/util/IPermission;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/util/IPermission;->isCTAPermForSDK23(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isSpecialHandleForRecordAudio(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Landroid/util/Permission;

    invoke-direct {v0}, Landroid/util/Permission;-><init>()V

    invoke-interface {v0, p0}, Landroid/util/IPermission;->isSpecialHandleForRecordAudio(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static rejectPerm(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    sget-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "android.permission.CALL_PHONE"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, "android.permission.CAMERA"

    :cond_4
    :goto_0
    invoke-static {p0, v0}, Landroid/util/PermissionInjector;->rejectPerm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public static rejectPerm(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/util/Permission;

    invoke-direct {v0, p0}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0, p1}, Landroid/util/IPermission;->requestPermissionAuto(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static rejectPermApplyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isDelete()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/PermissionInjector;->rejectPermWithUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    return v1
.end method

.method public static rejectPermWithUri(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "content://com.android.contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.permission.READ_CONTACTS"

    goto :goto_0

    :cond_1
    const-string v1, "content://sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "android.permission.READ_SMS"

    goto :goto_0

    :cond_2
    const-string v1, "content://mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "content://mms/part/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "content://mms/drm/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "CUSTOM_PERMISSION_READ_MMS"

    goto :goto_0

    :cond_3
    const-string v1, "content://com.android.calendar/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "android.permission.WRITE_CALENDAR"

    :cond_4
    :goto_0
    invoke-static {p0, v0}, Landroid/util/PermissionInjector;->rejectPerm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static rejectPhonePerm(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.CALL_PHONE"

    invoke-static {p0, v0}, Landroid/util/PermissionInjector;->rejectPerm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static rejectQueryPermWithUri(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "content://sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.permission.READ_SMS"

    goto :goto_0

    :cond_1
    const-string v1, "content://mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "content://mms/part/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "content://mms/drm/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "CUSTOM_PERMISSION_READ_MMS"

    goto :goto_0

    :cond_2
    const-string v1, "content://com.android.contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "android.permission.READ_CONTACTS"

    goto :goto_0

    :cond_3
    const-string v1, "content://call_log"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "android.permission.READ_CALL_LOG"

    goto :goto_0

    :cond_4
    const-string v1, "content://browser/bookmarks"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

    goto :goto_0

    :cond_5
    const-string v1, "content://com.android.calendar/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "android.permission.READ_CALENDAR"

    :cond_6
    :goto_0
    invoke-static {p0, v0}, Landroid/util/PermissionInjector;->rejectPerm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static rejectRedioPerm(Landroid/content/Context;Landroid/media/CamcorderProfile;)Z
    .locals 1

    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    if-lez v0, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/util/PermissionInjector;->rejectPerm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static rejectSmsPermission(Landroid/content/Context;Landroid/content/IntentFilter;)Z
    .locals 5

    sget-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    new-instance v3, Landroid/util/Permission;

    invoke-direct {v3, p0}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/util/IPermission;->intentRequiresPermReceiveSMS(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, p0, v1}, Landroid/util/IPermission;->requestPermissionAuto(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static skipCheckComponentPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Landroid/util/PermissionInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.android.permissioncontroller"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oneplus.permissionutil"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.class public Landroid/util/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Landroid/util/IPermission;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Permission$IncomingHandler;
    }
.end annotation


# static fields
.field public static final CTA_MONITORED_PERMISSIONS:[Ljava/lang/String;

.field public static final CUSTOM_PERMISSIONS:[Ljava/lang/String;

.field public static final INTENT_REQUIRES_PERMISSION_RECEIVE_SMS:[Ljava/lang/String;

.field private static final RECORD_AUDIO_SPECIAL_LIST:[Ljava/lang/String;

.field public static final RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CTAPermission"


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mByPassPerm:Z

.field private mConditionMet:Z

.field mContext:Landroid/content/Context;

.field private mDoubleCheck:Z

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mMessenger:Landroid/os/Messenger;

.field private mPackageName:Ljava/lang/String;

.field mPermissionControlService:Landroid/os/Messenger;

.field mPermissionRequetService:Landroid/os/Messenger;

.field private mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

.field private mRequestPermission:Ljava/lang/String;

.field private mServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "android.permission.READ_CONTACTS"

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission.CALL_PHONE"

    const-string v6, "android.permission.CAMERA"

    const-string v7, "android.permission.RECORD_AUDIO"

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    const-string v9, "android.permission.READ_CALENDAR"

    const-string v10, "android.permission.WRITE_CALENDAR"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->CTA_MONITORED_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "CUSTOM_PERMISSION_READ_MMS"

    const-string v1, "CUSTOM_PERMISSION_SEND_MMS"

    const-string v2, "CUSTOM_PERMISSION_CONTROL_WIFI"

    const-string v3, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    const-string v4, "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->CUSTOM_PERMISSIONS:[Ljava/lang/String;

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    const-string v4, "android.provider.Telephony.SMS_CB_RECEIVED"

    const-string v5, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    const-string v6, "android.provider.Telephony.SIM_FULL"

    const-string v7, "android.provider.Telephony.SMS_REJECTED"

    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->INTENT_REQUIRES_PERMISSION_RECEIVE_SMS:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    sget-object v0, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.tencent.mobileqq"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->RECORD_AUDIO_SPECIAL_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Permission;->mServiceConnected:Z

    iput-boolean v0, p0, Landroid/util/Permission;->mConditionMet:Z

    iput-boolean v0, p0, Landroid/util/Permission;->mDoubleCheck:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Permission;->mServiceConnected:Z

    iput-boolean v0, p0, Landroid/util/Permission;->mConditionMet:Z

    iput-boolean v0, p0, Landroid/util/Permission;->mDoubleCheck:Z

    iput-object p1, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Permission;->mByPassPerm:Z

    const-string v1, "CTAPermission"

    const-string v2, "ApplicationContext is null, so bypass permission check!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v0
.end method

.method static synthetic access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 0

    iput-object p1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object p1
.end method

.method static synthetic access$100(Landroid/util/Permission;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/Permission;->letGo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/Permission;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    return-object v0
.end method

.method private cleanUpHandler()V
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 5

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "key_pkg_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CTAPermission"

    const-string/jumbo v4, "getPermissionState got exception..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v2, "control service feedback custom permission state"

    invoke-direct {p0, v2}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v2
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private letGo(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/util/Permission;->mConditionMet:Z

    iget-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    const-string v1, "CTAPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] notified beacuase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private makeSurePermissionServiceRunning()V
    .locals 6

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION_CONTROL_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    iget-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "CTAPermission"

    const-string v4, "[API] permission service is not ready, wait for it!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v4, 0x1e

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "makeSurePermissionServiceRunning got exception..."

    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-interface {v0, v1}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    invoke-interface {v0, v2}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    iget-object v4, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-eqz v4, :cond_2

    nop

    const-string v1, "[API] permission service is ready"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    goto :goto_0
.end method

.method private postPermissionRequestMessage()V
    .locals 5

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    const-string/jumbo v3, "key_perm"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "key_pkg_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/util/Permission;->mDoubleCheck:Z

    const-string/jumbo v3, "key_is_double_check"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CTAPermission"

    const-string/jumbo v4, "postPermissionRequestMessage got exception..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private prepareClientMessenger()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IPChandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/util/Permission$IncomingHandler;

    iget-object v1, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p0, v1}, Landroid/util/Permission$IncomingHandler;-><init>(Landroid/util/Permission;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private waitHere(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION_CONTROL_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->isRequestPermission(Z)V

    :goto_0
    iget-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "CTAPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] start wait for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->isRequestPermission(Z)V

    iput-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5
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

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasBackgroundPermission(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public intentRequiresPermReceiveSMS(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->INTENT_REQUIRES_PERMISSION_RECEIVE_SMS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBackgroundPermission(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/util/Permission;->RELATIONSHIP_BETWEEN_FG_AND_BG:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isCTAMonitoredPermission(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->CTA_MONITORED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCTAPermForSDK23(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->CUSTOM_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpecialHandleForRecordAudio(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->RECORD_AUDIO_SPECIAL_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestPermissionAuto(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    iput-object p2, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/util/Permission;->mByPassPerm:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const-string v2, "com.android.cts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/content/pm/OpPackageManagerInjector;->isInSpecialTesting()Z

    move-result v0

    const-string v2, "CTAPermission"

    if-eqz v0, :cond_2

    const-string v0, "Yo, skip it."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, -0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v3, v4

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    nop

    invoke-direct {p0, v3}, Landroid/util/Permission;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p2}, Landroid/util/Permission;->isCTAPermForSDK23(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x16

    if-gt v0, v4, :cond_4

    invoke-virtual {p0, p2}, Landroid/util/Permission;->isCTAMonitoredPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    return v1

    :cond_5
    invoke-direct {p0}, Landroid/util/Permission;->makeSurePermissionServiceRunning()V

    invoke-direct {p0}, Landroid/util/Permission;->prepareClientMessenger()V

    iget-object v4, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Landroid/util/Permission;->getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] can\'t find perm state of pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v1

    :cond_6
    const-string v5, "CUSTOM_PERMISSION_CONTROL_WIFI"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x1c

    if-le v0, v6, :cond_7

    const-string v5, "Starting with Build.VERSION_CODES#Q, applications are not allowed to enable/disable Wi-Fi"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v1

    :cond_7
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " is granted"

    const/4 v7, 0x0

    if-nez v5, :cond_a

    const-string v5, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[API] perm "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v1

    :cond_8
    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v5, :cond_a

    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_a

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/util/Permission;->isSpecialHandleForRecordAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x17

    if-ge v0, v5, :cond_9

    iput-boolean v1, p0, Landroid/util/Permission;->mDoubleCheck:Z

    goto :goto_0

    :cond_9
    const-string v1, "[API] perm is denied and fixed"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v7

    :cond_a
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    invoke-direct {p0}, Landroid/util/Permission;->postPermissionRequestMessage()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " requesting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    const-string v5, "[API] wait finish"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    if-eqz v5, :cond_c

    iget-boolean v5, v5, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perm "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v7, v7, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v1

    :cond_b
    iget-object v1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v1, v1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v1, v1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perm is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v5, v5, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "denied, and fixed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v7

    :cond_c
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v7

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get sdk versiion fail, pkgName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

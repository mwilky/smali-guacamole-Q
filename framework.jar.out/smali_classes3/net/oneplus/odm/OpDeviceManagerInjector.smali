.class public Lnet/oneplus/odm/OpDeviceManagerInjector;
.super Ljava/lang/Object;
.source "OpDeviceManagerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;


# instance fields
.field private sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/OpDeviceManagerInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 1

    sget-object v0, Lnet/oneplus/odm/OpDeviceManagerInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-direct {v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;-><init>()V

    sput-object v0, Lnet/oneplus/odm/OpDeviceManagerInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    :cond_0
    sget-object v0, Lnet/oneplus/odm/OpDeviceManagerInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object v0
.end method

.method private makeSureInstanceInitialized()V
    .locals 1

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_DEVICE_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/odm/IOpDeviceManager;

    iput-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public decryptWithAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->decryptWithAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decryptWithBasha64([C)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->decryptWithBasha64([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptWithAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->encryptWithAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptWithBasha64([C)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->encryptWithBasha64([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptWithCRC32([B)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->encryptWithCRC32([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptWithCRC64([BI)[B
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->encryptWithCRC64([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptWithSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->encryptWithSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptWithSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->encryptWithSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initAppUsageCollector(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->initAppUsageCollector(Landroid/content/Context;)V

    return-void
.end method

.method public preserveAddApptoAutoGameModeList(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/odm/IOpDeviceManager;->preserveAddApptoAutoGameModeList(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/odm/IOpDeviceManager;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public preserveAppFocusData(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;Z)V
    .locals 6

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/oneplus/odm/IOpDeviceManager;->preserveAppFocusData(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;Z)V

    return-void
.end method

.method public preserveAppIssueData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/odm/IOpDeviceManager;->preserveAppIssueData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preserveAppUsageAppDied(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->preserveAppUsageAppDied(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public preserveAppUsageShutDown(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->preserveAppUsageShutDown(Landroid/content/Context;)V

    return-void
.end method

.method public preserveAssistantData(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->preserveAssistantData(Landroid/content/Context;I)V

    return-void
.end method

.method public preserveCopyData(Landroid/content/Context;Landroid/content/ClipData;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->preserveCopyData(Landroid/content/Context;Landroid/content/ClipData;)V

    return-void
.end method

.method public preserveHeadPhoneEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/odm/IOpDeviceManager;->preserveHeadPhoneEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preserveInstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/oneplus/odm/IOpDeviceManager;->preserveInstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public preserveMusicData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/odm/IOpDeviceManager;->preserveMusicData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preserveNotificationData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->preserveNotificationData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public preserveOsBatchData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/odm/IOpDeviceManager;->preserveOsBatchData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    return-void
.end method

.method public preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/odm/IOpDeviceManager;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public preservePowerData(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/odm/IOpDeviceManager;->preservePowerData(Landroid/content/Context;IZ)V

    return-void
.end method

.method public preserveRebootReason(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1}, Lnet/oneplus/odm/IOpDeviceManager;->preserveRebootReason(Landroid/content/Context;)V

    return-void
.end method

.method public preserveSensorData(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/odm/IOpDeviceManager;->preserveSensorData(Landroid/content/Context;II)V

    return-void
.end method

.method public preserveStartActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->preserveStartActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public preserveStartForegroundService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/odm/IOpDeviceManager;->preserveStartForegroundService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preserveStopActivity(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 7

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lnet/oneplus/odm/IOpDeviceManager;->preserveStopActivity(Landroid/content/Context;Ljava/lang/String;JJ)V

    return-void
.end method

.method public preserveStopForegroundService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/odm/IOpDeviceManager;->preserveStopForegroundService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preserveSystemErrorData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/odm/IOpDeviceManager;->preserveSystemErrorData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public preserveUninstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->makeSureInstanceInitialized()V

    iget-object v0, p0, Lnet/oneplus/odm/OpDeviceManagerInjector;->sOpDeviceManager:Lnet/oneplus/odm/IOpDeviceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/odm/IOpDeviceManager;->preserveUninstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

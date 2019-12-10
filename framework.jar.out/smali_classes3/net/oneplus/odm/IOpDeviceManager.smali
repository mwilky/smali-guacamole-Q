.class public interface abstract Lnet/oneplus/odm/IOpDeviceManager;
.super Ljava/lang/Object;
.source "IOpDeviceManager.java"


# virtual methods
.method public abstract decryptWithAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract decryptWithBasha64([C)Ljava/lang/String;
.end method

.method public abstract encryptWithAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encryptWithBasha64([C)Ljava/lang/String;
.end method

.method public abstract encryptWithCRC32([B)Ljava/lang/String;
.end method

.method public abstract encryptWithCRC64([BI)[B
.end method

.method public abstract encryptWithSHA1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encryptWithSHA256(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initAppUsageCollector(Landroid/content/Context;)V
.end method

.method public abstract preserveAddApptoAutoGameModeList(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
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
.end method

.method public abstract preserveAppFocusData(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;Z)V
.end method

.method public abstract preserveAppIssueData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract preserveAppUsageAppDied(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract preserveAppUsageShutDown(Landroid/content/Context;)V
.end method

.method public abstract preserveAssistantData(Landroid/content/Context;I)V
.end method

.method public abstract preserveCopyData(Landroid/content/Context;Landroid/content/ClipData;)V
.end method

.method public abstract preserveHeadPhoneEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract preserveInstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract preserveMusicData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract preserveNotificationData(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract preserveOsBatchData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V
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
.end method

.method public abstract preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
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
.end method

.method public abstract preservePowerData(Landroid/content/Context;IZ)V
.end method

.method public abstract preserveRebootReason(Landroid/content/Context;)V
.end method

.method public abstract preserveSensorData(Landroid/content/Context;II)V
.end method

.method public abstract preserveStartActivity(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract preserveStartForegroundService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract preserveStopActivity(Landroid/content/Context;Ljava/lang/String;JJ)V
.end method

.method public abstract preserveStopForegroundService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract preserveSystemErrorData(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract preserveUninstallInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

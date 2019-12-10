.class public interface abstract Landroid/util/IPermission;
.super Ljava/lang/Object;
.source "IPermission.java"


# virtual methods
.method public abstract getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getForegroundPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
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
.end method

.method public abstract hasBackgroundPermission(Ljava/lang/String;)Z
.end method

.method public abstract intentRequiresPermReceiveSMS(Ljava/lang/String;)Z
.end method

.method public abstract isBackgroundPermission(Ljava/lang/String;)Z
.end method

.method public abstract isCTAMonitoredPermission(Ljava/lang/String;)Z
.end method

.method public abstract isCTAPermForSDK23(Ljava/lang/String;)Z
.end method

.method public abstract isSpecialHandleForRecordAudio(Ljava/lang/String;)Z
.end method

.method public abstract requestPermissionAuto(Landroid/content/Context;Ljava/lang/String;)Z
.end method

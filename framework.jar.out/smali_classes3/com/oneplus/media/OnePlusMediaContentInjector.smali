.class public Lcom/oneplus/media/OnePlusMediaContentInjector;
.super Ljava/lang/Object;
.source "OnePlusMediaContentInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;,
        Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;
    }
.end annotation


# static fields
.field public static DBG:Z = false

.field public static DBG_ALL:Z = false

.field public static final DBG_DUMP_STACK:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusMediaContentInjector"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.debug.content.dumpstack"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG:Z

    const-string v0, "DBG_MEDIA_ALL"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_ALL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalPath()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

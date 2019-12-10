.class public Landroid/os/RecoverySystemInjector;
.super Ljava/lang/Object;
.source "RecoverySystemInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RecoverySystemInjector"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/os/RecoverySystemInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReplaceInstallPackagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/storage/emulated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/data/media"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

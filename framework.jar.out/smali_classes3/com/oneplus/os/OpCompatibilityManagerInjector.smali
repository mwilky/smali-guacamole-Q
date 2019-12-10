.class public Lcom/oneplus/os/OpCompatibilityManagerInjector;
.super Ljava/lang/Object;
.source "OpCompatibilityManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OpCompatibilityManagerInjector"

.field private static opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/os/OpCompatibilityManagerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInConfigList(ILjava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/oneplus/os/OpCompatibilityManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusServiceManager;

    sput-object v0, Lcom/oneplus/os/OpCompatibilityManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    :cond_0
    sget-object v0, Lcom/oneplus/os/OpCompatibilityManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusServiceManager;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "OpCompatibilityManagerInjector"

    const-string v1, "opServiceManager is still null on isInConfigList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

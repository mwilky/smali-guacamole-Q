.class public Lcom/oneplus/os/OnePlusServiceManagerInjector;
.super Ljava/lang/Object;
.source "OnePlusServiceManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusServiceManagerInjector"

.field private static opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableTheme(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusServiceManager;

    sput-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    :cond_0
    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOnePlusServiceManager;->disableTheme(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "OnePlusServiceManagerInjector"

    const-string v1, "opServiceManager is still null on disableTheme"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static enableTheme(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusServiceManager;

    sput-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    :cond_0
    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOnePlusServiceManager;->enableTheme(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "OnePlusServiceManagerInjector"

    const-string v1, "opServiceManager is still null on enableTheme"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getBgPowerHungryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusServiceManager;

    sput-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    :cond_0
    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/os/IOnePlusServiceManager;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "OnePlusServiceManagerInjector"

    const-string v1, "opServiceManager is still null, just return new ArrayList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusServiceManager;

    sput-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    :cond_0
    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusServiceManager;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "OnePlusServiceManagerInjector"

    const-string v1, "opServiceManager is still null on processDisableThemeCategory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusServiceManager;

    sput-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    :cond_0
    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusServiceManager;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "OnePlusServiceManagerInjector"

    const-string v1, "opServiceManager is still null on processEnableThemeCategory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusServiceManager;

    sput-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    :cond_0
    sget-object v0, Lcom/oneplus/os/OnePlusServiceManagerInjector;->opServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusServiceManager;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "OnePlusServiceManagerInjector"

    const-string v1, "opServiceManager is still null on stopBgPowerHungryApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.class public Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;
.super Ljava/lang/Object;
.source "OnePlusSceneCallBlockManagerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusSceneCallBlockManagerInjector"

.field private static sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 1

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_SCENE_CALL_BLOCK:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    sput-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    :cond_0
    return-void
.end method

.method public static isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z
    .locals 6

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z

    move-result v0

    return v0
.end method

.method public static isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public static isStreamMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->isStreamMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isUsageMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needUpdate(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->needUpdate(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static updatePis()V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->init()V

    sget-object v0, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->sOnePlusSceneCallBlockManager:Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;

    invoke-interface {v0}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlockManager;->updatePis()V

    return-void
.end method

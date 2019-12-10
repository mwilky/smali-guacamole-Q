.class public Lcom/oneplus/media/OnePlusRingtoneManagerInjector;
.super Ljava/lang/Object;
.source "OnePlusRingtoneManagerInjector.java"


# static fields
.field public static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusRingtoneManagerInjector"

.field private static opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/media/IOnePlusRingtoneManager;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/media/IOnePlusRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCacheForUri(ILandroid/net/Uri;I)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/media/IOnePlusRingtoneManager;->getCacheForUri(ILandroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/media/IOnePlusRingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getDefaultRingtoneUriBySubId(I)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/media/IOnePlusRingtoneManager;->getDefaultRingtoneUriBySubId(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/media/IOnePlusRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/media/IOnePlusRingtoneManager;->getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static initOnePlusRingtoneManager()V
    .locals 1

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_RINGTONE_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/IOnePlusRingtoneManager;

    sput-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    :cond_0
    return-void
.end method

.method public static isCustomFlagOn(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/media/IOnePlusRingtoneManager;->isCustomFlagOn(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ringtoneCheckUriValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/media/IOnePlusRingtoneManager;->ringtoneCheckUriValid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/media/IOnePlusRingtoneManager;->ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/media/IOnePlusRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public static setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/media/IOnePlusRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public static validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->initOnePlusRingtoneManager()V

    sget-object v0, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->opRingtoneManager:Lcom/oneplus/media/IOnePlusRingtoneManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/media/IOnePlusRingtoneManager;->validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

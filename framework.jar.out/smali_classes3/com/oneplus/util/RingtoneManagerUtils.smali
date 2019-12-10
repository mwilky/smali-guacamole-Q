.class public Lcom/oneplus/util/RingtoneManagerUtils;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/oneplus/media/OnePlusRingtoneManagerInjector;->ringtoneCheckUriValid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

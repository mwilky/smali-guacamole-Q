.class interface abstract Lcom/oneplus/media/IOnePlusRingtoneManager;
.super Ljava/lang/Object;
.source "IOnePlusRingtoneManager.java"


# virtual methods
.method public abstract confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
.end method

.method public abstract getCacheForUri(ILandroid/net/Uri;I)Landroid/net/Uri;
.end method

.method public abstract getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I
.end method

.method public abstract getDefaultRingtoneUriBySubId(I)Landroid/net/Uri;
.end method

.method public abstract getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method public abstract getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I
.end method

.method public abstract isCustomFlagOn(Landroid/content/Context;)Z
.end method

.method public abstract ringtoneCheckUriValid(Landroid/content/Context;Landroid/net/Uri;)Z
.end method

.method public abstract ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract setActualDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V
.end method

.method public abstract validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
.end method

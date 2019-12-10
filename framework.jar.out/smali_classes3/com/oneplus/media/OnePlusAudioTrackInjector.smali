.class public Lcom/oneplus/media/OnePlusAudioTrackInjector;
.super Ljava/lang/Object;
.source "OnePlusAudioTrackInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusAudioTrackInjector"

.field private static mGameList:[Ljava/lang/String;

.field private static mVoipApps:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "com.tencent.mm"

    const-string v1, "com.skype.rover"

    const-string v2, "com.whatsapp"

    const-string v3, "com.alibaba.mobileim"

    const-string v4, "com.tencent.mobileqqi"

    const-string v5, "com.tencent.qt.qtx"

    const-string v6, "com.xiaomi.channele"

    const-string v7, "com.google.android.talk"

    const-string v8, "cn.com.fetion"

    const-string v9, "cn.com.talker"

    const-string v10, "com.viber.voip"

    const-string v11, "jp.naver.line.android"

    const-string v12, "com.tencent.mobileqq"

    const-string/jumbo v13, "yuku.luyinji.full"

    const-string v14, "im.yixin"

    const-string v15, "com.asiainno.pengpeng"

    const-string v16, "com.duowan.mobile"

    const-string v17, "com.immomo.momo"

    const-string v18, "com.yy.yymeet"

    const-string v19, "com.yx"

    const-string v20, "com.facebook.katana"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/media/OnePlusAudioTrackInjector;->mVoipApps:[Ljava/lang/String;

    const-string v0, "com.nextwave.wcc2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/media/OnePlusAudioTrackInjector;->mGameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(II)V
    .locals 6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play() packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusAudioTrackInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufferSizeInBytes:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sampleRate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e80

    if-ne p1, v1, :cond_0

    const/16 v1, 0x5080

    if-ne p0, v1, :cond_0

    const-string v1, "isWechatVoiceMsg=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "isWechatVoiceMsg=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/oneplus/media/OnePlusAudioTrackInjector;->mVoipApps:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    if-eqz v0, :cond_1

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    const-string v3, "isVoipApp=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const-string v3, "isVoipApp=0"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_3
    const/4 v3, 0x0

    :goto_4
    sget-object v4, Lcom/oneplus/media/OnePlusAudioTrackInjector;->mGameList:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    if-eqz v0, :cond_4

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "isSpecialGameplaying=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setParameters isSpecialGameplaying=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method public static stop(I)V
    .locals 5

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop() packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sampleRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusAudioTrackInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e80

    if-ne p0, v1, :cond_0

    const-string v1, "isWechatVoiceMsg=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/oneplus/media/OnePlusAudioTrackInjector;->mGameList:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    if-eqz v0, :cond_1

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "isSpecialGameplaying=0"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParameters isSpecialGameplaying=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.class public Lcom/oneplus/screenshot/longshot/reject/ByTelephony;
.super Lcom/oneplus/screenshot/longshot/reject/Reject;
.source "ByTelephony.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/reject/Reject;-><init>(Landroid/content/Context;)V

    const-string v0, "ByTelephony"

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isReject()Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->isIdle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.class public final Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsCbHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCodingScheme"
.end annotation


# instance fields
.field public final encoding:I

.field public final hasLanguageIndicator:Z

.field public final language:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    and-int/lit16 v3, p1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5

    const/16 v4, 0xe

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xf

    if-eq v3, v6, :cond_3

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    and-int/lit8 v3, p1, 0xc

    shr-int/2addr v3, v4

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->access$100()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0xf

    if-ne v3, v5, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->access$000()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    goto :goto_0

    :cond_3
    and-int/lit8 v3, p1, 0x4

    shr-int/2addr v3, v4

    if-ne v3, v5, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    nop

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->encoding:I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->language:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->hasLanguageIndicator:Z

    return-void

    :cond_5
    :pswitch_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

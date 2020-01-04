.class final Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitStreamReader"
.end annotation


# instance fields
.field private mCurrentOffset:I

.field private final mData:[B

.field private mRemainedBit:I


# direct methods
.method constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mData:[B

    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mCurrentOffset:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mRemainedBit:I

    return-void
.end method


# virtual methods
.method public read(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mRemainedBit:I

    const/4 v2, 0x1

    if-lt p1, v1, :cond_0

    shl-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mData:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mCurrentOffset:I

    aget-byte v3, v3, v4

    shl-int v5, v2, v1

    sub-int/2addr v5, v2

    and-int/2addr v3, v5

    or-int/2addr v0, v3

    sub-int/2addr p1, v1

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mRemainedBit:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mCurrentOffset:I

    goto :goto_0

    :cond_0
    shl-int/2addr v0, p1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mData:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mCurrentOffset:I

    aget-byte v3, v3, v4

    shl-int v4, v2, v1

    sub-int/2addr v4, v2

    and-int v2, v3, v4

    sub-int v3, v1, p1

    shr-int/2addr v2, v3

    or-int/2addr v0, v2

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mRemainedBit:I

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public skip()V
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mRemainedBit:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mRemainedBit:I

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mCurrentOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->mCurrentOffset:I

    :cond_0
    return-void
.end method

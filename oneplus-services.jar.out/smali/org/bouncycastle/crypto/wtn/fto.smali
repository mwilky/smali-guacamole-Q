.class public Lorg/bouncycastle/crypto/wtn/fto;
.super Lorg/bouncycastle/crypto/wtn/cjf;
.source ""


# instance fields
.field private pza:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    const/16 v0, 0x400

    goto :goto_0

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/wtn/fto;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    iput p2, p0, Lorg/bouncycastle/crypto/wtn/fto;->pza:I

    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/fto;->pza:I

    return p0
.end method

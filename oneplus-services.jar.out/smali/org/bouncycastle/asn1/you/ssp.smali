.class public interface abstract Lorg/bouncycastle/asn1/you/ssp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AGa:Lorg/bouncycastle/asn1/bvj;

.field public static final BGa:Lorg/bouncycastle/asn1/bvj;

.field public static final CGa:Lorg/bouncycastle/asn1/bvj;

.field public static final data:Lorg/bouncycastle/asn1/bvj;

.field public static final digestedData:Lorg/bouncycastle/asn1/bvj;

.field public static final encryptedData:Lorg/bouncycastle/asn1/bvj;

.field public static final envelopedData:Lorg/bouncycastle/asn1/bvj;

.field public static final signedAndEnvelopedData:Lorg/bouncycastle/asn1/bvj;

.field public static final signedData:Lorg/bouncycastle/asn1/bvj;

.field public static final wGa:Lorg/bouncycastle/asn1/bvj;

.field public static final xGa:Lorg/bouncycastle/asn1/bvj;

.field public static final yGa:Lorg/bouncycastle/asn1/bvj;

.field public static final zGa:Lorg/bouncycastle/asn1/bvj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->data:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->data:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->signedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->signedData:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->envelopedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->envelopedData:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->signedAndEnvelopedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->signedAndEnvelopedData:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->digestedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->digestedData:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->encryptedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->encryptedData:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->id_ct_authData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->wGa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->id_ct_compressedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->xGa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->id_ct_authEnvelopedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->yGa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->id_ct_timestampedData:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->zGa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->AGa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/you/ssp;->AGa:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/bvj;->ra(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->BGa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/you/ssp;->AGa:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/bvj;->ra(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/you/ssp;->CGa:Lorg/bouncycastle/asn1/bvj;

    return-void
.end method

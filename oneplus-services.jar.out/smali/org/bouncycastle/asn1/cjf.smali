.class Lorg/bouncycastle/asn1/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/ire;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/ear;->parser()Lorg/bouncycastle/asn1/ire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gta:Lorg/bouncycastle/asn1/ear;

.field private index:I

.field private final max:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/ear;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/cjf;->this$0:Lorg/bouncycastle/asn1/ear;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cjf;->Gta:Lorg/bouncycastle/asn1/ear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lorg/bouncycastle/asn1/cjf;->this$0:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/cjf;->max:I

    return-void
.end method


# virtual methods
.method public cno()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/cjf;->Gta:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ssp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/cjf;->index:I

    iget v1, p0, Lorg/bouncycastle/asn1/cjf;->max:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cjf;->this$0:Lorg/bouncycastle/asn1/ear;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/cjf;->index:I

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    instance-of v0, p0, Lorg/bouncycastle/asn1/obl;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->parser()Lorg/bouncycastle/asn1/oxb;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/asn1/ear;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->parser()Lorg/bouncycastle/asn1/ire;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/cjf;->Gta:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

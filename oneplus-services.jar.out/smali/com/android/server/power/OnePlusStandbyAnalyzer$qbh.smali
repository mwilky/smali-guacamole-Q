.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qbh"
.end annotation


# instance fields
.field public fF:I

.field public gF:I

.field public hF:[I

.field public mCurrent:I

.field public mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->fF:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mCurrent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    return-void
.end method


# virtual methods
.method public Pc()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Fja:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v2, "]"

    const-string v3, "], ["

    const-string v4, "# TeleChgInfo ["

    const-string v5, ", "

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->fF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->wja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->wja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->xja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->xja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p0, p0, v1

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Fja:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->fF:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->wja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->xja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    :goto_0
    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    return-void
.end method

.method public qbh(IZ)V
    .locals 2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Fja:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mCurrent:I

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->fF:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->fF:I

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->fromValue(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p2, Lcom/android/server/power/kth;->oE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->xja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget v0, p1, p2

    add-int/2addr v0, v1

    aput v0, p1, p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->wja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget v0, p1, p2

    add-int/2addr v0, v1

    aput v0, p1, p2

    :goto_0
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Fja:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v2, "]"

    const-string v3, ", "

    const-string v4, "], ["

    const-string v5, "# TeleChgInfo ["

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->fF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->gF:I

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->wja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->wja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->xja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->hF:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;->xja:Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p0, p0, v1

    goto :goto_0
.end method

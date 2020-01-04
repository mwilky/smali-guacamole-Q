.class final Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeoFencingTriggerMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;
    }
.end annotation


# static fields
.field public static final TYPE_ACTIVE_ALERT_SHARE_WAC:I = 0x2


# instance fields
.field public final cbIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;->type:I

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;->cbIdentifiers:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$toString$0(Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;->messageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;->serialNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "(msgId = %d, serial = %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method shouldShareBroadcastArea()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;->cbIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;->INSTANCE:Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " identifiers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

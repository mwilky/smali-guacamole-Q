.class public final synthetic Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;->INSTANCE:Lcom/android/internal/telephony/gsm/-$$Lambda$GsmSmsCbMessage$GeoFencingTriggerMessage$pWnGG2lYYLGGDO9XCPIlkTZ5Yd0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;

    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;->lambda$toString$0(Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

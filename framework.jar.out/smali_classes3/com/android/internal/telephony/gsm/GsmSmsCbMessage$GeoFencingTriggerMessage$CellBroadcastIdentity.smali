.class final Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CellBroadcastIdentity"
.end annotation


# instance fields
.field public final messageIdentifier:I

.field public final serialNumber:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;->messageIdentifier:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;->serialNumber:I

    return-void
.end method

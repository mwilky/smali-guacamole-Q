.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$CbGeoUtils$Polygon$fpP3DlgZjn6sdCx41Ymo68J7c-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/CbGeoUtils$Polygon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/CbGeoUtils$Polygon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$CbGeoUtils$Polygon$fpP3DlgZjn6sdCx41Ymo68J7c-Y;->f$0:Lcom/android/internal/telephony/CbGeoUtils$Polygon;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$CbGeoUtils$Polygon$fpP3DlgZjn6sdCx41Ymo68J7c-Y;->f$0:Lcom/android/internal/telephony/CbGeoUtils$Polygon;

    check-cast p1, Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CbGeoUtils$Polygon;->lambda$new$0$CbGeoUtils$Polygon(Lcom/android/internal/telephony/CbGeoUtils$LatLng;)Lcom/android/internal/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p1

    return-object p1
.end method

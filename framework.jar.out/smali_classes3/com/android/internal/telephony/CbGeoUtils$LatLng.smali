.class public Lcom/android/internal/telephony/CbGeoUtils$LatLng;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatLng"
.end annotation


# instance fields
.field public final lat:D

.field public final lng:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    iput-wide p3, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lng:D

    return-void
.end method


# virtual methods
.method public distance(Lcom/android/internal/telephony/CbGeoUtils$LatLng;)D
    .locals 10

    iget-wide v0, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    iget-wide v2, p1, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lng:D

    iget-wide v6, p1, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lng:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    iget-wide v8, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-wide v8, p1, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x41584dae00000000L    # 6371000.0

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public subtract(Lcom/android/internal/telephony/CbGeoUtils$LatLng;)Lcom/android/internal/telephony/CbGeoUtils$LatLng;
    .locals 7

    new-instance v0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    iget-wide v1, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    iget-wide v3, p1, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lng:D

    iget-wide v5, p1, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lng:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CbGeoUtils$LatLng;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

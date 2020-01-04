.class public Lcom/android/internal/telephony/CbGeoUtils$Circle;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CbGeoUtils$Geometry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field private final mCenter:Lcom/android/internal/telephony/CbGeoUtils$LatLng;

.field private final mRadiusMeter:D


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CbGeoUtils$LatLng;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CbGeoUtils$Circle;->mCenter:Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    iput-wide p2, p0, Lcom/android/internal/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    return-void
.end method


# virtual methods
.method public contains(Lcom/android/internal/telephony/CbGeoUtils$LatLng;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/CbGeoUtils$Circle;->mCenter:Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CbGeoUtils$LatLng;->distance(Lcom/android/internal/telephony/CbGeoUtils$LatLng;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCenter()Lcom/android/internal/telephony/CbGeoUtils$LatLng;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CbGeoUtils$Circle;->mCenter:Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    return-wide v0
.end method

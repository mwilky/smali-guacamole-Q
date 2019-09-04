.class public final Lcom/android/server/am/qbh$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/qbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zta"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/qbh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/qbh;

    check-cast p2, Lcom/android/server/am/qbh;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/qbh$zta;->zta(Lcom/android/server/am/qbh;Lcom/android/server/am/qbh;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/am/qbh;Lcom/android/server/am/qbh;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/am/qbh;->zta(Lcom/android/server/am/qbh;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/am/qbh;->zta(Lcom/android/server/am/qbh;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/qbh;->you(Lcom/android/server/am/qbh;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/am/qbh;->you(Lcom/android/server/am/qbh;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

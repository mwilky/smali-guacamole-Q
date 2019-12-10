.class Lcom/color/app/ColorAppExitInfo$1;
.super Ljava/lang/Object;
.source "ColorAppExitInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/app/ColorAppExitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/color/app/ColorAppExitInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/color/app/ColorAppExitInfo;
    .locals 1

    new-instance v0, Lcom/color/app/ColorAppExitInfo;

    invoke-direct {v0, p1}, Lcom/color/app/ColorAppExitInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/color/app/ColorAppExitInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/color/app/ColorAppExitInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/color/app/ColorAppExitInfo;
    .locals 1

    new-array v0, p1, [Lcom/color/app/ColorAppExitInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/color/app/ColorAppExitInfo$1;->newArray(I)[Lcom/color/app/ColorAppExitInfo;

    move-result-object p1

    return-object p1
.end method

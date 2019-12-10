.class public Lcom/android/internal/app/ResolverInjector;
.super Ljava/lang/Object;
.source "ResolverInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/app/ResolverInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Lcom/android/internal/app/SimpleIconFactory;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/app/SimpleIconFactory;->createUserBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/app/SimpleIconFactory;->createUserBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

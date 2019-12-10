.class public Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;
.super Ljava/lang/Object;
.source "OpWallpaperHelperInjector.java"


# static fields
.field private static sOpWallpaperHelper:Lcom/oneplus/wallpaper/IOpWallpaperHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    sget-object v0, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->sOpWallpaperHelper:Lcom/oneplus/wallpaper/IOpWallpaperHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_WALLPAPER_HELPER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/wallpaper/IOpWallpaperHelper;

    sput-object v0, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->sOpWallpaperHelper:Lcom/oneplus/wallpaper/IOpWallpaperHelper;

    :cond_0
    return-void
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->sOpWallpaperHelper:Lcom/oneplus/wallpaper/IOpWallpaperHelper;

    invoke-interface {v0, p0}, Lcom/oneplus/wallpaper/IOpWallpaperHelper;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static setupDefaultKeyguardWallpaper(Landroid/content/Context;I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->sOpWallpaperHelper:Lcom/oneplus/wallpaper/IOpWallpaperHelper;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/wallpaper/IOpWallpaperHelper;->setupDefaultKeyguardWallpaper(Landroid/content/Context;I)V

    return-void
.end method

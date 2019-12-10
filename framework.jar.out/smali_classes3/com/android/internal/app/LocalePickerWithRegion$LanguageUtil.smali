.class Lcom/android/internal/app/LocalePickerWithRegion$LanguageUtil;
.super Ljava/lang/Object;
.source "LocalePickerWithRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePickerWithRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LanguageUtil"
.end annotation


# static fields
.field private static final APPNAME:Ljava/lang/String; = "com.oneplus"

.field public static final ERROR_LABEL:Ljava/lang/String; = ""

.field public static final LAN_TITLE_SUFFIX_RES:I = 0x50d0048

.field public static final TAG:Ljava/lang/String; = "LanguageUtil"

.field private static mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getApplicationResource(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Locale;)Landroid/content/res/Resources;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method public static getTitleSuffix(Landroid/app/Activity;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/app/LocalePickerWithRegion$LanguageUtil;->mContext:Ljava/lang/ref/WeakReference;

    const-string v0, ""

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oneplus"

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/LocalePickerWithRegion$LanguageUtil;->getApplicationResource(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Locale;)Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    sget-object v3, Lcom/android/internal/app/LocalePickerWithRegion$LanguageUtil;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x50d0048

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

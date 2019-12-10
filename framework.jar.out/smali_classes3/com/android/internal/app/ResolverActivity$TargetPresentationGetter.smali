.class abstract Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetPresentationGetter"
.end annotation


# instance fields
.field private final mAi:Landroid/content/pm/ApplicationInfo;

.field private mCtx:Landroid/content/Context;

.field private final mHasSubstitutePermission:Z

.field private final mIconDpi:I

.field protected mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mIconDpi:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.permission.SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mHasSubstitutePermission:Z

    return-void
.end method


# virtual methods
.method abstract getAppSubLabelInternal()Ljava/lang/String;
.end method

.method public getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    :try_start_0
    const-string v1, "com.oppo.market"

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    const v2, 0x50600b8

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/SimpleIconFactory;->obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/app/ResolverInjector;->getAppIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Lcom/android/internal/app/SimpleIconFactory;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/app/SimpleIconFactory;->recycle()V

    return-object v2
.end method

.method abstract getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getSubLabel()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    const-string v3, "ResolverActivity"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource. pkg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v2, "Can\'t find resource"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method protected loadLabelFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SelectableTargetInfo"
.end annotation


# instance fields
.field private final mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mBadgeContentDescription:Ljava/lang/CharSequence;

.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisplayLabel:Ljava/lang/String;

.field private final mFillInFlags:I

.field private final mFillInIntent:Landroid/content/Intent;

.field private mIsSuspended:Z

.field private final mModifiedScore:F

.field private final mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;Landroid/content/Intent;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mIsSuspended:Z

    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mFillInFlags:I

    iget v0, p2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mModifiedScore:F

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mModifiedScore:F

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V
    .locals 7

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mIsSuspended:Z

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mModifiedScore:F

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mIsSuspended:Z

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mFillInFlags:I

    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-void
.end method

.method private getBaseIntentToSend()Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ChooserActivity"

    const-string v2, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mFillInFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$1700(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    :goto_0
    return-object v0
.end method

.method private getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "android.intent.extra.shortcut.ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    const-string v6, "launcherapps"

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    new-instance v6, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v6}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v6, v7}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5, v8, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "ChooserActivity"

    const-string v6, "Could not find activity associated with ChooserTarget"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v4, :cond_3

    return-object v3

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ChooserActivity;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverActivity$ActivityInfoPresentationGetter;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ActivityInfoPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/SimpleIconFactory;->obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/app/SimpleIconFactory;->createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/app/SimpleIconFactory;->recycle()V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v6
.end method

.method private sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedScore()F
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_0
    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mIsSuspended:Z

    return v0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startAsCallerImpl(Landroid/content/Intent;Landroid/os/Bundle;ZI)Z

    move-result v2

    return v2
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

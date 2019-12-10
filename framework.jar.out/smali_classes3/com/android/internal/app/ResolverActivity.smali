.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActivityInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverActivity$TargetPresentationGetter;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEBUG:Z = false

.field private static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field private static final EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final OPEN_LINKS_COMPONENT_KEY:Ljava/lang/String; = "app_link_state"

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field protected mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mDefaultTitleResId:I

.field mEnableChooserDelegate:Z

.field private mFooterSpacer:Landroid/widget/Space;

.field private mIconDpi:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelected:I

.field protected mLaunchedFromUid:I

.field private mLayoutId:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected mPm:Landroid/content/pm/PackageManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPostListReadyRunnable:Ljava/lang/Runnable;

.field private mProfileSwitchMessageId:I

.field protected mProfileView:Landroid/view/View;

.field private mReferrerPackage:Ljava/lang/String;

.field private mRegistered:Z

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolvingHome:Z

.field private mRetainInOnStop:Z

.field private mSafeForwardingMode:Z

.field private mSupportsAlwaysUseOption:Z

.field private mSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field protected mSystemWindowInsets:Landroid/graphics/Insets;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseLayoutForBrowsables:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mEnableChooserDelegate:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor()Lcom/android/internal/content/PackageMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object v0
.end method

.method public static getLabelRes(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private hasManagedProfile()Z
    .locals 7

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    nop

    return v1

    :catch_0
    move-exception v2

    return v1
.end method

.method private initSuspendedColorMatrix()V
    .locals 6

    const/16 v0, 0x7f

    const/high16 v1, 0x3f000000    # 0.5f

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/16 v4, 0xc

    aput v1, v3, v4

    int-to-float v4, v0

    const/4 v5, 0x4

    aput v4, v3, v5

    int-to-float v4, v0

    const/16 v5, 0x9

    aput v4, v3, v5

    int-to-float v4, v0

    const/16 v5, 0xe

    aput v4, v3, v5

    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v4, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-void
.end method

.method private isHttpSchemeAndViewAction(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 1

    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private resetAlwaysOrOnceButtonBar()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    invoke-direct {p0, v2, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private resetButtonBar()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x10201ec

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v2, :cond_1

    iget v1, v2, Landroid/graphics/Insets;->bottom:I

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10501f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v2, 0x10201ed

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const v2, 0x10201eb

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    goto :goto_0

    :cond_2
    const-string v1, "ResolverActivity"

    const-string v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method private safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1, p0, v1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "??"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch as uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", while running in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const-string v2, "ResolverActivity"

    if-nez v1, :cond_0

    const-string v3, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v3, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    const-string v3, "Attempted to set selection to resolve info for another user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_2

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    const v4, 0x10402bb

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    const v4, 0x10402bc

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    :cond_2
    :goto_1
    return-void
.end method

.method private showSettingsForSelected(Landroid/content/pm/ResolveInfo;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "app_link_state"

    const-string v4, ":settings:fragment_args_key"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "package"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "com.android.settings.APP_OPEN_BY_DEFAULT_SETTINGS"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, ":settings:show_fragment_args"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private useLayoutWithDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected bindProfileView()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v2, 0x10203ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x10900df

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    :goto_1
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v1

    if-eqz v0, :cond_2

    if-ne v1, v7, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v8, v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iput-boolean v8, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return v7

    :cond_2
    const v2, 0x10203e5

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$200(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    const-string v3, "ResolverActivity"

    const-string v4, "No matches found, finishing..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v8}, Landroid/widget/AbsListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    :goto_2
    return v8
.end method

.method public createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    new-instance v9, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createListController()Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    return-object v9
.end method

.method protected createListController()Lcom/android/internal/app/ResolverListController;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v6, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V

    return-object v6
.end method

.method protected createPackageMonitor()Lcom/android/internal/content/PackageMonitor;
    .locals 1

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-object v0
.end method

.method dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method getDisplayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    const v0, 0x10900de

    return v0
.end method

.method protected getReferrerPackageName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v4, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isHttpSchemeAndViewAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    if-nez v5, :cond_3

    const v5, 0x104077c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    if-eqz v5, :cond_4

    const v5, 0x104077a

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->areAllTargetsBrowsers()Z

    move-result v5

    if-eqz v5, :cond_5

    const v2, 0x104077b

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const v5, 0x1040779

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_6
    if-eqz v1, :cond_7

    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverActivity$ActivityInfoPresentationGetter;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActivityInfoPresentationGetter;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/ResolverActivity$ActivityInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V

    return-object v0
.end method

.method makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v0
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0

    return-void
.end method

.method protected onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    const v2, 0x10900de

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    :goto_0
    nop

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    const v6, 0x10201eb

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v5, :cond_1

    if-ne v0, v6, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->showSettingsForSelected(Landroid/content/pm/ResolveInfo;)V

    goto :goto_2

    :cond_1
    if-ne v0, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const v0, 0x10303f0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    :goto_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v0, :cond_9

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->isHttpSchemeAndViewAction(Landroid/content/Intent;)Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p5, p6}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const v1, 0x102021d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_4

    new-instance v3, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_3
    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setSystemUiVisibility(I)V

    new-instance v2, Lcom/android/internal/app/-$$Lambda$yRChr-JGmMwuDQFg-BsC_mE_wmc;

    invoke-direct {v2, p0}, Lcom/android/internal/app/-$$Lambda$yRChr-JGmMwuDQFg-BsC_mE_wmc;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    :cond_4
    const v2, 0x10203ca

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v2, :cond_5

    new-instance v3, Lcom/android/internal/app/-$$Lambda$fPZctSH683BQhFNSBKdl6Wz99qg;

    invoke-direct {v3, p0}, Lcom/android/internal/app/-$$Lambda$fPZctSH683BQhFNSBKdl6Wz99qg;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initSuspendedColorMatrix()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x1c3

    goto :goto_2

    :cond_7
    const/16 v3, 0x1c5

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    const-string v5, ""

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    :cond_2
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mUseLayoutForBrowsables:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900dd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected onProfileClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    return-void
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 23

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v3, v0

    if-eqz v3, :cond_20

    iget-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v2

    goto/16 :goto_14

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-eqz v0, :cond_20

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    move-object v7, v0

    :goto_1
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget v0, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v10, 0xfff0000

    and-int/2addr v10, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    const-string v12, "ResolverActivity"

    const/high16 v13, 0x600000

    if-ne v10, v13, :cond_5

    invoke-virtual {v7, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    :try_start_0
    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    :cond_5
    :goto_3
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_d

    if-ne v10, v13, :cond_6

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    const-string v14, "file"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    const-string v14, "content"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    :cond_6
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v13}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    :goto_4
    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    invoke-virtual {v15, v14}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v6, v0, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_5

    :cond_7
    goto :goto_4

    :cond_8
    :goto_5
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v14

    if-ltz v14, :cond_a

    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v14

    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    if-ltz v14, :cond_9

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v6, v15, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    goto :goto_6

    :cond_b
    :goto_8
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_9
    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PatternMatcher;

    invoke-virtual {v13, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_a

    :cond_c
    goto :goto_9

    :cond_d
    :goto_a
    if-eqz v6, :cond_1f

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$100(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    move v5, v0

    if-nez v5, :cond_f

    new-array v0, v4, [Landroid/content/ComponentName;

    move-object v13, v0

    goto :goto_c

    :cond_f
    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object v13, v0

    :goto_c
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v4, :cond_11

    iget-object v15, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v15, v15, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move-object/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    new-instance v7, Landroid/content/ComponentName;

    move/from16 v19, v10

    iget-object v10, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v12

    iget-object v12, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v10, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v13, v14

    iget v7, v15, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v0, :cond_10

    iget v0, v15, Landroid/content/pm/ResolveInfo;->match:I

    :cond_10
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v18

    move/from16 v10, v19

    move-object/from16 v12, v20

    goto :goto_d

    :cond_11
    move-object/from16 v18, v7

    move/from16 v19, v10

    move-object/from16 v20, v12

    if-eqz v5, :cond_12

    iget-object v7, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$100(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v13, v4

    iget-object v7, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$100(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v0, :cond_12

    move v0, v7

    goto :goto_e

    :cond_12
    move v7, v0

    :goto_e
    if-eqz p2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v10, v6, v7, v13, v12}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    iget-boolean v12, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v12, :cond_14

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_13

    iget-object v14, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_13
    move-object/from16 v16, v2

    move/from16 v21, v4

    move/from16 v22, v5

    goto :goto_13

    :cond_14
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    goto :goto_f

    :cond_15
    const/4 v15, 0x0

    :goto_f
    if-eqz v15, :cond_17

    move-object/from16 v16, v2

    const-string v2, "http"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "https"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    const/4 v2, 0x1

    goto :goto_10

    :cond_17
    move-object/from16 v16, v2

    :cond_18
    const/4 v2, 0x0

    :goto_10
    if-eqz v8, :cond_19

    move/from16 v21, v4

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_11

    :cond_19
    move/from16 v21, v4

    :cond_1a
    const/4 v4, 0x0

    :goto_11
    if-eqz v9, :cond_1b

    move/from16 v22, v5

    const-string v5, "android.intent.category.BROWSABLE"

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_12

    :cond_1b
    move/from16 v22, v5

    :cond_1c
    const/4 v5, 0x0

    :goto_12
    if-eqz v2, :cond_1d

    if-eqz v4, :cond_1d

    if-eqz v5, :cond_1d

    move/from16 v20, v2

    const/4 v2, 0x2

    invoke-virtual {v10, v14, v2, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    goto :goto_13

    :cond_1d
    move/from16 v20, v2

    :goto_13
    goto :goto_14

    :cond_1e
    move-object/from16 v16, v2

    move/from16 v21, v4

    move/from16 v22, v5

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_14

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v20

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_1f
    move-object/from16 v16, v2

    move-object/from16 v18, v7

    move/from16 v19, v10

    goto :goto_14

    :cond_20
    move-object/from16 v16, v2

    :goto_14
    nop

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v2, 0x0

    return v2

    :cond_21
    const/4 v2, 0x1

    return v2
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2

    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v0
.end method

.method public sendVoiceChoicesIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v2, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v1, v2}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHeader()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    const v1, 0x1020016

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$200(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconTask;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method

.method protected setRetainInOnStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->isSuspended()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startAsCallerImpl(Landroid/content/Intent;Landroid/os/Bundle;ZI)Z
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->requestStartActivityPermissionToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.app.extra.PERMISSION_TOKEN"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.app.extra.OPTIONS"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "android.app.extra.EXTRA_IGNORE_TARGET_SECURITY"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x3000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public startSelected(IZZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1c4

    goto :goto_1

    :cond_5
    const/16 v2, 0x1c6

    :goto_1
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_6
    return-void
.end method

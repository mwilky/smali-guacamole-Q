.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;,
        Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$RowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;,
        Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserListController;,
        Lcom/android/internal/app/ChooserActivity$AzInfoComparator;,
        Lcom/android/internal/app/ChooserActivity$FileInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserHandler;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewType;
    }
.end annotation


# static fields
.field public static final APP_PREDICTION_INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field private static final APP_PREDICTION_SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final APP_PREDICTION_SHARE_UI_SURFACE:Ljava/lang/String; = "share"

.field private static final CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final CONTENT_PREVIEW_FILE:I = 0x2

.field private static final CONTENT_PREVIEW_IMAGE:I = 0x1

.field private static final CONTENT_PREVIEW_TEXT:I = 0x3

.field private static final DBG:Z

.field private static final DEBUG:Z

.field private static final DEFAULT_SALT_EXPIRATION_DAYS:I = 0x7

.field private static final DIRECT_SHARE_EXPANSION_RATE:F = 0.78f

.field public static final EXTRA_PRIVATE_RETAIN_IN_ON_STOP:Ljava/lang/String; = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

.field public static final LAUNCH_LOCATON_DIRECT_SHARE:Ljava/lang/String; = "direct_share"

.field public static final LIST_VIEW_UPDATE_INTERVAL_IN_MILLIS:I = 0xfa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_EXTRA_CHOOSER_TARGETS:I = 0x2

.field private static final MAX_EXTRA_INITIAL_INTENTS:I = 0x2

.field private static final MAX_LOG_RANK_POSITION:I = 0xc

.field private static final MAX_RANKED_TARGETS:I = 0x4

.field private static final NO_DIRECT_SHARE_ANIM_IN_MILLIS:I = 0xc8

.field private static final PREF_NUM_SHEET_EXPANSIONS:Ljava/lang/String; = "pref_num_sheet_expansions"

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final SHORTCUT_TARGET_SCORE_BOOST:F = 90.0f

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field private static final USE_CHOOSER_TARGET_SERVICE_FOR_DIRECT_TARGETS:Z = true

.field private static final USE_PREDICTION_MANAGER_FOR_DIRECT_TARGETS:Z = false

.field private static final USE_PREDICTION_MANAGER_FOR_SHARE_ACTIVITIES:Z = false

.field private static final USE_SHORTCUT_MANAGER_FOR_DIRECT_TARGETS:Z = true


# instance fields
.field private mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

.field private mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field private final mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private mChooserRowServiceSpacing:I

.field private mChooserShownTime:J

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mCurrAvailableWidth:I

.field private mDirectShareAppTargetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredComponentNames:[Landroid/content/ComponentName;

.field protected mIsSuccessfullySelected:Z

.field private mListViewDataChanged:Z

.field private mMaxHashSaltDays:I

.field protected mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

.field private mQueriedSharingShortcutsTimeMs:J

.field private mQueriedTargetServicesTimeMs:J

.field private mReferrerFillInIntent:Landroid/content/Intent;

.field private mRefinementIntentSender:Landroid/content/IntentSender;

.field private mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private mReplacementExtras:Landroid/os/Bundle;

.field private final mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesRequested:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/app/ChooserActivity;->DBG:Z

    sget-boolean v0, Lcom/android/internal/app/ChooserActivity;->DBG:Z

    sput-boolean v0, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    const-string/jumbo v0, "systemui"

    const-string v1, "hash_salt_max_days"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServicesRequested:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mListViewDataChanged:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSortedList:Ljava/util/List;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$1;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->incrementNumSheetExpansions()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/ChooserActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServicesRequested:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mListViewDataChanged:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/app/ChooserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity;->mListViewDataChanged:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateAlphabeticalList()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSortedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/app/ChooserActivity;)Landroid/app/prediction/AppPredictor;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ChooserActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;Landroid/content/ContentResolver;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/app/ChooserActivity;ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ChooserActivity;->displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ChooserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logDirectShareTargetReceived(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method private adjustPreviewWidth(ILandroid/view/View;)V
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    move-object p2, v1

    const v1, 0x102022a

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    const v1, 0x102022d

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    const v1, 0x1020220

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    return-void
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    move-object v0, p2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private convertToChooserTarget(Landroid/content/pm/ShortcutManager$ShareShortcutInfo;F)Landroid/service/chooser/ChooserTarget;
    .locals 9

    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v4, 0x0

    move-object v2, v8

    move v5, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    return-object v8
.end method

.method private displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3

    if-eqz p4, :cond_0

    return-object p4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected content preview type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3, p5}, Lcom/android/internal/app/ChooserActivity;->displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3, p5}, Lcom/android/internal/app/ChooserActivity;->displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3, p5}, Lcom/android/internal/app/ChooserActivity;->displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    nop

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    :cond_4
    return-object v0
.end method

.method private displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const v3, 0x1090052

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v6, 0x1020270

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "android.intent.extra.STREAM"

    if-eqz v8, :cond_0

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v2, "ChooserActivity"

    const-string v7, "Appears to be no uris available in EXTRA_STREAM, removing preview area"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object v11

    add-int/lit8 v12, v9, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1150012

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v7, v11, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    aput-object v7, v15, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v10

    invoke-virtual {v13, v14, v12, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v10, 0x1020222

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x1020221

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    const v14, 0x102021f

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x108038a

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object v3
.end method

.method private displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 11

    const/4 v0, 0x0

    const v1, 0x1090053

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x1020223

    const-string v6, "android.intent.extra.STREAM"

    if-eqz v4, :cond_0

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4, v5, v3, v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    const-string v0, "ChooserActivity"

    const-string v3, "Attempted to display image preview area with zero available images detected in EXTRA_STREAM list"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object v1

    :cond_3
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-static {v8, v5, v9, v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const v8, 0x1020224

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v5, v8, v3, v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const v9, 0x1020225

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v5, v9, v3, v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const v3, 0x1020226

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-static {v0, v3, v5, v8}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    :cond_5
    :goto_1
    return-object v1
.end method

.method private displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 10

    const/4 v0, 0x0

    const v1, 0x1090054

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x102022f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/-$$Lambda$ChooserActivity$59FvMzyIg7yJzeX3NNdkiEmiSgI;

    invoke-direct {v3, p0}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$59FvMzyIg7yJzeX3NNdkiEmiSgI;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    const v4, 0x102022a

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v4, 0x1020228

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v0, 0x102022d

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const v5, 0x102022c

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v6, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    :cond_2
    const v8, 0x102022b

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-nez v7, :cond_3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3, v8, v7, v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    :goto_1
    return-object v1
.end method

.method private extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity;->queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, "_display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "title"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "flags"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    if-eq v4, v2, :cond_0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    :cond_0
    if-eq v5, v2, :cond_1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    :cond_1
    :goto_0
    if-eq v6, v2, :cond_3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    move v1, v8

    goto :goto_3

    :catchall_0
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v5

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    goto :goto_4

    :catch_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v2, Lcom/android/internal/app/ChooserActivity$FileInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/ChooserActivity$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v2

    return v2

    :cond_0
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    return v5

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    :goto_1
    return v3

    :cond_5
    return v3
.end method

.method private findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method private getAppPredictor()Landroid/app/prediction/AppPredictor;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "intent_filter"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v2, p0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "share"

    invoke-virtual {v2, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v2

    const-class v3, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {v3, v2}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0
.end method

.method private getAppPredictorForDirectShareIfEnabled()Landroid/app/prediction/AppPredictor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getAppPredictorForShareActivitesIfEnabled()Landroid/app/prediction/AppPredictor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getDisplayResolveInfos(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x14

    if-lt v1, v5, :cond_1

    sget-boolean v5, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ChooserActivity"

    const-string/jumbo v6, "queryTargets hit query target limit 20"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private getNumSheetExpansions()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_num_sheet_expansions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRankedPosition(Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;)I
    .locals 4

    nop

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getTargetIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get target intent filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private handleLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mAdapterView:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    sub-int v0, p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    float-to-int v2, v1

    sub-int/2addr v0, v2

    float-to-int v2, v1

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->consumeLayoutRequest()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->calculateChooserTargetWidth(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    if-eq v0, v2, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;

    invoke-direct {v3, p0, p5, p3}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;-><init>(Lcom/android/internal/app/ChooserActivity;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private handleScroll(Landroid/view/View;IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->handleScroll(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private incrementNumSheetExpansions()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getNumSheetExpansions()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "pref_num_sheet_expansions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isPackageEnabled(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method private isSendAction(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$59FvMzyIg7yJzeX3NNdkiEmiSgI(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onCopyButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$mSpb8JdVEdN3REmKTSrORHIDnIo(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/app/ChooserActivity;->handleLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic lambda$n2FimsQN3_RG5vs7T6aVc1Pt9v0(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ChooserActivity;->handleScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method private loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object v0

    const v1, 0x1020222

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->hasThumbnail:Z

    const v3, 0x1020221

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v2, p0, p2, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x102021f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x108025a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private logContentPreviewWarning(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") thumbnail/name for preview. If desired, consider using Intent#createChooser to launch the ChooserActivity, and set your Intent\'s clipData and flags in accordance with that method\'s documentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logDirectShareTargetReceived(I)V
    .locals 5

    const/16 v0, 0x6b6

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedTargetServicesTimeMs:J

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    new-instance v4, Landroid/metrics/LogMaker;

    invoke-direct {v4, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private onCopyButtonClicked(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ChooserActivity"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    if-eqz v3, :cond_1

    invoke-static {v7, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    :goto_0
    goto :goto_2

    :cond_2
    const-string v4, "No data available to copy to clipboard"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    nop

    :goto_2
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    invoke-virtual {v3, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10401c1

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    :goto_3
    return-void

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not supported for copying to clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private queryDirectShareTargets(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;Z)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChooserActivity"

    const-string/jumbo v1, "queryDirectShareTargets but is destroyed, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getDisplayResolveInfos(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/IntentFilter;Ljava/util/List;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendClickToAppPredictor(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v3, :cond_2

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/prediction/AppTarget;

    :cond_2
    if-eqz v2, :cond_3

    new-instance v3, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_3
    return-void
.end method

.method private sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultList and appTargets must have the same size. resultList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " appTargets.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz p3, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3d4ccccd    # 0.05f

    int-to-float v7, v3

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/app/ChooserActivity;->convertToChooserTarget(Landroid/content/pm/ShortcutManager$ShareShortcutInfo;F)Landroid/service/chooser/ChooserTarget;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v7, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/prediction/AppTarget;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x4

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v6}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->sendShortcutManagerShareTargetResultCompleted()V

    :cond_8
    return-void
.end method

.method private sendShortcutManagerShareTargetResultCompleted()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private shouldDisplayLandscape(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateAlphabeticalList()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSortedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSortedList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getDisplayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSortedList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateLayoutWidth(IILandroid/view/View;)V
    .locals 2

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z
    .locals 5

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
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

    new-instance v9, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->createListController()Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    return-object v0
.end method

.method protected createListController()Lcom/android/internal/app/ResolverListController;
    .locals 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForShareActivitesIfEnabled()Landroid/app/prediction/AppPredictor;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    :goto_0
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserListController;

    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/app/ChooserActivity;->mLaunchedFromUid:I

    move-object v7, v1

    move-object v8, p0

    move-object v9, p0

    move-object v14, v0

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/app/ChooserActivity$ChooserListController;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILcom/android/internal/app/AbstractResolverComparator;)V

    return-object v1
.end method

.method protected createPackageMonitor()Lcom/android/internal/content/PackageMonitor;
    .locals 1

    new-instance v0, Lcom/android/internal/app/ChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$3;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-object v0
.end method

.method filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    :cond_2
    move v5, v2

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " returned by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " component not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChooserActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    const v0, 0x1090051

    return v0
.end method

.method protected getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    move-object v0, p2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method protected isImageType(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isWorkProfile()Z
    .locals 2

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$handleLayoutChange$2$ChooserActivity(II)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getContentPreviewRowCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getProfileRowCount()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCount()I

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x105008e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v8, :cond_4

    move v4, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move v6, v1

    :goto_2
    move v5, v6

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    int-to-float v6, v4

    const v7, 0x3f47ae14    # 0.78f

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v7, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    :cond_7
    sub-int v7, p1, p2

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->getAlwaysShowHeight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    sub-int/2addr v7, v1

    sub-int/2addr v7, v0

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    sub-int v6, p1, p2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public synthetic lambda$onCreate$0$ChooserActivity(Ljava/util/List;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getDisplayResolveInfos(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$queryDirectShareTargets$1$ChooserActivity(Landroid/content/IntentFilter;Ljava/util/List;)V
    .locals 3

    const-string/jumbo v0, "shortcut"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/internal/util/ImageUtils;->loadThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChooserActivity"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v8, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    instance-of v1, v12, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v13, "ChooserActivity"

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target is not an intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    invoke-super {v8, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v1, v12

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_1

    invoke-direct {v8, v1}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    :cond_1
    nop

    const-string v3, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v11, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    const/4 v15, 0x1

    if-eqz v14, :cond_8

    if-nez v1, :cond_2

    move v3, v15

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    array-length v4, v14

    if-eqz v3, :cond_3

    sub-int/2addr v4, v15

    :cond_3
    new-array v4, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    :goto_1
    array-length v6, v14

    if-ge v5, v6, :cond_7

    aget-object v6, v14, v5

    instance-of v6, v6, Landroid/content/Intent;

    if-nez v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not an Intent: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v14, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    invoke-super {v8, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_4
    aget-object v6, v14, v5

    check-cast v6, Landroid/content/Intent;

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    move-object v1, v6

    invoke-direct {v8, v1}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 v7, v5, -0x1

    goto :goto_2

    :cond_6
    move v7, v5

    :goto_2
    aput-object v6, v4, v7

    invoke-direct {v8, v6}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v8, v4}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    move-object v7, v1

    goto :goto_4

    :cond_8
    move-object v7, v1

    :goto_4
    const-string v1, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v7, :cond_a

    invoke-direct {v8, v7}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v11, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_5

    :cond_9
    const-string v3, "Ignoring intent\'s EXTRA_TITLE, deprecated in P. You may wish to set a preview title by using EXTRA_TITLE property of the wrapped EXTRA_INTENT."

    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v16, v1

    :goto_5
    const/4 v1, 0x0

    if-nez v16, :cond_b

    const v1, 0x1040124

    move/from16 v17, v1

    goto :goto_6

    :cond_b
    move/from16 v17, v1

    :goto_6
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_e

    array-length v4, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v3, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_d

    aget-object v0, v1, v5

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial intent #"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not an Intent: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    invoke-super {v8, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_c
    aget-object v0, v1, v5

    check-cast v0, Landroid/content/Intent;

    invoke-direct {v8, v0}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    aput-object v0, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    move-object/from16 v19, v3

    goto :goto_8

    :cond_e
    move-object/from16 v19, v3

    :goto_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, v8, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const-string v0, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, v8, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    invoke-virtual {v8, v15}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    const-string v0, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v1, v0

    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_10

    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/content/ComponentName;

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered component #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not a ComponentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_a

    :cond_f
    aget-object v3, v0, v2

    check-cast v3, Landroid/content/ComponentName;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    :goto_a
    iput-object v1, v8, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    :cond_11
    const-string v1, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_14

    array-length v0, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Landroid/service/chooser/ChooserTarget;

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_13

    aget-object v3, v5, v2

    instance-of v3, v3, Landroid/service/chooser/ChooserTarget;

    if-nez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chooser target #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not a ChooserTarget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_c

    :cond_12
    aget-object v3, v5, v2

    check-cast v3, Landroid/service/chooser/ChooserTarget;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_13
    :goto_c
    iput-object v1, v8, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    :cond_14
    const-string v0, "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ChooserActivity;->setRetainInOnStop(Z)V

    const-string v0, "android.intent.extra.IS_SHOW_PARALLEL_APP"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/app/AppInjector;->setParallelAppSupport(Z)V

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v21, v5

    move-object/from16 v5, v19

    move/from16 v22, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move/from16 v7, v20

    invoke-super/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    iget-wide v0, v8, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v0, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0xd6

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->isWorkProfile()Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v15, v22

    goto :goto_d

    :cond_15
    nop

    :goto_d
    invoke-virtual {v3, v15}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x671

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x675

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled()Landroid/app/prediction/AppPredictor;

    move-result-object v2

    if-eqz v2, :cond_16

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v8, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    new-instance v3, Lcom/android/internal/app/-$$Lambda$ChooserActivity$DtVuD6Mjmx25X89cZXV33qf48uk;

    invoke-direct {v3, v8}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$DtVuD6Mjmx25X89cZXV33qf48uk;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    iput-object v3, v8, Lcom/android/internal/app/ChooserActivity;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, v8, Lcom/android/internal/app/ChooserActivity;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v2, v3, v4}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Lcom/android/internal/app/ChooserActivity;->mChooserRowServiceSpacing:I

    iget-object v3, v8, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v3, :cond_18

    iget-object v3, v8, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v4, Lcom/android/internal/app/-$$Lambda$ChooserActivity$mSpb8JdVEdN3REmKTSrORHIDnIo;

    invoke-direct {v4, v8}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$mSpb8JdVEdN3REmKTSrORHIDnIo;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object/from16 v3, v18

    invoke-direct {v8, v3}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v8, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v5, Lcom/android/internal/app/-$$Lambda$ChooserActivity$n2FimsQN3_RG5vs7T6aVc1Pt9v0;

    invoke-direct {v5, v8}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$n2FimsQN3_RG5vs7T6aVc1Pt9v0;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_17
    iget-object v4, v8, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v5, 0x1020206

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    move-result v5

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v8, Lcom/android/internal/app/ChooserActivity;->mAdapterView:Landroid/widget/AbsListView;

    new-instance v15, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v15, v8, v4, v6, v5}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V

    invoke-virtual {v7, v15}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v7, v8, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v15, Lcom/android/internal/app/ChooserActivity$2;

    invoke-direct {v15, v8}, Lcom/android/internal/app/ChooserActivity$2;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v7, v15}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V

    goto :goto_e

    :cond_18
    move-object/from16 v3, v18

    :goto_e
    sget-boolean v4, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System Time Cost is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->access$1200(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$1300(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    :cond_2
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 5

    instance-of v0, p1, Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Z)V

    :cond_1
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_2
    return-void
.end method

.method onRefinementCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    return-void
.end method

.method onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    :cond_0
    const-string v0, "ChooserActivity"

    if-nez p1, :cond_1

    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-super {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    return-void
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    :cond_2
    new-instance v1, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const-string v2, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception v1

    const-string v2, "ChooserActivity"

    const-string v3, "Refinement IntentSender failed to send"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    return v0
.end method

.method public queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/app/ChooserActivity;->mQueriedTargetServicesTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ShortcutManager;

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v7

    move v8, v0

    :goto_0
    if-ge v6, v7, :cond_a

    invoke-virtual {v2, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v0

    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-nez v0, :cond_0

    move-object/from16 v16, v3

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/content/pm/ShortcutManager;->hasShareTargets(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v16, v3

    goto/16 :goto_3

    :cond_1
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_2

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "android.service.chooser.chooser_target_service"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v0, v12}, Lcom/android/internal/app/ChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v12, v0

    const-string v13, "ChooserActivity"

    if-eqz v12, :cond_7

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v14, v15, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v1, Lcom/android/internal/app/ChooserActivity;->mServicesRequested:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v16, v3

    goto/16 :goto_3

    :cond_3
    iget-object v15, v1, Lcom/android/internal/app/ChooserActivity;->mServicesRequested:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroid/content/Intent;

    const-string v0, "android.service.chooser.ChooserTargetService"

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    sget-boolean v0, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryTargets found target with service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v4, v14, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "ChooserTargetService "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not require permission "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - this service will not be queried for ChooserTargets. add android:permission=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" to the <service> tag for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in the manifest."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v3

    goto :goto_3

    :cond_5
    move-object/from16 v16, v0

    nop

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    nop

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    move-object/from16 v16, v3

    const/4 v3, 0x5

    invoke-virtual {v1, v15, v0, v3, v2}, Lcom/android/internal/app/ChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding service connection for target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not look up service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; component name not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object/from16 v16, v3

    :cond_8
    :goto_2
    const/4 v0, 0x5

    if-lt v8, v0, :cond_9

    sget-boolean v0, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "queryTargets hit query target limit 5"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_a
    :goto_4
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->access$1500(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V

    return-void
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "targetDetailsFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startSelected(IZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move/from16 v3, p3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v4, v6

    invoke-super/range {p0 .. p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-eqz v6, :cond_9

    const/4 v7, 0x0

    move/from16 v8, p1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    const-string v12, "ChooserActivity"

    if-eqz v6, :cond_4

    const/4 v13, 0x1

    if-eq v6, v13, :cond_2

    const/4 v13, 0x2

    if-eq v6, v13, :cond_4

    const/4 v13, 0x3

    if-eq v6, v13, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    const/16 v7, 0xd9

    goto :goto_0

    :cond_2
    const/16 v7, 0xd8

    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->access$1400(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    invoke-interface {v6}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/util/HashedStringCache;->getInstance()Landroid/util/HashedStringCache;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    invoke-virtual {v13, v0, v12, v14, v15}, Landroid/util/HashedStringCache;->hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;

    move-result-object v11

    :cond_3
    move-object v13, v2

    check-cast v13, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;

    invoke-direct {v0, v13}, Lcom/android/internal/app/ChooserActivity;->getRankedPosition(Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;)I

    move-result v9

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v13, :cond_5

    array-length v10, v13

    goto :goto_0

    :cond_4
    const/16 v7, 0xd7

    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v6

    sub-int/2addr v8, v6

    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v10

    nop

    :cond_5
    :goto_0
    if-eqz v7, :cond_7

    new-instance v6, Landroid/metrics/LogMaker;

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v6

    if-eqz v11, :cond_6

    const/16 v13, 0x6a8

    iget-object v14, v11, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v13, 0x6a9

    iget v14, v11, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v13, 0x43f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_6
    const/16 v13, 0x43e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_7
    iget-boolean v6, v0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    if-eqz v6, :cond_9

    sget-boolean v6, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "User Selection Time Cost is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "position of selected app/service/caller is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    long-to-int v6, v4

    const/4 v12, 0x0

    const-string/jumbo v13, "user_selection_cost_for_smart_sharing"

    invoke-static {v12, v13, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v6, "app_position_for_smart_sharing"

    invoke-static {v12, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method unbindRemainingServices()V
    .locals 6

    sget-boolean v0, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    const-string v1, "ChooserActivity"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindRemainingServices, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " left"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    sget-boolean v4, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unbinding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServicesRequested:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method updateModelAndChooserCounts(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->sendClickToAppPredictor(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ChooserActivity"

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateModel(Landroid/content/ComponentName;)V

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getUserId()I

    move-result v5

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    sget-boolean v3, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResolveInfo Package is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action to be updated is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/internal/app/ChooserActivity;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Can not log Chooser Counts of null ResovleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    return-void
.end method

.class public Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
.super Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListAdapter"
.end annotation


# static fields
.field private static final MAX_CHOOSER_TARGETS_PER_APP:I = 0x2

.field private static final MAX_SERVICE_TARGETS:I = 0x8

.field private static final MAX_SHORTCUT_TARGETS_PER_APP:I = 0x8

.field private static final MAX_SUGGESTED_APP_TARGETS:I = 0x4

.field public static final TARGET_BAD:I = -0x1

.field public static final TARGET_CALLER:I = 0x0

.field public static final TARGET_SERVICE:I = 0x1

.field public static final TARGET_STANDARD:I = 0x2

.field public static final TARGET_STANDARD_AZ:I = 0x3


# instance fields
.field private final mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxShortcutTargetsPerApp:I

.field private mNumShortcutResults:I

.field private mPlaceHolderTargetInfo:Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

.field private final mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowRow:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V
    .locals 21
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
            ">;IZ",
            "Lcom/android/internal/app/ResolverListController;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    iput-object v11, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    const/4 v8, 0x0

    iput v8, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mNumShortcutResults:I

    new-instance v0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    iget-object v1, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    iput-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    iput-boolean v8, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mShowRow:Z

    new-instance v0, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createPlaceHolders()V

    if-eqz v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    array-length v0, v12

    if-ge v13, v0, :cond_8

    aget-object v14, v12, v13

    if-nez v14, :cond_0

    move-object/from16 v17, v9

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_1

    :try_start_0
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v9, v0, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v1, v0

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    const/high16 v0, 0x10000

    invoke-virtual {v9, v14, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v2, v1

    move-object v7, v0

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v7, v1

    move-object v0, v2

    :goto_3
    const-string v6, "ChooserActivity"

    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v9

    goto/16 :goto_4

    :cond_4
    nop

    const-string/jumbo v1, "user"

    invoke-virtual {v11, v1}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/UserManager;

    instance-of v1, v14, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_5

    move-object v1, v14

    check-cast v1, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v7, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v7, Landroid/content/pm/ResolveInfo;->icon:I

    iget v2, v7, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v7, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_5
    invoke-static {v7, v5}, Lcom/android/internal/app/AppInjector;->managedIcon(Landroid/content/pm/ResolveInfo;Landroid/os/UserManager;)V

    invoke-virtual {v11, v7}, Lcom/android/internal/app/ChooserActivity;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;

    move-result-object v16

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChooserListAdapter: before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v18

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v8, v3

    move-object v3, v14

    move-object/from16 v19, v0

    move-object v0, v4

    move-object v4, v7

    move-object/from16 v20, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v9

    move-object v9, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserListAdapter: after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v17

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v9

    :cond_9
    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getNumShortcutResults()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->refreshListView()V

    return-void
.end method

.method private createPlaceHolders()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mNumShortcutResults:I

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChooserActivity"

    const-string v1, "createPlaceHolders: mServiceTargets.clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getBaseScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Z)F
    .locals 2

    if-nez p1, :cond_0

    const/high16 v0, 0x44610000    # 900.0f

    return v0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$2700(Lcom/android/internal/app/ChooserActivity;)Landroid/app/prediction/AppPredictor;

    move-result-object v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v1

    if-eqz p2, :cond_2

    mul-float/2addr v0, v1

    return v0

    :cond_2
    return v1
.end method

.method private getMaxRankedTargets()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$300(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$300(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$2500(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getNumShortcutResults()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mNumShortcutResults:I

    return v0
.end method

.method private insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    invoke-interface {p1, v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->isSimilar(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v3

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-string v7, "ChooserActivity"

    if-ge v4, v6, :cond_7

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_3
    invoke-interface {v5}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_6

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertServiceTarget: before "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertServiceTarget: after "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertServiceTarget: before currentSize < MAX_SERVICE_TARGETS "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-ge v0, v5, :cond_a

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertServiceTarget: after currentSize < MAX_SERVICE_TARGETS "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method static synthetic lambda$completeServiceTargetLoading$0(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return v0
.end method

.method private refreshListView()V
    .locals 2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    const-string v1, "ChooserActivity"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "refreshListView to notifyDataSetChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$2000(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "real refreshListView to notifyDataSetChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->access$2002(Lcom/android/internal/app/ChooserActivity;Z)Z

    return-void
.end method


# virtual methods
.method public addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v0

    const-string v1, "ChooserActivity"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addServiceResults "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targets"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getBaseScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Z)F

    move-result v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p3, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    nop

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_6

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v8

    mul-float/2addr v8, v0

    if-lez v5, :cond_3

    cmpl-float v9, v8, v3

    if-ltz v9, :cond_3

    const v9, 0x3f733333    # 0.95f

    mul-float v8, v3, v9

    :cond_3
    new-instance v9, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;

    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v9, v10, p1, v7, v8}, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V

    invoke-direct {p0, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz p3, :cond_4

    iget v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mNumShortcutResults:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mNumShortcutResults:I

    :cond_4
    or-int/2addr v4, v9

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " score="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " base="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " lastScore="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " baseScore="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldNotify notifyDataSetChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "shouldNotify notifyDataSetChanged: notifyDataSetChanged"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public completeServiceTargetLoading()V
    .locals 4

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    const-string v1, "ChooserActivity"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeServiceTargetLoading: before remove "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    sget-object v2, Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;->INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;

    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeServiceTargetLoading: after remove "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v2, v3}, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeServiceTargetLoading: after add "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "completeServiceTargetLoading: notifyDataSetChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method getAlphaTargetCount()I
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getMaxRankedTargets()I

    move-result v1

    if-le v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCallerTargetCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getRankedTargetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPositionTargetType(I)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    sub-int v3, p1, v0

    if-ge v3, v2, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    sub-int v4, p1, v0

    if-ge v4, v3, :cond_2

    const/4 v4, 0x2

    return v4

    :cond_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getAlphaTargetCount()I

    move-result v4

    sub-int v5, p1, v0

    if-ge v5, v4, :cond_3

    const/4 v5, 0x3

    return v5

    :cond_3
    const/4 v5, -0x1

    return v5
.end method

.method getRankedTargetCount()I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getMaxRankedTargets()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getSelectableServiceTargetCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    instance-of v3, v2, Lcom/android/internal/app/ChooserActivity$SelectableTargetInfo;

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public getServiceTargetCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->access$2400(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 3

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getMaxRankedTargets()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getMaxRankedTargets()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public handlePackagesChanged()V
    .locals 2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v0

    const-string v1, "ChooserActivity"

    if-eqz v0, :cond_0

    const-string v0, "clearing queryTargets on package change"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createPlaceHolders()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$1900(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "handlePackagesChanged notifyDataSetChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChooserActivity"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$2000(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$2100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->access$2002(Lcom/android/internal/app/ChooserActivity;Z)Z

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    instance-of v1, p2, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050089

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080259

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$2200(Lcom/android/internal/app/ChooserActivity;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v0

    const-string v1, "ChooserActivity"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "querying direct share targets from ShortcutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/android/internal/app/ChooserActivity;->access$2300(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;Z)V

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "List built querying services"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    return-void
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    :goto_0
    nop

    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    sub-int v3, p1, v0

    if-ge v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    sub-int v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v3

    :cond_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    sub-int v4, p1, v0

    if-ge v4, v3, :cond_4

    if-eqz p2, :cond_3

    sub-int v4, p1, v0

    invoke-super {p0, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v4

    goto :goto_1

    :cond_3
    sub-int v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_4
    add-int/2addr v0, v3

    sub-int v4, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getAlphaTargetCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->access$2600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sub-int v4, p1, v0

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->access$2600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->access$2600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v4

    sub-int v5, p1, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v4

    :cond_5
    const/4 v4, 0x0

    return-object v4
.end method

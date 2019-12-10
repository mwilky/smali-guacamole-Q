.class public Lcom/android/internal/app/AppInjector;
.super Ljava/lang/Object;
.source "AppInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mAlwaysShowParallelApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/app/AppInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppInjector;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/app/AppInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addParallelResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getDisplayLabel(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x50d0057

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static managedIcon(Landroid/content/pm/ResolveInfo;Landroid/os/UserManager;)V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3e7

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput v3, p0, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput v3, p0, Landroid/content/pm/ResolveInfo;->icon:I

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/app/AppInjector;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/app/AppInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; ri.noResourceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static processSortedListAsParallel(Ljava/util/List;Ljava/util/List;Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/Context;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x22

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/internal/app/AppInjector;->mAlwaysShowParallelApp:Z

    if-eqz v1, :cond_3

    if-eqz p0, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-object/from16 v1, p1

    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const/high16 v6, 0xc0000

    sget-object v7, Landroid/os/UserHandle;->PARALLEL:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v13, p2

    :try_start_1
    invoke-virtual {v13, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    move-object v14, v6

    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v7, Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v7}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    new-instance v15, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, v15

    move-object v8, v5

    move-object v9, v2

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object v6, v15

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setParallelApp(Z)V

    sget-object v0, Lcom/android/internal/app/AppInjector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addResolveInfo with: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v8, p3

    :try_start_2
    invoke-static {v6, v8}, Lcom/android/internal/app/AppInjector;->addParallelResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object/from16 v8, p3

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v13, p2

    :goto_1
    move-object/from16 v8, p3

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v8, p3

    goto :goto_3

    :cond_2
    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v8, p3

    goto :goto_3

    :cond_3
    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v8, p3

    :goto_3
    return-void
.end method

.method public static final setParallelAppSupport(Z)V
    .locals 3

    sget-object v0, Lcom/android/internal/app/AppInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParallelAppSupport: alwaysShowParallelApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/internal/app/AppInjector;->mAlwaysShowParallelApp:Z

    return-void
.end method

.method public static startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;IZLandroid/content/Intent;Z)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4, p1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->startAsCallerImpl(Landroid/content/Intent;Landroid/os/Bundle;ZI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;ZI)V

    return v1

    :cond_1
    sget-object v2, Lcom/android/internal/app/AppInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivityAsCaller with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for userId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0, p4, p1, v0, v4}, Lcom/android/internal/app/ResolverActivity;->startAsCallerImpl(Landroid/content/Intent;Landroid/os/Bundle;ZI)Z

    move-result v0

    return v0

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;ZI)V

    return v1
.end method

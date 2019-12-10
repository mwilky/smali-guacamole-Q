.class public Landroid/app/OpApplicationPackageManagerInjector;
.super Ljava/lang/Object;
.source "OpApplicationPackageManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String;

.field private static mBlockIconPackAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBlockIconPackApps:[Ljava/lang/String;

.field private static opIconPackHelper:Landroid/app/IOpIconPackHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/app/OpApplicationPackageManagerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/app/OpApplicationPackageManagerInjector;->DEBUG_ONEPLUS:Z

    const-string v0, "com.google.android.setupwizard"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OpApplicationPackageManagerInjector;->mBlockIconPackApps:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/app/OpApplicationPackageManagerInjector;->mBlockIconPackApps:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/OpApplicationPackageManagerInjector;->mBlockIconPackAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableFromIconPack(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->mBlockIconPackAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_ICONPACK:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOpIconPackHelper;

    sput-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    :cond_1
    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/app/IOpIconPackHelper;->getDrawableFromPackagename(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/IPackageManager;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x22

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x3e7

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    invoke-interface {p3, p0, p1, v1}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail grantRuntimePermission for Parallel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_2
    :goto_1
    return-void
.end method

.method public static loadIconPack(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_ICONPACK:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOpIconPackHelper;

    sput-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    :cond_0
    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IOpIconPackHelper;->loadIconPack(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/app/ApplicationPackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/app/ApplicationPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/app/OpApplicationPackageManagerInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using target package icon instead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name not found while getting icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/IPackageManager;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x22

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x3e7

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    invoke-interface {p3, p0, p1, v1}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail revokeRuntimePermission for Parallel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_2
    :goto_1
    return-void
.end method

.method public static setIconPackHelperContext(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_ICONPACK:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOpIconPackHelper;

    sput-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    :cond_0
    sget-object v0, Landroid/app/OpApplicationPackageManagerInjector;->opIconPackHelper:Landroid/app/IOpIconPackHelper;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/app/IOpIconPackHelper;->setContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static updatePermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;Landroid/content/pm/IPackageManager;Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v0, [I

    const/16 v3, 0x22

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v3, 0x3e7

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p1

    goto :goto_3

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    move v10, v3

    goto :goto_1

    :cond_2
    move v10, v2

    :goto_1
    nop

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_3

    move v9, v0

    goto :goto_2

    :cond_3
    move v9, v2

    :goto_2
    move-object/from16 v4, p5

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v4 .. v10}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p1

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/OpApplicationPackageManagerInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail updatePermissionFlags for Dual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_4
    move-object v4, p1

    goto :goto_3

    :cond_5
    move-object v4, p1

    :goto_3
    return-void
.end method

.class public Lcom/oneplus/embryo/EmbryoApp;
.super Ljava/lang/Object;
.source "EmbryoApp.java"

# interfaces
.implements Lcom/oneplus/embryo/IEmbryoApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;
    }
.end annotation


# static fields
.field private static final ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "Embryo"

.field private static instance:Lcom/oneplus/embryo/EmbryoApp;

.field private static isEmbryo:Z


# instance fields
.field private impl:Lcom/oneplus/embryo/IEmbryoApp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.embryo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->ENABLE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->ENABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EMBRYO_APP:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/embryo/IEmbryoApp;

    iput-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    if-nez v0, :cond_3

    new-instance v0, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v0, v1}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$1;)V

    :goto_0
    iput-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v2, v1}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$1;)V

    iput-object v2, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    if-nez v0, :cond_3

    new-instance v0, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v0, v1}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$1;)V

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    if-nez v2, :cond_1

    new-instance v2, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v2, v1}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$1;)V

    iput-object v2, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    :cond_1
    throw v0

    :cond_2
    :goto_2
    new-instance v0, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v0, v1}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$1;)V

    iput-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    :cond_3
    :goto_3
    return-void
.end method

.method public static getInstance()Lcom/oneplus/embryo/EmbryoApp;
    .locals 1

    sget-object v0, Lcom/oneplus/embryo/EmbryoApp;->instance:Lcom/oneplus/embryo/EmbryoApp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/embryo/EmbryoApp;

    invoke-direct {v0}, Lcom/oneplus/embryo/EmbryoApp;-><init>()V

    sput-object v0, Lcom/oneplus/embryo/EmbryoApp;->instance:Lcom/oneplus/embryo/EmbryoApp;

    :cond_0
    sget-object v0, Lcom/oneplus/embryo/EmbryoApp;->instance:Lcom/oneplus/embryo/EmbryoApp;

    return-object v0
.end method

.method private static isDataAccessable(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->isCredentialProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Embryo"

    const-string v3, "cannot access data folder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isEmbryo()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo:Z

    return v0
.end method

.method public static setMyself()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo:Z

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1}, Lcom/oneplus/embryo/IEmbryoApp;->attach(Landroid/content/Context;)V

    return-void
.end method

.method public checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    invoke-static {p1}, Lcom/oneplus/embryo/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/embryo/IEmbryoApp;->checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public checkHWUI(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/oneplus/embryo/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1}, Lcom/oneplus/embryo/IEmbryoApp;->checkHWUI(Landroid/content/Context;)V

    return-void
.end method

.method public checkMainLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    invoke-static {p1}, Lcom/oneplus/embryo/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/embryo/IEmbryoApp;->checkMainLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0}, Lcom/oneplus/embryo/IEmbryoApp;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

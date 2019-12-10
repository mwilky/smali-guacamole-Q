.class public Lcom/oneplus/sarah/SarahClient;
.super Ljava/lang/Object;
.source "SarahClient.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DELAY_INCREMENT:I = 0x7d0

.field private static final DELAY_MILLISECOND:I = 0xbb8

.field private static final ENABLED:Z

.field private static final MAX_RETRY:I = 0x3

.field private static final MESSAGE_BIND:I = 0x3e9

.field private static final REMOTE_SERVICE:Ljava/lang/String; = "com.oneplus.asti.sarah.SarahService"

.field private static final REMOTE_SERVICE_PACKAGE:Ljava/lang/String; = "com.oneplus.asti"

.field private static final TAG:Ljava/lang/String; = "SarahClient"

.field private static sClient:Lcom/oneplus/sarah/SarahClient;


# instance fields
.field private mBindRetryTimes:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mService:Lcom/oneplus/sarah/ISarahManager;

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xcb

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/sarah/SarahClient;->ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/sarah/SarahClient;->sClient:Lcom/oneplus/sarah/SarahClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/sarah/SarahClient;->mBindRetryTimes:I

    new-instance v0, Lcom/oneplus/sarah/SarahClient$6;

    invoke-direct {v0, p0}, Lcom/oneplus/sarah/SarahClient$6;-><init>(Lcom/oneplus/sarah/SarahClient;)V

    iput-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-boolean v0, Lcom/oneplus/sarah/SarahClient;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/oneplus/sarah/SarahClient;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "SarahHandler"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/sarah/SarahClient$1;

    iget-object v1, p0, Lcom/oneplus/sarah/SarahClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/sarah/SarahClient$1;-><init>(Lcom/oneplus/sarah/SarahClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/sarah/SarahClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient;->bindService()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/sarah/SarahClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient;->bindIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/sarah/SarahClient;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/sarah/SarahClient;)Lcom/oneplus/sarah/ISarahManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mService:Lcom/oneplus/sarah/ISarahManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/sarah/SarahClient;Lcom/oneplus/sarah/ISarahManager;)Lcom/oneplus/sarah/ISarahManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/sarah/SarahClient;->mService:Lcom/oneplus/sarah/ISarahManager;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oneplus/sarah/SarahClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/sarah/SarahClient;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/sarah/SarahClient;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/sarah/SarahClient;->mBindRetryTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/sarah/SarahClient;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient;->bindService()V

    :cond_0
    return-void
.end method

.method private bindService()V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.bindsarah"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.asti"

    const-string v2, "com.oneplus.asti.sarah.SarahService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/sarah/SarahClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/sarah/SarahClient;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind Sarah service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SarahClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    iget v2, p0, Lcom/oneplus/sarah/SarahClient;->mBindRetryTimes:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/oneplus/sarah/SarahClient;->mBindRetryTimes:I

    mul-int/lit16 v5, v5, 0x7d0

    add-int/lit16 v5, v5, 0xbb8

    int-to-long v5, v5

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v2, p0, Lcom/oneplus/sarah/SarahClient;->mBindRetryTimes:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/oneplus/sarah/SarahClient;->mBindRetryTimes:I

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/sarah/SarahClient;
    .locals 2

    sget-object v0, Lcom/oneplus/sarah/SarahClient;->sClient:Lcom/oneplus/sarah/SarahClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/oneplus/sarah/SarahClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/sarah/SarahClient;->sClient:Lcom/oneplus/sarah/SarahClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/sarah/SarahClient;

    invoke-direct {v1, p0}, Lcom/oneplus/sarah/SarahClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/sarah/SarahClient;->sClient:Lcom/oneplus/sarah/SarahClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/sarah/SarahClient;->sClient:Lcom/oneplus/sarah/SarahClient;

    return-object v0
.end method

.method private isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/sarah/SarahClient;->mServiceConnected:Z

    return v0
.end method


# virtual methods
.method public notifyAodOn()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/sarah/SarahClient;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/sarah/SarahClient$2;

    invoke-direct {v1, p0}, Lcom/oneplus/sarah/SarahClient$2;-><init>(Lcom/oneplus/sarah/SarahClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyAodOnReason(F)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/sarah/SarahClient;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/sarah/SarahClient$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/sarah/SarahClient$3;-><init>(Lcom/oneplus/sarah/SarahClient;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyPowerKey()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/sarah/SarahClient;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/sarah/SarahClient$5;

    invoke-direct {v1, p0}, Lcom/oneplus/sarah/SarahClient$5;-><init>(Lcom/oneplus/sarah/SarahClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyUnlock(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/sarah/SarahClient;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/sarah/SarahClient$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/sarah/SarahClient$4;-><init>(Lcom/oneplus/sarah/SarahClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

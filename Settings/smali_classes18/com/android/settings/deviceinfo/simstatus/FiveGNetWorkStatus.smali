.class public Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.super Ljava/lang/Object;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    }
.end annotation


# static fields
.field private static final DELAY_INCREMENT:I = 0x7d0

.field private static final DELAY_MILLISECOND:I = 0xbb8

.field private static final MAX_RETRY:I = 0x4

.field private static final MESSAGE_REBIND:I = 0x400

.field private static final MESSAGE_REINIT:I = 0x401

.field private static final TAG:Ljava/lang/String; = "FiveGNetWorkStatus"


# instance fields
.field private mBindRetryTimes:I

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPhoneCount:I

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->binderService()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState()V

    return-void
.end method

.method private binderService()V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getLevel(I[I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getNrIconGroup(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getRsrpLevel(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getSaIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;)",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;-><init>()V

    move-object v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getSnrLevel(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private initFiveGServiceState()V
    .locals 0

    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 0

    return-void
.end method

.method private update5GIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getLastServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    return-object v0
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnected:Z

    return v0
.end method

.method public registerListener(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterListener(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

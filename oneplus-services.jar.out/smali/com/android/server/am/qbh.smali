.class Lcom/android/server/am/qbh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/qbh$sis;,
        Lcom/android/server/am/qbh$you;,
        Lcom/android/server/am/qbh$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "EmbryoSupervisor"


# instance fields
.field private Ah:Z

.field private Bh:Z

.field private Ch:Z

.field private Dh:Z

.field private info:Landroid/content/pm/ApplicationInfo;

.field private launchCount:J

.field private mHelper:Lcom/android/server/am/wtn;

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private rank:I

.field private startTime:J

.field private userId:I

.field private yh:Lcom/android/server/am/igw;

.field private zh:J


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/am/wtn;->getInstance()Lcom/android/server/am/wtn;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/qbh;->mHelper:Lcom/android/server/am/wtn;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/qbh;->launchCount:J

    iput-wide v0, p0, Lcom/android/server/am/qbh;->zh:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/qbh;->Ah:Z

    iput-boolean v2, p0, Lcom/android/server/am/qbh;->Bh:Z

    iput-wide v0, p0, Lcom/android/server/am/qbh;->startTime:J

    iput-boolean v2, p0, Lcom/android/server/am/qbh;->Ch:Z

    iput-boolean v2, p0, Lcom/android/server/am/qbh;->Dh:Z

    iput-object p1, p0, Lcom/android/server/am/qbh;->packageName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/qbh;->Ch:Z

    iput v2, p0, Lcom/android/server/am/qbh;->pid:I

    iput p2, p0, Lcom/android/server/am/qbh;->userId:I

    return-void
.end method

.method private Jl()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/qbh;->mHelper:Lcom/android/server/am/wtn;

    iget-object v1, p0, Lcom/android/server/am/qbh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/wtn;->bud(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/qbh;->Dh:Z

    iget-object v0, p0, Lcom/android/server/am/qbh;->mHelper:Lcom/android/server/am/wtn;

    iget-object v1, p0, Lcom/android/server/am/qbh;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/qbh;->userId:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/wtn;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/qbh;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/qbh;->Ch:Z

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/qbh;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/qbh;->rank:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/qbh;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/qbh;->launchCount:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/am/qbh;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/qbh;->zh:J

    return-wide v0
.end method


# virtual methods
.method public Ha()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/qbh;->zh:J

    return-wide v0
.end method

.method public Ia()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/igw;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ja()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/qbh;->Ch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/qbh;->Jl()V

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/am/qbh;->Dh:Z

    return p0
.end method

.method public Ka()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/qbh;->Ah:Z

    return p0
.end method

.method public La()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/qbh;->Bh:Z

    return p0
.end method

.method public Ma()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/qbh;->Bh:Z

    return-void
.end method

.method public Na()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/qbh;->Ch:Z

    return-void
.end method

.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Embryo child process died. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qbh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/qbh;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmbryoSupervisor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/qbh;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p0, Lcom/android/server/am/qbh;->pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->embryoProcDied(II)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {v0, p0}, Lcom/android/server/am/igw;->you(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {v0}, Lcom/android/server/am/igw;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bio(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/qbh;->zh:J

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/qbh;->pid:I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {v0, p0}, Lcom/android/server/am/igw;->you(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {v0}, Lcom/android/server/am/igw;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public detach()Lcom/android/server/am/igw;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/am/igw;->you(Landroid/os/IBinder$DeathRecipient;)V

    iput-object v1, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/qbh;->pid:I

    return-object v0
.end method

.method public dump()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qbh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/qbh;->zh:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/qbh;->launchCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmbryoSupervisor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/qbh;->launchCount:J

    return-wide v0
.end method

.method public getInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/qbh;->Ch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/qbh;->Jl()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/qbh;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/qbh;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRank()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/qbh;->rank:I

    return p0
.end method

.method public rtg(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/qbh;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/qbh;->rank:I

    return-void
.end method

.method public start()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/qbh;->startTime:J

    iget-wide v0, p0, Lcom/android/server/am/qbh;->launchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/qbh;->launchCount:J

    return-void
.end method

.method public stop()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/qbh;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/qbh;->zh:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/qbh;->zh:J

    return-void
.end method

.method public tsu(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object p0, p0, Lcom/android/server/am/qbh;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zgw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/qbh;->Ah:Z

    iget-boolean p1, p0, Lcom/android/server/am/qbh;->Ah:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/qbh;->Bh:Z

    :cond_0
    return-void
.end method

.method public zta(Lcom/android/server/am/igw;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    if-eqz v0, :cond_0

    const-string v0, "EmbryoSupervisor"

    const-string v1, "set embryo twice?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {v0, p0}, Lcom/android/server/am/igw;->you(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {v0}, Lcom/android/server/am/igw;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    iget-object p1, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {p1, p0}, Lcom/android/server/am/igw;->zta(Landroid/os/IBinder$DeathRecipient;)V

    iget-object p1, p0, Lcom/android/server/am/qbh;->yh:Lcom/android/server/am/igw;

    invoke-virtual {p1}, Lcom/android/server/am/igw;->getPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/qbh;->pid:I

    return-void
.end method

.method public zta(Ljava/io/PrintWriter;Lcom/android/server/am/r$you;)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/qbh;->pid:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    iget v1, p0, Lcom/android/server/am/qbh;->pid:I

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/server/am/r$you;->zta(Landroid/os/Debug$MemoryInfo;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/qbh;->pid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/qbh;->userId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/qbh;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pss="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", uss="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

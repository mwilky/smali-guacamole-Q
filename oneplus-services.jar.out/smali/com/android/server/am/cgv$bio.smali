.class Lcom/android/server/am/cgv$bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/cgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bio"
.end annotation


# static fields
.field private static final gn:I = 0x1

.field private static final hn:I = 0x2

.field private static final jn:I = 0x3

.field private static final kn:I = 0x4

.field private static final ln:I = 0x4


# instance fields
.field Am:Z

.field Bm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Cm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field Dm:Z

.field Em:I

.field Fm:Z

.field Gm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Hm:I

.field Im:I

.field Jm:I

.field Km:I

.field Lm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Mm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Nm:Lcom/android/server/am/cgv$you;

.field Om:Ljava/lang/String;

.field Pm:Ljava/lang/String;

.field Qm:J

.field Rm:J

.field Sm:J

.field Tm:Z

.field Um:Z

.field Vm:Z

.field Wm:Z

.field Xm:Z

.field Ym:Z

.field Zm:Z

.field _m:Z

.field an:Z

.field bn:Z

.field cn:Z

.field dn:Z

.field en:Z

.field fn:Z

.field foreground:Z

.field isolated:Z

.field packageName:Ljava/lang/String;

.field processState:I

.field sensor:Z

.field final synthetic this$0:Lcom/android/server/am/cgv;

.field uid:I

.field uidActive:Z

.field zm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/am/cgv;I)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/cgv$bio;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Am:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->isolated:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/cgv$bio;->Bm:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Dm:Z

    iput v0, p0, Lcom/android/server/am/cgv$bio;->Em:I

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Fm:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/cgv$bio;->zm:Ljava/util/HashSet;

    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/am/cgv$bio;->processState:I

    iput v0, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    iput v0, p0, Lcom/android/server/am/cgv$bio;->Im:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/cgv$bio;->Jm:I

    iput v0, p0, Lcom/android/server/am/cgv$bio;->Km:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/cgv$bio;->Lm:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/cgv$bio;->Mm:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/am/cgv$you;

    iget-object v2, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/android/server/am/cgv$you;-><init>(Lcom/android/server/am/cgv;Lcom/android/server/am/cgv$bio;Lcom/android/server/am/hmo;)V

    iput-object v0, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/cgv$bio;->Om:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/cgv$bio;->Pm:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    iput-wide v4, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    iput-wide v4, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Tm:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Um:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Vm:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->sensor:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->foreground:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Wm:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Xm:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Ym:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->Zm:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->_m:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->an:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->bn:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->cn:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->dn:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->en:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->fn:Z

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->uidActive:Z

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {p1}, Lcom/android/server/am/cgv;->rtg(Lcom/android/server/am/cgv;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/cgv$bio;->Om:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {p1, v0}, Lcom/android/server/am/cgv;->you(Lcom/android/server/am/cgv;I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/cgv$bio;->la(Z)V

    invoke-static {}, Lcom/android/server/am/cgv;->Gb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/cgv$you;

    invoke-direct {v0, p1, p0, v3}, Lcom/android/server/am/cgv$you;-><init>(Lcom/android/server/am/cgv;Lcom/android/server/am/cgv$bio;Lcom/android/server/am/hmo;)V

    iput-object v0, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/cgv;->sis(Lcom/android/server/am/cgv;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/cgv$bio;->setImportant(Z)V

    :cond_1
    invoke-static {p2}, Lcom/android/server/am/cgv;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/cgv$bio;->ka(Z)V

    :cond_2
    invoke-static {p2}, Lcom/android/server/am/cgv;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/cgv$bio;->ma(Z)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/am/cgv;ILcom/android/server/am/hmo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/cgv$bio;-><init>(Lcom/android/server/am/cgv;I)V

    return-void
.end method

.method private Qa(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->zm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Ra(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Bm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Sa(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Ta(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/am/cgv$bio;->Em:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addIsolatedUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic bio(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ma(Z)V

    return-void
.end method

.method private bio(ILjava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Bm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Lm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Lm:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->_m:Z

    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v4, -0x201

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Mm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->Mm:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/am/cgv$bio;->an:Z

    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v4, -0x401

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/cgv;->Gb()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    iget p1, p1, Lcom/android/server/am/cgv$you;->xm:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/server/am/cgv$you;->zta(Lcom/android/server/am/cgv$you;I)V

    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1}, Lcom/android/server/am/cgv;->kth(Lcom/android/server/am/cgv;)Lcom/android/server/am/cgv$kth;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/cgv$you;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget-object v2, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    const/4 v3, 0x0

    invoke-direct {p2, v0, v2, v3}, Lcom/android/server/am/cgv$you;-><init>(Lcom/android/server/am/cgv;Lcom/android/server/am/cgv$you;Lcom/android/server/am/hmo;)V

    invoke-static {p1, p2}, Lcom/android/server/am/cgv$kth;->zta(Lcom/android/server/am/cgv$kth;Lcom/android/server/am/cgv$you;)V

    :cond_4
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic bvj(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->setUidActive(Z)V

    return-void
.end method

.method private check(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/server/am/cgv;->access$3400()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "check uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " |sEnable:false , return"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->qb(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/cgv$bio;->uid:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/cgv$bio;->ob(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->pb(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {p0, v3}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/android/server/am/cgv;->access$3700()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->setImportant(Z)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ia(Z)V

    return-void
.end method

.method private fa(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dumpCache # uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dump begin--------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/cgv$bio;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # systemFlag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/cgv$bio;->Am:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # isolated = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/cgv$bio;->isolated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->isolated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # boundUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/cgv$bio;->Em:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget v2, p0, Lcom/android/server/am/cgv$bio;->Em:I

    invoke-static {v0, v2}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dumpCache # boundUid isFreeze = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # isEmbryo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->isEmbryo()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # freeze = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/cgv$bio;->Dm:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # totalStateMap1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/cgv;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # totalStateMap2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # totalStateMap3 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # deepBlockPoint = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpCache # blockClientUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/cgv$bio;->Im:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # birthTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Om:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # lastReason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Pm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # processState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->processState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # uidActive = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->uidActive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # foreground = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->foreground:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # processStateTop = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->en:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # foregroundService = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->fn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # boundForeground = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->cn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # foregroundSwitchProtect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->bn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # contentNotifyResume = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->dn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # audio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Tm:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # gps = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Um:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # traffic = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Vm:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # sensor = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->sensor:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # touchWindow = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Wm:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # important = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Xm:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # pids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Bm:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # prs = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # bumpService = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->an:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # bumpServicePids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Mm:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # performReceiveBroadcast = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->_m:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # performingBroadcastPids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Lm:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # deviceIdleWhiteList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Ym:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # freezeWhiteList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Zm:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isContainInWhiteList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v0}, Lcom/android/server/am/cgv;->bio(Lcom/android/server/am/cgv;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/cgv$bio;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # isOptApp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v0}, Lcom/android/server/am/cgv;->igw(Lcom/android/server/am/cgv;)Ljava/util/HashSet;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # uidsNeedNotify = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->zm:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # isolatedUids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dumpCache # uid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dump end----------------------"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ga(Z)V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v2, v1}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v1, p1}, Lcom/android/server/am/cgv$bio;->ia(Z)V

    iget-object v2, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyIsolatedUids boundUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v4, "freeze"

    goto :goto_1

    :cond_1
    const-string v4, "thawed"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v2, v3, v4}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic gck(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->setIsolated(Z)V

    return-void
.end method

.method private ha(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Tm:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ia(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Fm:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic igw(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->fa(Z)V

    return-void
.end method

.method private igw(Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/cgv$bio;->zm:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    const-string v2, "notifyStateChange NOTIFY_ALL"

    iget v3, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->zm:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->zm:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->zm:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v0, p2}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-direct {p2}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    const-string v1, "notifyStateChange"

    iget v2, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private varargs igw([J)Z
    .locals 9

    invoke-static {}, Lcom/android/server/am/cgv;->access$3400()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->isEmbryo()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2

    move v0, v1

    move-wide v5, v3

    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_3

    aget-wide v7, p1, v0

    or-long/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-wide v5, v3

    :cond_3
    iget-wide v7, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    not-long v5, v5

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gtz p1, :cond_5

    iget-wide v5, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    cmp-long p1, v5, v3

    if-gtz p1, :cond_5

    iget-wide p0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    cmp-long p0, p0, v3

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method private isEmbryo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private ja(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->dn:Z

    const-wide/16 v0, 0x2000

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid content notify resume tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ka(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Ym:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceIdle whitelist uid change tWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private km()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Dm:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic kth(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ka(Z)V

    return-void
.end method

.method private la(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Dm:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private lm()Z
    .locals 8

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->isEmbryo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/am/cgv;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ma(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Zm:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x101

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freezeWhiteList whitelist uid change tWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private mm()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v2, :cond_0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUidRequestingPermission, uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " |pid:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is requesting permission, return true"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private na(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Um:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gps event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private nm()I
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x3

    :try_start_0
    iput v0, p0, Lcom/android/server/am/cgv$bio;->Im:I

    iget v3, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x8

    if-eq v3, v1, :cond_2

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "pre-providing"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/am/cgv$bio;->tsu(Ljava/util/HashSet;)Z

    move-result v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_3

    return v2

    :cond_1
    const-string v3, "pre-serving"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/am/cgv$bio;->rtg(Ljava/util/HashSet;)Z

    move-result v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_3

    return v2

    :cond_2
    const-string v3, "pre-permRequest"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->mm()Z

    move-result v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_3

    return v2

    :cond_3
    :goto_0
    iget v3, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    if-eq v3, v1, :cond_4

    const-string v3, "permRequest"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->mm()Z

    move-result v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_4

    iput v1, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    return v2

    :cond_4
    iget v3, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    if-eq v3, v4, :cond_5

    const-string v3, "serving"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/am/cgv$bio;->rtg(Ljava/util/HashSet;)Z

    move-result v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_5

    iput v4, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    return v2

    :cond_5
    iget v3, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    if-eq v3, v2, :cond_6

    const-string v3, "providing"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/am/cgv$bio;->tsu(Ljava/util/HashSet;)Z

    move-result v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_6

    iput v2, p0, Lcom/android/server/am/cgv$bio;->Hm:I

    return v2

    :cond_6
    iput v0, p0, Lcom/android/server/am/cgv$bio;->Hm:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    iget v3, p0, Lcom/android/server/am/cgv$bio;->Jm:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/cgv$bio;->Jm:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeDeepJudgment uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " catch Exception return DO_NOTHING , rest of the attempt times:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/cgv$bio;->Jm:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPBF"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget p0, p0, Lcom/android/server/am/cgv$bio;->Jm:I

    if-lez p0, :cond_7

    const/4 p0, 0x4

    return p0

    :cond_7
    return v2
.end method

.method private oa(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->sensor:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensor event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ob(Ljava/lang/String;)I
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->isEmbryo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is embryo process, do freeze"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    monitor-exit p0

    return v1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is embryo process, do nothing"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    monitor-exit p0

    return v3

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->Am:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/cgv$bio;->isolated:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is system application process, do resume"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    monitor-exit p0

    return v4

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is system application process, do nothing"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    monitor-exit p0

    return v3

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/cgv;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    goto :goto_0

    :cond_4
    iget-wide v5, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    :goto_0
    iget-wide v7, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_5

    cmp-long v0, v5, v9

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    iget-wide v7, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    cmp-long v0, v7, v9

    if-gtz v0, :cond_6

    cmp-long v0, v5, v9

    if-lez v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v3

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v2, p0, Lcom/android/server/am/cgv$bio;->isolated:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/am/cgv$bio;->Fm:Z

    if-nez v2, :cond_8

    if-ne v0, v1, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    iget-boolean v2, p0, Lcom/android/server/am/cgv$bio;->Fm:Z

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v4

    :cond_9
    :goto_2
    if-eq v0, v1, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    const-string v1, ""

    goto :goto_3

    :cond_a
    const-string v1, "do nothing"

    goto :goto_3

    :cond_b
    const-string v1, "resume"

    goto :goto_3

    :cond_c
    const-string v1, "freeze"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for totalStateMap1:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |needToMeetMap:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |freezeState:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " |reason:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method static synthetic oif(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->qa(Z)V

    return-void
.end method

.method private om()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/cgv$bio;->bn:Z

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x801

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "remove foreground switch protection"

    invoke-direct {p0, v0}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pa(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Am:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private pb(Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeRelateProcess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->setBlockUid(IZ)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/cgv;->access$3800()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xa

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {p0, v2}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result p0

    invoke-virtual {v0, p0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-wide/16 v3, 0x8

    const-string v0, "resumeRelateProcess"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget v5, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v0, v5, v1, p1}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;IZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget v6, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/cgv;->Hb()Landroid/util/SparseArray;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/cgv;->Hb()Landroid/util/SparseArray;

    move-result-object v7

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/IDisplayManagerCallback;

    if-eqz v7, :cond_4

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v9, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v10, 0x2422

    invoke-static {v10, v8, v9}, Lcom/android/server/am/cgv;->checkTimeoutBegin(III)V

    invoke-static {}, Lcom/android/server/am/cgv;->access$4100()I

    move-result v8

    invoke-static {}, Lcom/android/server/am/cgv;->Ib()I

    move-result v9

    invoke-interface {v7, v8, v9}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    invoke-static {v10}, Lcom/android/server/am/cgv;->checkTimeoutEnd(I)V

    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v8, :cond_5

    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v8, :cond_5

    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_5

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    const-string v10, "resumeRelateProcess binding service"

    iget v11, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v9, p1, v10, v11}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v1, v9}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;IZLjava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    iget-object v8, v7, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v8, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v8, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v9, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget-object v7, v7, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v7, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    const-string v10, "resumeRelateProcess connecting provider"

    iget v11, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v9, p1, v10, v11}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v1, v9}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;IZLjava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1

    iget v7, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v7, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    const-string v8, "resumeRelateProcess adjustApp"

    iget v9, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v7, p1, v8, v9}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v1, v7}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;IZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_b
    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->pm()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeRelateProcess uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPBF"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget v0, p0, Lcom/android/server/am/cgv$bio;->Km:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/cgv$bio;->Km:I

    iget v0, p0, Lcom/android/server/am/cgv$bio;->Km:I

    if-lez v0, :cond_c

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {p0, v2}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result p0

    invoke-virtual {v0, p0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private pm()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/android/server/am/cgv$bio;->Km:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private qa(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Wm:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touchWindow change tAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private qb(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v0}, Lcom/android/server/am/cgv;->rtg(Lcom/android/server/am/cgv;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Reason:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/cgv$bio;->Pm:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic qbh(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->setForeground(Z)V

    return-void
.end method

.method private qm()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/android/server/am/cgv$bio;->Jm:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ra(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Vm:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traffic event tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private rb(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/cgv$bio;->sis(Ljava/lang/String;Z)V

    return-void
.end method

.method private removeIsolatedUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/cgv$bio;->Gm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic rtg(Lcom/android/server/am/cgv$bio;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->Sa(I)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/cgv$bio;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->pb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->la(Z)V

    return-void
.end method

.method private rtg(Ljava/util/HashSet;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " return false"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses contain uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    if-eqz v8, :cond_7

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v8, :cond_7

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v9, v8, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v9, v8}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object v9

    const-string v10, " |serverUid:"

    if-eqz v9, :cond_9

    iget v11, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v9, v11}, Lcom/android/server/am/cgv$bio;->Qa(I)V

    invoke-direct {v9}, Lcom/android/server/am/cgv$bio;->lm()Z

    move-result v11

    const/4 v12, 0x1

    const-string v13, " return true"

    if-eqz v11, :cond_8

    invoke-direct {v9, p1}, Lcom/android/server/am/cgv$bio;->rtg(Ljava/util/HashSet;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    return v12

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses there is a client process that cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    iput v8, p0, Lcom/android/server/am/cgv$bio;->Im:I

    return v12

    :cond_9
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses there is a system process as a client clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can freeze return false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private setForeground(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->foreground:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/cgv$bio;->bn:Z

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget v1, p0, Lcom/android/server/am/cgv$bio;->uid:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/cgv;->you(Lcom/android/server/am/cgv;IZ)V

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget v1, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/cgv;->sis(Lcom/android/server/am/cgv;IZ)V

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget v1, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->tsu(Lcom/android/server/am/cgv;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    iget v1, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->rtg(Lcom/android/server/am/cgv;I)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground package change tFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setImportant(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->Xm:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x41

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "important uid change tImportant:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setIsolated(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->isolated:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/cgv$bio;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    invoke-static {v0, p1}, Lcom/android/server/am/cgv$you;->zta(Lcom/android/server/am/cgv$you;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setProcessState(I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/cgv$bio;->processState:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/server/am/cgv$bio;->processState:I

    iget v0, p0, Lcom/android/server/am/cgv$bio;->processState:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    const-wide/16 v4, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gt v0, v1, :cond_0

    iput-boolean v6, p0, Lcom/android/server/am/cgv$bio;->en:Z

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    goto :goto_0

    :cond_0
    iput-boolean v7, p0, Lcom/android/server/am/cgv$bio;->en:Z

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    and-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Rm:J

    :goto_0
    iget v0, p0, Lcom/android/server/am/cgv$bio;->processState:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iput-boolean v6, p0, Lcom/android/server/am/cgv$bio;->fn:Z

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    goto :goto_1

    :cond_1
    iput-boolean v7, p0, Lcom/android/server/am/cgv$bio;->fn:Z

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    and-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    :goto_1
    iget v0, p0, Lcom/android/server/am/cgv$bio;->processState:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    iput-boolean v6, p0, Lcom/android/server/am/cgv$bio;->cn:Z

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_2

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/am/cgv$bio;->cn:Z

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v2, -0x1001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process state change tProcessState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setUidActive(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->uidActive:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/cgv$bio;->Sm:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid active tActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic sis(Lcom/android/server/am/cgv$bio;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->Ta(I)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/cgv$bio;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ra(Z)V

    return-void
.end method

.method private sis(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/cgv;->access$3400()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/cgv$bio;->la(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->pb(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic sis(Lcom/android/server/am/cgv$bio;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->km()Z

    move-result p0

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/am/cgv$bio;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->setProcessState(I)V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ga(Z)V

    return-void
.end method

.method private ssp(Lcom/android/server/am/cgv$you;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/cgv$bio;->Nm:Lcom/android/server/am/cgv$you;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic tsu(Lcom/android/server/am/cgv$bio;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->om()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/cgv$bio;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->addIsolatedUid(I)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/cgv$bio;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->rb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->oa(Z)V

    return-void
.end method

.method private tsu(Ljava/util/HashSet;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " return false"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses contain uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v2

    :goto_3
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    if-eqz v7, :cond_5

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v8, v7, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/cgv$bio;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v8, v7}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object v8

    const-string v9, " |serverUid:"

    if-eqz v8, :cond_7

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v8, v10}, Lcom/android/server/am/cgv$bio;->Qa(I)V

    invoke-direct {v8}, Lcom/android/server/am/cgv$bio;->lm()Z

    move-result v10

    const-string v11, " return true"

    const/4 v12, 0x1

    if-eqz v10, :cond_6

    invoke-direct {v8, p1}, Lcom/android/server/am/cgv$bio;->tsu(Ljava/util/HashSet;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    return v12

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses there is a client process that cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    iput v7, p0, Lcom/android/server/am/cgv$bio;->Im:I

    return v12

    :cond_7
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses there is a system process as a client clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/cgv$bio;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can freeze return false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method static synthetic wtn(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->pa(Z)V

    return-void
.end method

.method private you(IZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/cgv$bio;->Lm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/cgv$bio;->Lm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->Lm:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/cgv$bio;->_m:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->_m:Z

    iget-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_1
    invoke-direct {p0, p3}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/am/cgv$bio;->_m:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->_m:Z

    iget-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v0, -0x201

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic you(Lcom/android/server/am/cgv$bio;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->qm()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/cgv$bio;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->Ra(I)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/cgv$bio;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/cgv$bio;->zta(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/cgv$bio;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->na(Z)V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ja(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cgv$bio;->nm()I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ob(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private zta(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cgv$bio;->Cm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zta(IZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/cgv$bio;->Mm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/cgv$bio;->Mm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/cgv$bio;->Mm:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/cgv$bio;->an:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->an:Z

    iget-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    :goto_1
    invoke-direct {p0, p3}, Lcom/android/server/am/cgv$bio;->check(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/am/cgv$bio;->an:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/cgv$bio;->an:Z

    iget-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    const-wide/16 v0, -0x401

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/cgv$bio;->Qm:J

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->removeIsolatedUid(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/cgv$bio;->zta(ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/cgv$bio;->you(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;Lcom/android/server/am/cgv$you;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ssp(Lcom/android/server/am/cgv$you;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/cgv$bio;->igw(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/cgv$bio;->sis(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->ha(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;ILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/cgv$bio;->bio(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/cgv$bio;[J)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$bio;->igw([J)Z

    move-result p0

    return p0
.end method
.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final JBa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private SCa:Z

.field private TCa:Z

.field private UCa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->SCa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->TCa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->UCa:Z

    return-void
.end method


# virtual methods
.method Ak()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->SCa:Z

    return p0
.end method

.method Bk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->UCa:Z

    return p0
.end method

.method Ck()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->TCa:Z

    return-void
.end method

.method Dk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->SCa:Z

    return-void
.end method

.method Ek()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->UCa:Z

    return-void
.end method

.method zk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->TCa:Z

    return p0
.end method
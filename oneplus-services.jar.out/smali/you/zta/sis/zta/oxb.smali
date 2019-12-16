.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final uCa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private DDa:Z

.field private EDa:Z

.field private FDa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->DDa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->EDa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->FDa:Z

    return-void
.end method


# virtual methods
.method Ak()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->EDa:Z

    return-void
.end method

.method Bk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->DDa:Z

    return-void
.end method

.method Ck()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->FDa:Z

    return-void
.end method

.method xk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->EDa:Z

    return p0
.end method

.method yk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->DDa:Z

    return p0
.end method

.method zk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->FDa:Z

    return p0
.end method

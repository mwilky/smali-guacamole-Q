.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final XBa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private fDa:Z

.field private gDa:Z

.field private hDa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->fDa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->gDa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->hDa:Z

    return-void
.end method


# virtual methods
.method Ak()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->hDa:Z

    return p0
.end method

.method Bk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->gDa:Z

    return-void
.end method

.method Ck()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->fDa:Z

    return-void
.end method

.method Dk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->hDa:Z

    return-void
.end method

.method yk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->gDa:Z

    return p0
.end method

.method zk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->fDa:Z

    return p0
.end method

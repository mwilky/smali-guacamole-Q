.class Lcom/android/server/wm/OpPowerConsumpStats$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field cP:J

.field dP:J

.field duration:J

.field eP:J

.field fP:I

.field gP:I

.field hP:J

.field iP:J

.field jP:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->cP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->dP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eP:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fP:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gP:I

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iP:J

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->cP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->dP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eP:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fP:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gP:I

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iP:J

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jP:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->cP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->cP:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->dP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->dP:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eP:J

    iget p1, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fP:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fP:I

    iget p1, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gP:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gP:I

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hP:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iP:J

    iget-object p1, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jP:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jP:Ljava/lang/String;

    return-void
.end method

.method private Bb(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"relativeBeginTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->cP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"relativeEndTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->dP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"duration\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"realBeginTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"beginPowerLevel\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fP:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"endPowerLevel\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gP:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"screenOnDuration\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"firstFullTimeToRelativeBeginTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"plugType\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jP:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private clear()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->cP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->dP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eP:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fP:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gP:I

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hP:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jP:Ljava/lang/String;

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Bb(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->clear()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeFragment relativeBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->cP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |relativeEndTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->dP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |realBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |beginPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |endPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |screenOnDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jP:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

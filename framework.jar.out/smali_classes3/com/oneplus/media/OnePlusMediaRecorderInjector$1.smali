.class Lcom/oneplus/media/OnePlusMediaRecorderInjector$1;
.super Landroid/view/OrientationEventListener;
.source "OnePlusMediaRecorderInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/media/OnePlusMediaRecorderInjector;->startOrientationSensorInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsGetData:Z

    invoke-static {p1}, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->access$002(I)I

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRecorder startOrientationSensorInternal() orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusMediaRecorderInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

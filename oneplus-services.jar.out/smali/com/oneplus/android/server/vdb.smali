.class public Lcom/oneplus/android/server/vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/IOpMotorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/vdb$tsu;,
        Lcom/oneplus/android/server/vdb$zta;,
        Lcom/oneplus/android/server/vdb$you;,
        Lcom/oneplus/android/server/vdb$sis;
    }
.end annotation


# static fields
.field private static final AW:I = 0xbc

.field private static final DATA_SIZE:I = 0x10

.field private static final DW:I = 0xbd

.field private static final EW:I = 0xbe

.field private static final FW:I = 0x1388

.field private static final GW:I = 0x800

.field private static final HW:I = 0x0

.field private static final IW:I = 0x1

.field private static final JW:I = 0x1

.field private static final KW:I = 0x2bc

.field private static final LW:I = 0x2bf

.field private static final MW:I = 0x1fa2658

.field private static final NW:I = 0x32

.field private static OW:I = 0x0

.field private static PW:I = 0x0

.field private static QW:I = 0x0

.field private static RW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpMotorManagerService"

.field private static final THREAD_NAME:Ljava/lang/String; = "OpMotorManager"

.field private static TW:I = 0x0

.field private static UW:I = 0x0

.field private static VW:I = 0x0

.field private static WW:I = 0x0

.field private static XW:I = 0x0

.field private static YW:I = 0x0

.field private static ZW:I = 0x0

.field private static _W:J = 0x0L

.field private static aX:J = 0x0L

.field private static bX:J = 0x0L

.field private static cR:Z = true

.field private static cX:J = 0x0L

.field private static dX:J = 0x0L

.field private static eX:J = 0x0L

.field private static fX:Z = false

.field private static gW:Z = false

.field private static gX:Z = false

.field private static hW:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static hX:Z = false

.field private static final iW:Ljava/lang/String; = "com.oneplus.action.CAMERA"

.field private static iX:Z = false

.field private static final jW:Ljava/lang/String; = "oneplus.intent.action.INCALLUI_ANSWER"

.field private static jX:Z = false

.field private static final kW:Ljava/lang/String; = "isVideo"

.field private static kX:Z = false

.field private static final lW:Ljava/lang/String; = "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

.field private static lX:Z = false

.field private static final mW:Ljava/lang/String; = "android.policy:POWER"

.field private static final nW:Ljava/lang/String; = "android.policy:DOUBLE_TAP"

.field private static nX:Z = false

.field private static final oW:Ljava/lang/String; = "systemui_faceunlock"

.field private static oX:Z = false

.field private static final pW:Ljava/lang/String; = "screenoff"

.field private static pX:Z = false

.field private static final qW:Ljava/lang/String; = "persist.sys.motor.calibtime"

.field private static qX:Z = false

.field private static final rW:Ljava/lang/String; = "org.codeaurora.ims"

.field private static rX:Z = false

.field private static sInstance:Lcom/oneplus/android/server/vdb; = null

.field private static sW:Ljava/lang/String; = null

.field private static sX:Z = false

.field private static tW:Ljava/lang/String; = null

.field private static uW:Ljava/lang/String; = null

.field private static final vW:I = 0xb7

.field private static final wW:I = 0xb8

.field private static final xW:I = 0xb9

.field private static final yW:I = 0xba

.field private static final zW:I = 0xbb


# instance fields
.field private BV:Landroid/app/AlertDialog;

.field private CV:Lcom/oneplus/android/server/vdb$tsu;

.field private final DV:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/oneplus/android/server/vdb$zta;",
            ">;"
        }
    .end annotation
.end field

.field private final EV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/android/os/IOpMotorStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private FV:[J

.field private GV:Ljava/lang/String;

.field private HV:Ljava/lang/String;

.field private IV:Ljava/lang/String;

.field private KV:Ljava/lang/String;

.field private MV:Ljava/lang/String;

.field private OV:I

.field private PV:I

.field private QV:I

.field private Qt:Z

.field private RV:Z

.field private SV:Z

.field private UV:Z

.field private VV:Z

.field private WV:Z

.field private XV:Z

.field private YV:Z

.field private Yn:Landroid/app/IProcessObserver;

.field private ZV:Z

.field private _V:Z

.field private aW:Z

.field private bW:Z

.field private cW:Z

.field private final dW:Landroid/hardware/SensorEventListener;

.field private eW:Landroid/media/AudioManager$AudioRecordingCallback;

.field private final fW:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/android/server/vdb$you;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximity:Landroid/hardware/Sensor;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private tV:Landroid/hardware/SensorManager;

.field private uV:Landroid/hardware/Sensor;

.field private vV:Landroid/app/IActivityTaskManager;

.field private wV:Lcom/oneplus/android/server/scene/GameModeObserver;

.field private xV:Lcom/oneplus/android/server/vdb$zta;

.field private yV:Lsis/you/you/you/zta/zta;

.field private final zV:Lcom/oneplus/android/server/vdb$sis;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->tW:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->uW:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/android/server/vdb;->OW:I

    sput v0, Lcom/oneplus/android/server/vdb;->PW:I

    const/4 v1, 0x1

    sput v1, Lcom/oneplus/android/server/vdb;->QW:I

    sput v1, Lcom/oneplus/android/server/vdb;->RW:I

    const/4 v2, 0x4

    sput v2, Lcom/oneplus/android/server/vdb;->TW:I

    const/16 v2, 0x64

    sput v2, Lcom/oneplus/android/server/vdb;->UW:I

    sput v2, Lcom/oneplus/android/server/vdb;->VW:I

    const/16 v2, 0x1f4

    sput v2, Lcom/oneplus/android/server/vdb;->WW:I

    const/16 v2, 0x7d0

    sput v2, Lcom/oneplus/android/server/vdb;->XW:I

    const/16 v2, 0x3e8

    sput v2, Lcom/oneplus/android/server/vdb;->YW:I

    const/16 v2, 0x5dc

    sput v2, Lcom/oneplus/android/server/vdb;->ZW:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/oneplus/android/server/vdb;->_W:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->aX:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->bX:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->cX:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->dX:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->eX:J

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->fX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->gX:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->hX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->iX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->jX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->kX:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->lX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->nX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->oX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->qX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->rX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->sX:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->xV:Lcom/oneplus/android/server/vdb$zta;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->DV:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->EV:Ljava/util/List;

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->FV:[J

    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->GV:Ljava/lang/String;

    const-string v0, "focus"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    const-string v0, "backgroud"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->IV:Ljava/lang/String;

    const-string v0, "backActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->KV:Ljava/lang/String;

    const-string v0, "focusActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->MV:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    iput v0, p0, Lcom/oneplus/android/server/vdb;->QV:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->RV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->SV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->UV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Qt:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->XV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->YV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_V:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->aW:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->bW:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cW:Z

    new-instance v0, Lcom/oneplus/android/server/gck;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/gck;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->dW:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/oneplus/android/server/dma;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/dma;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->eW:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v0, Lcom/oneplus/android/server/ywr;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/ywr;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->fW:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/android/server/qbh;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/qbh;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$16;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$16;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->Yn:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$17;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$17;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "OpMotorManager"

    const/16 v2, 0xa

    invoke-direct {p1, v0, v2, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Lcom/oneplus/android/server/vdb$you;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/vdb$you;-><init>(Lcom/oneplus/android/server/vdb;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    new-instance p1, Lcom/oneplus/android/server/vdb$sis;

    const-string v0, "OpMotorManagerSocket"

    invoke-direct {p1, p0, p0, v0}, Lcom/oneplus/android/server/vdb$sis;-><init>(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->zV:Lcom/oneplus/android/server/vdb$sis;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->zV:Lcom/oneplus/android/server/vdb$sis;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private Aq()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private Bq()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->lX:Z

    const-string v1, "OpMotorManagerService"

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorDownLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->oX:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->oq()I

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qX:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->kX:Z

    if-nez v0, :cond_5

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-eqz v0, :cond_5

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorUpLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->nX:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppMotorCommand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/vdb;->PV:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_q()I

    :cond_5
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qX:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->oq()I

    :cond_7
    return-void
.end method

.method static synthetic C(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->fX:Z

    return p0
.end method

.method private Cq()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->IV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->xq()Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, "OpMotorManagerService"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera app focus from back in 600ms, remove downMessage"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->SV:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->UV:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->GV:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_3

    const-string v0, "camera app focus from backgroud and should upmotor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cW:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ia(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_5
    :goto_0
    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->GV:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->SV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->UV:Z

    :cond_6
    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_a

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->IV:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->aW:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    const-string v3, "net.oneplus.launcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/oneplus/android/server/vdb;->QV:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Mb(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const-string v0, "non-standard camera app, maybe not release when backgroud"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->UW:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Nb(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x14

    sget v1, Lcom/oneplus/android/server/vdb;->XW:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method static synthetic D(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->gW:Z

    return p0
.end method

.method private Dq()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "openCamera"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "pullMotorWake"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private Eq()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "show phoneFallDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d0076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/igw;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/igw;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/wtn;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/wtn;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Fq()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->UV:Z

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->GV:Ljava/lang/String;

    return-void
.end method

.method private Gq()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->SV:Z

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->GV:Ljava/lang/String;

    return-void
.end method

.method private Hq()V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->lq()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/vdb;->cX:J

    sget-wide v1, Lcom/oneplus/android/server/vdb;->cX:J

    sget-wide v3, Lcom/oneplus/android/server/vdb;->bX:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/vdb;->eX:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->lX:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->jX:Z

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/vdb;->OV:I

    if-eq v3, v1, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-eqz v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/vdb;->qX:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->pX:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->rX:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->RV:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Qt:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMotorDownArrived sMotorDownPress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/oneplus/android/server/vdb;->pX:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAppMotorCommand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/vdb;->PV:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatestMotorCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/vdb;->OV:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_q()I

    :cond_2
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qX:Z

    if-eqz v0, :cond_7

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v1, 0x12

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qX:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v1, 0x16

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Fq()V

    :cond_7
    sput-boolean v2, Lcom/oneplus/android/server/vdb;->sX:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->RV:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->pX:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->qX:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->YV:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->kq()V

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->gX:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->gX:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->gq()V

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_V:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->mq()V

    :cond_8
    return-void
.end method

.method private Ia(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showUpMotorView show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private Iq()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->jX:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->oX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->gX:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->eq()V

    return-void
.end method

.method private Jq()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/vdb;->bX:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->jX:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->kX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->nX:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotorDowning mFocusPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sCameraUserPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->oX:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->Ob(I)V

    :cond_0
    sput-boolean v0, Lcom/oneplus/android/server/vdb;->oX:Z

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->sq()V

    :cond_1
    return-void
.end method

.method private Kq()V
    .locals 0

    return-void
.end method

.method private Lq()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorPush"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ob(I)V

    return-void
.end method

.method private Mb(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private Mq()V
    .locals 8

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/vdb;->aX:J

    sget-wide v1, Lcom/oneplus/android/server/vdb;->aX:J

    sget-wide v3, Lcom/oneplus/android/server/vdb;->_W:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/vdb;->dX:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->kX:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->iX:Z

    sget v3, Lcom/oneplus/android/server/vdb;->PW:I

    add-int/2addr v3, v1

    sput v3, Lcom/oneplus/android/server/vdb;->PW:I

    sget v3, Lcom/oneplus/android/server/vdb;->PW:I

    const/16 v4, 0x3c

    if-le v3, v4, :cond_0

    sput v2, Lcom/oneplus/android/server/vdb;->PW:I

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/vdb;->gX:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->gX:Z

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->sX:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->YV:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/oneplus/android/server/vdb;->OV:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    if-eqz v3, :cond_1

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->oq()I

    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->YV:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->hq()V

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "persist.sys.motor.calibtime"

    invoke-static {v7, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-boolean v5, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sinceLastCalibTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide v5, 0x9a7ec800L

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    return-void

    :cond_4
    invoke-static {}, Lcom/oneplus/android/server/rtg;->ce()Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->_V:Z

    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_V:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Yq()V

    :cond_6
    return-void
.end method

.method private Nb(I)Z
    .locals 5

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "get_pid"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPidArray.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecording: camaraUserPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " broadcastPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecording: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    sget-object p1, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private Nq()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->iX:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->nX:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->gX:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->fq()V

    return-void
.end method

.method private Ob(I)V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyMotorStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->EV:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->EV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;->onMotorStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "OpMotorManagerService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->EV:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private Oq()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/vdb;->_W:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->iX:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->lX:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->oX:Z

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->nX:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ob(I)V

    :cond_0
    sput-boolean v1, Lcom/oneplus/android/server/vdb;->nX:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->wq()V

    return-void
.end method

.method private Pb(I)I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/vdb;->you(II)I

    move-result p0

    return p0
.end method

.method private Pq()Z
    .locals 0

    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private Qq()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyguardAppear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFaceRecog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sCameraUserPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->OW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraUserPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mShowUpMotorView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->bW:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    const-string v1, "com.oneplus.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    const-string v1, "com.oneplus.faceunlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x166

    sget-object v1, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->bW:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Rq()V
    .locals 6

    const-string v0, "OpMotorManagerService"

    const-string v1, "showBackgroundUseMotorDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/oneplus/android/server/vdb;->QV:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v4, 0x50d0057

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v5, 0x50d0006

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d005a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/kth;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/kth;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d0026

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/bio;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/bio;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private Sq()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorCannotUpDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d009a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ugm;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ugm;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Tq()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d009a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ssp;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ssp;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Uq()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorUpLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d0075

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ibl;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ibl;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/gwm;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/gwm;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Vq()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d009a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/cno;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/cno;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Wq()V
    .locals 12

    const-string v0, "OpMotorManagerService"

    const-string v1, "showUpMotorWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/android/server/oif;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/oif;-><init>(Lcom/oneplus/android/server/vdb;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v11

    const v0, -0x777778

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setClickable(Z)V

    new-instance v0, Lcom/oneplus/android/server/bvj;

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/oneplus/android/server/bvj;-><init>(Lcom/oneplus/android/server/vdb;JJLandroid/widget/Button;I)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private Xq()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_V:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/rtg;->ee()V

    invoke-static {}, Lcom/oneplus/android/server/rtg;->de()Z

    const-string v0, "OpMotorManagerService"

    const-string v1, "upArrivedCalib successed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_V:Z

    sput v0, Lcom/oneplus/android/server/rtg;->lV:I

    sput v0, Lcom/oneplus/android/server/rtg;->mV:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.sys.motor.calibtime"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Yq()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->A(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/rtg;->mV:I

    add-int/2addr v0, v1

    sput v0, Lcom/oneplus/android/server/rtg;->mV:I

    :cond_0
    sget v0, Lcom/oneplus/android/server/rtg;->mV:I

    sget v2, Lcom/oneplus/android/server/vdb;->TW:I

    if-le v0, v2, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v2, "upArrivedCalibDetect successed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    :cond_1
    return-void
.end method

.method private Zq()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->nX:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fX:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/oneplus/android/server/vdb;->QW:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->QW:I

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetect sUpLoopDetectCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/android/server/vdb;->QW:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->QW:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ge v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v1, Lcom/oneplus/android/server/vdb;->YW:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Bq()V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/vdb;->Ob(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0xf

    goto :goto_1

    :cond_3
    if-le v0, v2, :cond_4

    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/vdb;->Ob(I)V

    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x10

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private _q()I
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->XV:Z

    iget-boolean v2, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->nX:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->oX:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/oneplus/android/server/vdb;->c(J)V

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v2}, Lcom/oneplus/android/server/vdb;->kth(III)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-boolean v1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upMotor res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method static synthetic a(Lcom/oneplus/android/server/vdb;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->EV:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->UW:I

    return v0
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->OW:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->hX:Z

    return p0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->WW:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->lX:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->jX:Z

    return v0
.end method

.method static synthetic access$6100()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->kX:Z

    return v0
.end method

.method private ar()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->lX:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->SV:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotorByCallEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yq()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v1, :cond_0

    const-string v1, "upMotorByCallEnd isDownOrNot false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_q()I

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->br()V

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->uq()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method private br()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "OpMotorManagerService"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ia(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->bW:Z

    :cond_0
    return-void
.end method

.method static synthetic bud(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Eq()V

    return-void
.end method

.method static synthetic bvj(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->IV:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/scene/GameModeObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->wV:Lcom/oneplus/android/server/scene/GameModeObserver;

    return-object p0
.end method

.method private c(J)V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update motor up time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->FV:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, v2, v3

    aput-wide v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->FV:[J

    aput-wide p1, v1, v2

    aget-wide p1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    aget-wide p1, v1, v2

    aget-wide v1, v1, v0

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x4650

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    const/4 p1, 0x6

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->FV:[J

    aput-wide v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic cgv(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Vq()V

    return-void
.end method

.method static synthetic cjf(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Dq()V

    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/vdb;->QV:I

    return p0
.end method

.method static synthetic dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->CV:Lcom/oneplus/android/server/vdb$tsu;

    return-object p0
.end method

.method private dq()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "backgroundSpecialControl:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->hX:Z

    if-eqz v1, :cond_0

    const-string v1, "backgroundSpecialControl true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yq()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gq()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->XV:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Motor Manager State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFocusPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->tW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->OV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAppMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->PV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/oneplus/android/server/vdb;->OW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->OW:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->Nb(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sRequestMotorTagSize = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sIntervalTime = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oneplus/android/server/vdb;->UW:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUping = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->iX:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowning = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->jX:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUped = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->kX:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowned = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->lX:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUpLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->nX:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDownLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->oX:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sAudioCameraUserExit = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->hX:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ear(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->pq()V

    return-void
.end method

.method private eq()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->VW:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->hq()V

    return-void
.end method

.method static synthetic fe()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->gX:Z

    return v0
.end method

.method private fq()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->VW:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->gq()V

    return-void
.end method

.method static synthetic fto(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Uq()V

    return-void
.end method

.method static synthetic ga(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/vdb;->uW:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic gck(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->cW:Z

    return p0
.end method

.method static synthetic ge()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/android/server/vdb;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/vdb;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/vdb;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/vdb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    return-object p0
.end method

.method private getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->vV:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private gq()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->RW:I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method static synthetic gwm(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->MV:Ljava/lang/String;

    return-object p0
.end method

.method private hc(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic he()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->ZW:I

    return v0
.end method

.method static synthetic hmo(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Wq()V

    return-void
.end method

.method private hq()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->QW:I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method static synthetic ibl(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->KV:Ljava/lang/String;

    return-object p0
.end method

.method private ic(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg from socket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Message;->what:I

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic ie()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->pX:Z

    return v0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->aW:Z

    return p0
.end method

.method private iq()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Pq()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50e0001

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Motor Error"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->BV:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic ire(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ar()V

    return-void
.end method

.method static synthetic irq(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->XV:Z

    return p0
.end method

.method static synthetic ivd(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->UW:I

    return p0
.end method

.method static synthetic ivd(Lcom/oneplus/android/server/vdb;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/android/server/vdb;->PV:I

    return v0
.end method

.method private jc(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has not removed, exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method static synthetic je()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->gW:Z

    return v0
.end method

.method private jq()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "delayDownMotorByCamera"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->UW:I

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->MV:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0x50

    invoke-static {v2, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->WW:I

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic ke()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->TW:I

    return v0
.end method

.method private kq()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->tV:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->dW:Landroid/hardware/SensorEventListener;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private kth(III)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeMotorControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->tq()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2, p3}, Lsis/you/you/you/zta/zta;->sis(III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic kth(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic le()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->tW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic les(Lcom/oneplus/android/server/vdb;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method private lq()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_V:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/rtg;->Zd()V

    const-string p0, "OpMotorManagerService"

    const-string v0, "downArrivedCalib successed"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private lqr(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeFlashControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->tq()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->ssp(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeFlashControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic lqr(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Sq()V

    return-void
.end method

.method private mq()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->A(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/android/server/rtg;->lV:I

    add-int/2addr v1, v0

    sput v1, Lcom/oneplus/android/server/rtg;->lV:I

    :cond_0
    sget v1, Lcom/oneplus/android/server/rtg;->lV:I

    sget v2, Lcom/oneplus/android/server/vdb;->TW:I

    if-le v1, v2, :cond_1

    const-string v1, "OpMotorManagerService"

    const-string v2, "downArrivedCalibDetect successed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZV:Z

    :cond_1
    return-void
.end method

.method private nq()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->oX:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fX:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/oneplus/android/server/vdb;->RW:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->RW:I

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loopDetect sDownLoopDetectCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->RW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->RW:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->YW:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Bq()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ob(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic obl(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dq()V

    return-void
.end method

.method static synthetic oif(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    return p0
.end method

.method private oq()I
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v2}, Lcom/oneplus/android/server/vdb;->kth(III)I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downMotor res: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method static synthetic oxb(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->rq()V

    return-void
.end method

.method private pq()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->kX:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotorByAudio"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yq()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "downMotorByAudio isDownOrNot true"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gq()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->XV:Z

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    return-void
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qq()Z

    move-result p0

    return p0
.end method

.method static synthetic qeg(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    return p0
.end method

.method private qq()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "poweroff down motor at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->rX:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->oq()I

    return-void
.end method

.method private rq()V
    .locals 2

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ob(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->qX:Z

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->iX:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->YV:Z

    :cond_0
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_q()I

    move-result p0

    return p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->KV:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->RV:Z

    return p1
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->oq()I

    move-result p0

    return p0
.end method

.method private sis(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->PV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->OV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OpMotorManagerService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "systemui_faceunlock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/oneplus/android/server/vdb;->PV:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/android/server/vdb;->PV:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    new-instance v1, Lcom/oneplus/android/server/vdb$zta;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oneplus/android/server/vdb$zta;-><init>(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;Lcom/oneplus/android/server/gck;)V

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->xV:Lcom/oneplus/android/server/vdb$zta;

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->xV:Lcom/oneplus/android/server/vdb$zta;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p2, "OpMotorManagerService"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v2, p0, Lcom/oneplus/android/server/vdb;->OV:I

    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "OpMotorManagerService"

    const-string v1, "removeMessages MSG_MOTOR_DELAY_DOWN_SYSTEMAPP"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Qt:Z

    if-eqz p1, :cond_7

    :cond_6
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->lX:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->nX:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->oX:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    iget p0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    monitor-exit v0

    return p0

    :cond_8
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz p1, :cond_9

    const-string p1, "OpMotorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene upMotor sMotorDowned: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->lX:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_q()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->Nb(I)Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->hc(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    return p1
.end method

.method private sq()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->uq()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->aW:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/android/server/vdb;->aW:Z

    :goto_1
    iget-boolean v4, p0, Lcom/oneplus/android/server/vdb;->aW:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->vV:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v3}, Landroid/app/IActivityTaskManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iget-object v1, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->vV:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v2}, Landroid/app/IActivityTaskManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->xq()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "OpMotorManagerService"

    const-string v2, "startHomeIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->MV:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->sq()V

    return-void
.end method

.method private tq()Lsis/you/you/you/zta/zta;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lsis/you/you/you/zta/zta;->getService()Lsis/you/you/you/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getting MotorControl hw service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->IV:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->XV:Z

    return p1
.end method

.method static synthetic ugm(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Cq()V

    return-void
.end method

.method private uq()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->vV:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic vdb(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Zq()V

    return-void
.end method

.method static synthetic vdw(Lcom/oneplus/android/server/vdb;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->DV:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic veq(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Tq()V

    return-void
.end method

.method static synthetic vju(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Rq()V

    return-void
.end method

.method private vq()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v1, :cond_0

    const-string v1, "start motor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "motor"

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v1, :cond_1

    const-string v1, "Start motor service failed"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private wq()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "initSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->tV:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->tV:Landroid/hardware/SensorManager;

    const v1, 0x1fa2658

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->uV:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->dW:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->uV:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->tV:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->TW:I

    return p0
.end method

.method private xq()Z
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private you(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "readMotorControlData "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->tq()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->you(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "readMotorData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private you(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    sget-object v0, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OpMotorManagerService"

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/vdb;->you(Landroid/os/IBinder;)Lcom/oneplus/android/server/vdb$zta;

    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->DV:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->xV:Lcom/oneplus/android/server/vdb$zta;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string p2, "after unlinkToDeath"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/oneplus/android/server/vdb;->hW:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/oneplus/android/server/vdb;->PV:I

    const/4 v1, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/oneplus/android/server/vdb;->PV:I

    :cond_1
    sget-boolean p2, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to delaydown Motor by "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/vdb;->OV:I

    if-eq p1, v1, :cond_4

    :cond_3
    iget p1, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-eqz p1, :cond_6

    :cond_4
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "other2 is using motor, mIsFaceRecog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    return p0
.end method

.method private you(Landroid/os/IBinder;)Lcom/oneplus/android/server/vdb$zta;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->DV:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/vdb$zta;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb$zta;->zta(Lcom/oneplus/android/server/vdb$zta;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb$zta;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    return-object p1
.end method

.method private you(Lcom/oneplus/android/server/vdb$zta;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/oneplus/android/server/vdb$zta;->zta(Lcom/oneplus/android/server/vdb$zta;)Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gq()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->Mb(I)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->cW:Z

    return p1
.end method

.method private yq()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->hc(Ljava/lang/String;)Z

    move-result v0

    sget v1, Lcom/oneplus/android/server/vdb;->OW:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->Nb(I)Z

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->jq()V

    return-void
.end method

.method static synthetic zgw(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->nq()V

    return-void
.end method

.method private zq()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "isUpMotorOrNot"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz v0, :cond_4

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    const-string v2, "org.codeaurora.ims"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->OW:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Nb(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUpMotorOrNot upMotor, mUpMotorViewShowing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/vdb;->cW:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cW:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ia(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/vdb;->QV:I

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;ILandroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private zta(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayDownMotorBySystemApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/oneplus/android/server/vdb;->you(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/16 v1, 0xb

    iput v1, p3, Landroid/os/Message;->what:I

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    int-to-long p1, p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zta(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downMotorByAllScene :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAppMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mLatestMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpMotorManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string v0, "OpMotorManagerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/oneplus/android/server/vdb;->OV:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "screenoff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->sX:Z

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->WV:Z

    if-nez v3, :cond_9

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "systemui_faceunlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/oneplus/android/server/vdb;->OW:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/vdb;->OV:I

    if-eq p1, v1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/vdb;->PV:I

    if-eqz p1, :cond_5

    :cond_3
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz p1, :cond_4

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other2 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->PV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p2

    return v2

    :cond_5
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->kX:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->nX:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->oX:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/vdb;->OV:I

    monitor-exit p2

    return p0

    :cond_7
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz p1, :cond_8

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downMotorByAllScene sMotorUped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->kX:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->oq()I

    move-result p0

    monitor-exit p2

    return p0

    :cond_9
    :goto_2
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz p1, :cond_a

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other1 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/vdb;->PV:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit p2

    return v2

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb$tsu;)Lcom/oneplus/android/server/vdb$tsu;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->CV:Lcom/oneplus/android/server/vdb$tsu;

    return-object p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->ic(Ljava/lang/String;)V

    return-void
.end method

.method private zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "no"

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->HV:Ljava/lang/String;

    iget-object p3, p0, Lcom/oneplus/android/server/vdb;->MV:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->aW:Z

    return p1
.end method


# virtual methods
.method public cno(ILjava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeMotorCalibData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->tq()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->zta(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorCalibData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public getMotorState()I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/vdb;->iX:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->jX:Z

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->nX:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->oX:Z

    if-eqz p0, :cond_3

    const/4 p0, -0x5

    return p0

    :cond_3
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->kX:Z

    if-eqz p0, :cond_4

    const/16 p0, 0xa

    return p0

    :cond_4
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->lX:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/16 p0, -0xa

    return p0
.end method

.method public me()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    sget-boolean p0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz p0, :cond_0

    const-string p0, "OpMotorManagerService"

    const-string v0, "notifyKeyguardAppear"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public ne()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyKeyguardDisappear"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->bW:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->zq()V

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Ia(Z)V

    return-void
.end method

.method public notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while checking window status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyKeyguardState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->ne()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->me()V

    :goto_0
    return-void
.end method

.method public notifyMotorState(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v3, "motor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Iq()V

    :cond_2
    :pswitch_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Hq()V

    goto :goto_3

    :pswitch_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Jq()V

    goto :goto_3

    :pswitch_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Mq()V

    goto :goto_3

    :pswitch_4
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Nq()V

    goto :goto_3

    :pswitch_5
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Oq()V

    goto :goto_3

    :pswitch_6
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Lq()V

    goto :goto_3

    :pswitch_7
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Kq()V

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :cond_4
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyPowerOff()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->qq()V

    return-void
.end method

.method public notifyScreenState(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->oe()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->pe()V

    :cond_1
    :goto_0
    return-void
.end method

.method public oe()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Qt:Z

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->VV:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sW:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->tW:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->lX:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "screenoff"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->bW:Z

    return-void
.end method

.method public pe()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cR:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOn ScreenOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Qt:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->zq()V

    return-void
.end method

.method public systemReady()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->vV:Landroid/app/IActivityTaskManager;

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->tq()Lsis/you/you/you/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->yV:Lsis/you/you/you/zta/zta;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Lcom/oneplus/android/server/scene/GameModeObserver;->getInstance()Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->wV:Lcom/oneplus/android/server/scene/GameModeObserver;

    invoke-static {}, Lcom/oneplus/android/server/rtg;->be()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Pb(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->oq()I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->Yn:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpMotorManagerService"

    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->eW:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->fW:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->vq()V

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Aq()V

    return-void
.end method

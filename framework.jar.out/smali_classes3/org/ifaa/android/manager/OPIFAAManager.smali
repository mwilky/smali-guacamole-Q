.class public Lorg/ifaa/android/manager/OPIFAAManager;
.super Lorg/ifaa/android/manager/IFAAManagerV4;
.source "OPIFAAManager.java"


# static fields
.field private static final ACTIVITY_START_FAILED:I = -0x1

.field private static final ACTIVITY_START_SUCCESS:I = 0x0

.field private static final AUTH_TYPE_FACE:I = 0x4

.field private static final AUTH_TYPE_FINGERPRINT:I = 0x1

.field private static final BIND_IFAASER_SERVICE_TIMEOUT:I = 0xbb8

.field private static final BIOTypeFingerprint:I = 0x1

.field private static final BIOTypeFingerprintCustom:I = 0x10

.field private static final BIOTypeIris:I = 0x2

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_WIDTH:I = 0x438

.field private static FP_SENSOR_LOCATION_PARAM:Ljava/lang/String; = null

.field static final IFAA_SERVICE_CLASS:Ljava/lang/String; = "com.oneplus.ifaaservice.IFAAService"

.field static final IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field static final IFAA_SERVICE_PACKAGE:Ljava/lang/String; = "com.oneplus.ifaaservice"

.field private static final TAG:Ljava/lang/String; = "OPIFAAManager"

.field private static final hasCustomFingerPrinter:Z

.field private static mBIOType:I


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFPManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIFAAService:Lorg/ifaa/android/manager/IIFAAService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lorg/ifaa/android/manager/OPIFAAManager;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lorg/ifaa/android/manager/OPIFAAManager;->hasCustomFingerPrinter:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.ifaaservice"

    const-string v2, "com.oneplus.ifaaservice.IFAAService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/ifaa/android/manager/OPIFAAManager;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    const-string/jumbo v0, "{\'type\': 0, \'fullView\': {\'startX\': 452, \'startY\': 1970,\'width\': 174, \'height\': 174, \'navConflict\': true}}"

    sput-object v0, Lorg/ifaa/android/manager/OPIFAAManager;->FP_SENSOR_LOCATION_PARAM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV4;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mIFAAService:Lorg/ifaa/android/manager/IIFAAService;

    new-instance v0, Lorg/ifaa/android/manager/OPIFAAManager$1;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/OPIFAAManager$1;-><init>(Lorg/ifaa/android/manager/OPIFAAManager;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mContext:Landroid/content/Context;

    sput p2, Lorg/ifaa/android/manager/OPIFAAManager;->mBIOType:I

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0x438

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5050027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0x438

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x505002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v0

    div-int/lit16 v3, v3, 0x438

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v4, v0

    div-int/lit16 v4, v4, 0x438

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{\'type\': 0, \'fullView\': {\'startX\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \'startY\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \'width\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \'height\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \'navConflict\': true}}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/ifaa/android/manager/OPIFAAManager;->FP_SENSOR_LOCATION_PARAM:Ljava/lang/String;

    sget-boolean v5, Lorg/ifaa/android/manager/OPIFAAManager;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FP_SENSOR_LOCATION_PARAM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/ifaa/android/manager/OPIFAAManager;->FP_SENSOR_LOCATION_PARAM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "screenWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPIFAAManager"

    invoke-static {v6, v5}, Lorg/ifaa/android/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lorg/ifaa/android/manager/OPIFAAManager;->ensureIfaaService(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/ifaa/android/manager/OPIFAAManager;)Lorg/ifaa/android/manager/IIFAAService;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mIFAAService:Lorg/ifaa/android/manager/IIFAAService;

    return-object v0
.end method

.method static synthetic access$002(Lorg/ifaa/android/manager/OPIFAAManager;Lorg/ifaa/android/manager/IIFAAService;)Lorg/ifaa/android/manager/IIFAAService;
    .locals 0

    iput-object p1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mIFAAService:Lorg/ifaa/android/manager/IIFAAService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/ifaa/android/manager/OPIFAAManager;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private ensureFingerprintServiceAvailable()V
    .locals 3

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mFPManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    return-void
.end method

.method private ensureIfaaService(Landroid/content/Context;I)V
    .locals 6

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mIFAAService:Lorg/ifaa/android/manager/IIFAAService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/ifaa/android/manager/OPIFAAManager;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    if-lez p2, :cond_0

    const-string v1, "OPIFAAManager"

    const-string v2, "Waiting for IFAAService connected"

    invoke-static {v1, v2}, Lorg/ifaa/android/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mConnection:Landroid/content/ServiceConnection;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "OPIFAAManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception while binding IFAAService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/ifaa/android/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    :goto_2
    return-void
.end method

.method private getEnabledImpl(I)I
    .locals 8

    const/16 v0, 0x3e8

    const/16 v1, 0x3e9

    const/16 v2, 0x3ea

    const/16 v3, 0x3eb

    iget-object v4, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x3eb

    return v5

    :cond_0
    const/4 v5, 0x4

    const/16 v6, 0x3e8

    if-ne p1, v5, :cond_1

    return v6

    :cond_1
    const/4 v5, 0x1

    const/16 v7, 0x3e9

    if-ne p1, v5, :cond_4

    invoke-direct {p0}, Lorg/ifaa/android/manager/OPIFAAManager;->ensureFingerprintServiceAvailable()V

    iget-object v5, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mFPManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v5, :cond_2

    return v7

    :cond_2
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x3ea

    return v5

    :cond_3
    return v6

    :cond_4
    return v7
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device model is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPIFAAManager"

    invoke-static {v2, v1}, Lorg/ifaa/android/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ONEPLUS-A5000"

    if-eqz v0, :cond_8

    const-string v2, "A3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "5801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "5811"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "A5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "6859"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "7801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "A6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "7819"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "8801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "8811"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "SS882"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SS883"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SS885"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SS886"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "GM190"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "GM191"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "GM192"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "HD190"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "HD191"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "HD192"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    const-string v1, "ONEPLUS-GM1910"

    return-object v1

    :cond_5
    :goto_1
    const-string v1, "ONEPLUS-A6000"

    return-object v1

    :cond_6
    :goto_2
    return-object v1

    :cond_7
    :goto_3
    const-string v1, "ONEPLUS-A3000"

    return-object v1

    :cond_8
    return-object v1
.end method

.method public getEnabled(I)I
    .locals 3

    invoke-direct {p0, p1}, Lorg/ifaa/android/manager/OPIFAAManager;->getEnabledImpl(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnabled type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPIFAAManager"

    invoke-static {v2, v1}, Lorg/ifaa/android/manager/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getExtInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "org.ifaa.ext.key.GET_SENSOR_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/ifaa/android/manager/OPIFAAManager;->FP_SENSOR_LOCATION_PARAM:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "OPIFAAManager"

    const-string v1, "getExtInfo: Didn\'t request supported ext info"

    invoke-static {v0, v1}, Lorg/ifaa/android/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getIDList(I)[I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    new-array v0, v0, [I

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-direct {p0}, Lorg/ifaa/android/manager/OPIFAAManager;->ensureFingerprintServiceAvailable()V

    iget-object v1, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mFPManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_1

    new-array v0, v0, [I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    aput v3, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIDList i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPIFAAManager"

    invoke-static {v4, v3}, Lorg/ifaa/android/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-array v0, v0, [I

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lorg/ifaa/android/manager/OPIFAAManager;->hasCustomFingerPrinter:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bioType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPIFAAManager"

    invoke-static {v2, v1}, Lorg/ifaa/android/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getVersion()I
    .locals 2

    invoke-virtual {p0}, Lorg/ifaa/android/manager/OPIFAAManager;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ONEPLUS-GM1910"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "OPIFAAManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    const-string/jumbo v2, "processCmdV2"

    invoke-static {v1, v2, v0}, Lorg/ifaa/android/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    const/16 v2, 0xbb8

    invoke-direct {p0, p1, v2}, Lorg/ifaa/android/manager/OPIFAAManager;->ensureIfaaService(Landroid/content/Context;I)V

    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/OPIFAAManager;->mIFAAService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v2, p2}, Lorg/ifaa/android/manager/IIFAAService;->processCmdV2([B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while invoking processCmdV2 of remote IFAAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/ifaa/android/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public setExtInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 6

    const-string v0, "OPIFAAManager"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBIOManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/ifaa/android/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOS context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/ifaa/android/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_0
    return v1
.end method

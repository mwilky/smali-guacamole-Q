.class public Lcom/oneplus/android/wifi/OpWifiSar;
.super Ljava/lang/Object;
.source "OpWifiSar.java"


# static fields
.field private static final ALLOW_UC_PART_1:Ljava/lang/String; = "28:05:"

.field private static final ALLOW_UC_PART_3:Ljava/lang/String; = "000000000000080045000000000000000000000000000000"

.field private static final ALLOW_UC_PART_5:Ljava/lang/String; = "000000000000:fc0e0003c0"

.field private static final CALLING_UNDER_5GNR:I = -0x4

.field private static final CMD_DISPLAY_PSENSOR_SCREEN_OFF:I = 0x1

.field private static final COUNTRY_CODE_CHINA:Ljava/lang/String; = "CN"

.field private static final COUNTRY_CODE_FCC:[Ljava/lang/String;

.field private static final COUNTRY_CODE_INDIA:Ljava/lang/String; = "IN"

.field private static final DISABLE_SAR:I = 0x5

.field private static final DOMAIN_CE:I = 0x3

.field private static final DOMAIN_FCC:I = 0x1

.field private static final DOMAIN_INDIA:I = 0x2

.field private static final INVALID_DOMAIN_ID:I = -0x1

.field private static final IWPRIV_CMD:Ljava/lang/String; = "iwpriv"

.field private static final ONEPLUS5T_ID:I = 0x1

.field private static final ONEPLUS5_ID:I = 0x0

.field private static final ONEPLUS6_ID:I = 0x2

.field private static final ONEPLUS7PRO_CH_ID:I = 0xc

.field private static final ONEPLUS7PRO_EEA_ID:I = 0xd

.field private static final ONEPLUS7PRO_ID:I = 0xb

.field private static final ONEPLUS7PRO_TMO_ID:I = 0xe

.field private static final ONEPLUS7TPRO_ID:I = 0x17

.field private static final ONEPLUS7TTMO_ID:I = 0x15

.field private static final ONEPLUS7T_ID:I = 0x19

.field private static final ONEPLUS7_CH_ID:I = 0xf

.field private static final ONEPLUS7_EEA_ID:I = 0x10

.field private static final ONEPLUS7_ID:I = 0x11

.field private static final ONEPLUSEC101_ID:I = 0x4

.field private static final ONEPLUSP7819_ID:I = 0x3

.field private static final PRODUCT_NEED_SAR_CONTROL:[Ljava/lang/String;

.field private static final PRODUCT_NEED_WOW_PS_CONTROL:[Ljava/lang/String;

.field private static final SOFTAP_WITH_5GNR:I = -0x3

.field private static final SS8821_ID:I = 0x9

.field private static final SS8831_ID:I = 0xa

.field private static final SS8857_ID:I = 0x12

.field private static final SS8865_ID:I = 0x18

.field private static final SS8865_WIFI_CALLING_B1_B2_B3:I = -0x8

.field private static final SS8865_WIFI_CALLING_B4:I = -0x9

.field private static final SS9801_ID:I = 0x16

.field private static final SS9861_ID:I = 0x13

.field private static final SS9863_ID:I = 0x14

.field private static final TAG:Ljava/lang/String; = "OpWifiSar"

.field private static final VENDOR_CMD:Ljava/lang/String; = "vendor_cmd_tool"

.field private static final WIFI_CALLING_WITH_NO_SIM:I = -0x2

.field private static final WIFI_SAP_24G_POWER:I = -0x6

.field private static final WIFI_SAP_B1_POWER:I = -0x1

.field private static final WIFI_SAP_B4_POWER:I = -0x5

.field private static final WIFI_SAP_SPECIAL_BAND_POWER:I = -0x7


# instance fields
.field private mAllowUcPart2:Ljava/lang/String;

.field private mAllowUcPart4:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDomainId:I

.field private mHandler:Landroid/os/Handler;

.field private mIs5GNRWorking:Z

.field private mLastPatternCommand:Ljava/lang/String;

.field private mLteBand:I

.field private mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

.field private mPSensorPositive:Z

.field private mProductId:I

.field private mProductName:Ljava/lang/String;

.field private mSarControlNeed:Z

.field private mSarEnabled:Z

.field private mSarIface:Ljava/lang/String;

.field private mSoftApSarEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWowPsControlNeed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "OnePlus5"

    const-string v1, "OnePlus5T"

    const-string v2, "OnePlus6"

    const-string v3, "P7819"

    const-string v4, "EC101"

    const-string v5, "P8801"

    const-string v6, "P8811"

    const-string v7, "OnePlus6T"

    const-string v8, "OnePlus6TSingle"

    const-string v9, "SS8821"

    const-string v10, "SS8831"

    const-string v11, "OnePlus7Pro"

    const-string v12, "OnePlus7Pro_CH"

    const-string v13, "OnePlus7Pro_EEA"

    const-string v14, "OnePlus7ProTMO"

    const-string v15, "OnePlus7_CH"

    const-string v16, "OnePlus7_EEA"

    const-string v17, "OnePlus7"

    const-string v18, "SS8857"

    const-string v19, "SS9861TUS"

    const-string v20, "SS9863TUS"

    const-string v21, "OnePlus7TTMO"

    const-string v22, "SS9801"

    const-string v23, "OnePlus7TPro"

    const-string v24, "SS8865"

    const-string v25, "OnePlus7T"

    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/wifi/OpWifiSar;->PRODUCT_NEED_SAR_CONTROL:[Ljava/lang/String;

    const-string v0, "US"

    const-string v1, "CA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/wifi/OpWifiSar;->COUNTRY_CODE_FCC:[Ljava/lang/String;

    const-string v0, "OnePlus3"

    const-string v1, "OnePlus3T"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/wifi/OpWifiSar;->PRODUCT_NEED_WOW_PS_CONTROL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/android/wifi/IOpWifiSarCallback;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarControlNeed:Z

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mWowPsControlNeed:Z

    const-string/jumbo v2, "ro.product.name"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLteBand:I

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSoftApSarEnabled:Z

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mPSensorPositive:Z

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mIs5GNRWorking:Z

    iput v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    iput v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    new-instance v2, Lcom/oneplus/android/wifi/OpWifiSar$4;

    invoke-direct {v2, p0}, Lcom/oneplus/android/wifi/OpWifiSar$4;-><init>(Lcom/oneplus/android/wifi/OpWifiSar;)V

    iput-object v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLastPatternCommand:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart2:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart4:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->initSarAndWowPara()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0xa4

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "audio_call_device"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/wifi/OpWifiSar$1;

    iget-object v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/oneplus/android/wifi/OpWifiSar$1;-><init>(Lcom/oneplus/android/wifi/OpWifiSar;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_ctrl_psensor_positive"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/wifi/OpWifiSar$2;

    iget-object v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/oneplus/android/wifi/OpWifiSar$2;-><init>(Lcom/oneplus/android/wifi/OpWifiSar;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_sar_notify_band"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/wifi/OpWifiSar$3;

    iget-object v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/oneplus/android/wifi/OpWifiSar$3;-><init>(Lcom/oneplus/android/wifi/OpWifiSar;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/wifi/OpWifiSar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarControlNeed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/android/wifi/OpWifiSar;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/android/wifi/OpWifiSar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mPSensorPositive:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/android/wifi/OpWifiSar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mPSensorPositive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/android/wifi/OpWifiSar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/android/wifi/OpWifiSar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/android/wifi/OpWifiSar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/android/wifi/OpWifiSar;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLteBand:I

    return v0
.end method

.method private addWowPattern(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wowlAddPtrn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iwpriv"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/android/wifi/OpWifiSar;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wow Oem Command iwpriv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkAndSetAudioInstance()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private checkAndSetWifiMangerInstance()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    return-void
.end method

.method private clearWowPattern(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLastPatternCommand:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/android/wifi/OpWifiSar;->removeWowPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLastPatternCommand:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private configWowPattern(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wow connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ipv4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWifiSar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLastPatternCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/wifi/OpWifiSar;->clearWowPattern(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oneplus/android/wifi/OpWifiSar;->splitMacToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart2:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/android/wifi/OpWifiSar;->splitIPv4ToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart4:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart2:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart4:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "28:05:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000000000000080045000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAllowUcPart4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000000000000:fc0e0003c0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLastPatternCommand:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLastPatternCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/wifi/OpWifiSar;->addWowPattern(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Mac address or IPv4 address no right"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLastPatternCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/wifi/OpWifiSar;->clearWowPattern(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private currentUseNetworkType()I
    .locals 6

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->checkAndSetConnectivityInstance()V

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mCm:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    return v1
.end method

.method private getClientInterfaceName()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onGetClientInterfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientInterfaceName RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onGetCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCountryCode RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getDomainId(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_b

    const-string v2, "CN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    const-string v3, "IN"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/oneplus/android/wifi/OpWifiSar;->COUNTRY_CODE_FCC:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/oneplus/android/wifi/OpWifiSar;->COUNTRY_CODE_FCC:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x2

    goto :goto_7

    :pswitch_2
    const/4 v0, 0x0

    :goto_3
    sget-object v2, Lcom/oneplus/android/wifi/OpWifiSar;->COUNTRY_CODE_FCC:[Ljava/lang/String;

    array-length v5, v2

    if-ge v0, v5, :cond_5

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-eq v1, v4, :cond_a

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x2

    goto :goto_7

    :cond_6
    :pswitch_3
    const/4 v0, 0x0

    :goto_5
    sget-object v2, Lcom/oneplus/android/wifi/OpWifiSar;->COUNTRY_CODE_FCC:[Ljava/lang/String;

    array-length v5, v2

    if-ge v0, v5, :cond_8

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-eq v1, v4, :cond_a

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x2

    goto :goto_7

    :cond_9
    const/4 v1, 0x3

    :cond_a
    :goto_7
    return v1

    :cond_b
    :goto_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private getSoftApInterfaceName()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onGetSoftApInterfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoftApInterfaceName RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getWifiApFrequency()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onGetWifiApFrequency()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApFrequency RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method private getWifiApState()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onGetWifiApState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApState RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method private getWifiCurrentFrequency()I
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->checkAndSetWifiMangerInstance()V

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->currentUseNetworkType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current wifi connect frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v1
.end method

.method private getWifiState()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onGetWifiState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiState RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method private initSarAndWowPara()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->isNeedSarControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarControlNeed:Z

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->isNeedWowPsControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mWowPsControlNeed:Z

    return-void
.end method

.method private isNeedSarControl()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/oneplus/android/wifi/OpWifiSar;->PRODUCT_NEED_SAR_CONTROL:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductName:Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedSarControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isNeedWowPsControl()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/oneplus/android/wifi/OpWifiSar;->PRODUCT_NEED_WOW_PS_CONTROL:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductName:Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedWowPsControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSimPresent()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onIsSimPresent()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimPresent RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private removeWowPattern(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wowlDelPtrn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iwpriv"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/android/wifi/OpWifiSar;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wow Oem Command iwpriv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mOpWifiSarCallback:Lcom/oneplus/android/wifi/IOpWifiSarCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/android/wifi/IOpWifiSarCallback;->onRunOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runOemCommand RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpWifiSar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private runSarUserDefinedCommand(IILjava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --USER --PRODUCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --LTEBAND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAR Choose spec product = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LTEBAND = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "vendor_cmd_tool"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/android/wifi/OpWifiSar;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private runSarVendorCommand(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -f sar-vendor-cmd.xml -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --START_CMD --SAR_SET --ENABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --NUM_SPECS 0 --END_CMD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAR choose sets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "vendor_cmd_tool"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/android/wifi/OpWifiSar;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private splitIPv4ToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local ipv4 hex string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpWifiSar"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    return-object v1
.end method

.method private splitMacToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local mac hex string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpWifiSar"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    return-object v1
.end method

.method private wlanIfaceSelect()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiState()I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getSoftApInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public doWowPsControl(ZLandroid/net/wifi/WifiInfo;Landroid/net/LinkProperties;)V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mWowPsControlNeed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi mac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ipv4Address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ipv6Addresses = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpWifiSar"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/oneplus/android/wifi/OpWifiSar;->configWowPattern(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public enableSarExt(ZZ)V
    .locals 13

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarControlNeed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getPersistedAirplaneModeOn()Z

    move-result v0

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->isSimPresent()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sar enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " airplanmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSimCardPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iput-boolean v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->checkAndSetAudioInstance()V

    iget-object v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    iget v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    const-string v6, "modem/wifi calling product id = "

    const-string v7, "Disable sar "

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_f

    if-eq v5, v11, :cond_f

    if-eq v5, v10, :cond_f

    if-eq v5, v9, :cond_f

    const/4 v12, 0x4

    if-eq v5, v12, :cond_f

    const-string v5, "it will use the new project for the sar"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSoftApSarEnabled:Z

    if-eqz v5, :cond_3

    const-string v4, "Already control sar power for softap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v5, -0x1

    if-eqz p1, :cond_e

    if-eq v2, v10, :cond_5

    if-ne v2, v9, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->currentUseNetworkType()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->currentUseNetworkType()I

    move-result v7

    if-eq v7, v11, :cond_5

    :cond_4
    if-eqz p2, :cond_16

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mPSensorPositive:Z

    if-nez v6, :cond_6

    if-eqz p2, :cond_16

    :cond_6
    iget-boolean v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarVendorCommand(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    :cond_7
    if-nez v0, :cond_a

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "wifi_sar_notify_band"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLteBand:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLteBand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLteBand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    iget v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    iget-object v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mIs5GNRWorking:Z

    if-eqz v6, :cond_9

    const/4 v6, -0x4

    goto :goto_0

    :cond_9
    iget v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLteBand:I

    :goto_0
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iput-boolean v11, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    goto/16 :goto_4

    :cond_a
    :goto_1
    iget v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    const/16 v5, 0x19

    if-eq v4, v5, :cond_c

    const/16 v5, 0x18

    if-ne v4, v5, :cond_b

    goto :goto_2

    :cond_b
    iget v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    iget-object v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    const/4 v6, -0x2

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iput-boolean v11, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    goto/16 :goto_4

    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiCurrentFrequency()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi current frequency = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1563

    if-lt v4, v3, :cond_d

    const/16 v3, 0x16c1

    if-gt v4, v3, :cond_d

    iget v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    iget v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    iget-object v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    const/16 v7, -0x9

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iput-boolean v11, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    goto/16 :goto_4

    :cond_d
    iget v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    iget v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    iget-object v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    const/4 v7, -0x8

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iput-boolean v11, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    goto/16 :goto_4

    :cond_e
    iget-boolean v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    if-eqz v6, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarVendorCommand(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iput v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLteBand:I

    iput-boolean v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    invoke-virtual {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->setWifiDefaultPower()Z

    goto/16 :goto_4

    :cond_f
    if-eqz p1, :cond_15

    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    iget-boolean v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    if-eqz v4, :cond_10

    goto :goto_3

    :cond_10
    if-eq v2, v10, :cond_12

    if-ne v2, v9, :cond_11

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->currentUseNetworkType()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->currentUseNetworkType()I

    move-result v4

    if-eq v4, v11, :cond_12

    :cond_11
    if-eqz p2, :cond_16

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mPSensorPositive:Z

    if-nez v3, :cond_13

    if-eqz p2, :cond_16

    :cond_13
    iget v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    iget v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    iget-object v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    iget v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mLteBand:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iput-boolean v11, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    goto :goto_4

    :cond_14
    :goto_3
    return-void

    :cond_15
    iget-boolean v5, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    if-eqz v5, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarVendorCommand(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iput-boolean v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    :cond_16
    :goto_4
    return-void
.end method

.method public set5GNRStatus(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mIs5GNRWorking:Z

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarControlNeed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mPSensorPositive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIs5GNRWorking changed while calling: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mIs5GNRWorking:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpWifiSar"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/wifi/OpWifiSar;->enableSarExt(ZZ)V

    :cond_1
    return-void
.end method

.method public setWifiDefaultPower()Z
    .locals 15

    iget-boolean v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarControlNeed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/wifi/OpWifiSar;->getDomainId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->wlanIfaceSelect()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiSar"

    const/4 v4, -0x1

    if-eq v0, v4, :cond_c

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->isSimPresent()Z

    move-result v7

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getPersistedAirplaneModeOn()Z

    move-result v8

    iget v9, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    const/16 v10, 0x1478

    const/4 v11, 0x5

    const/16 v12, 0x143c

    const/16 v13, 0xd

    const/4 v14, 0x1

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    iget-boolean v9, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-direct {p0, v11, v9}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarVendorCommand(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSoftApSarEnabled:Z

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v9, "wifi_sar_notify_band"

    invoke-static {v1, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApState()I

    move-result v1

    if-ne v1, v13, :cond_b

    if-eqz v7, :cond_5

    if-nez v8, :cond_5

    const/16 v1, 0x46

    if-eq v5, v1, :cond_3

    const/16 v1, 0x51

    if-eq v5, v1, :cond_3

    const/16 v1, 0x53

    if-eq v5, v1, :cond_3

    const/16 v1, 0x54

    if-eq v5, v1, :cond_3

    const/16 v1, 0x79

    if-eq v5, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v5, v1, :cond_3

    const/16 v1, 0x7c

    if-eq v5, v1, :cond_3

    const/16 v1, 0x7e

    if-eq v5, v1, :cond_3

    const/16 v1, 0x83

    if-eq v5, v1, :cond_3

    const/16 v1, 0x84

    if-eq v5, v1, :cond_3

    const/16 v1, 0x88

    if-eq v5, v1, :cond_3

    const/16 v1, 0x90

    if-eq v5, v1, :cond_3

    const/16 v1, 0x91

    if-eq v5, v1, :cond_3

    const/16 v1, 0x95

    if-eq v5, v1, :cond_3

    const/16 v1, 0x9d

    if-eq v5, v1, :cond_3

    if-eq v5, v1, :cond_3

    const/16 v1, 0xa0

    if-eq v5, v1, :cond_3

    const/16 v1, 0xa8

    if-eq v5, v1, :cond_3

    const/16 v1, 0xb2

    if-eq v5, v1, :cond_3

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_5

    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mIs5GNRWorking:Z

    if-eqz v1, :cond_4

    const/4 v1, -0x3

    goto :goto_0

    :cond_4
    const/4 v1, -0x7

    :goto_0
    move v6, v1

    iget v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    invoke-direct {p0, v1, v0, v2, v6}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v14, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSoftApSarEnabled:Z

    iput-boolean v14, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    goto/16 :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mIs5GNRWorking:Z

    if-eqz v1, :cond_6

    const/4 v1, -0x3

    move v6, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    if-lt v1, v12, :cond_7

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    if-gt v1, v10, :cond_7

    const/4 v1, -0x1

    move v6, v1

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    const/16 v4, 0x1671

    if-lt v1, v4, :cond_8

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    const/16 v4, 0x16c1

    if-gt v1, v4, :cond_8

    const/4 v1, -0x5

    move v6, v1

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    const/16 v4, 0x96c

    if-lt v1, v4, :cond_9

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    const/16 v4, 0x9b4

    if-gt v1, v4, :cond_9

    const/4 v1, -0x6

    move v6, v1

    :cond_9
    :goto_1
    if-eqz v6, :cond_b

    iget v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    invoke-direct {p0, v1, v0, v2, v6}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v14, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSoftApSarEnabled:Z

    iput-boolean v14, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    goto :goto_2

    :pswitch_2
    iget-boolean v9, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    if-eqz v9, :cond_a

    invoke-direct {p0, v11, v9}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarVendorCommand(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSoftApSarEnabled:Z

    iput-boolean v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    :cond_a
    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApState()I

    move-result v1

    if-ne v1, v13, :cond_b

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    if-lt v1, v12, :cond_b

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpWifiSar;->getWifiApFrequency()I

    move-result v1

    if-gt v1, v10, :cond_b

    iget v1, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/oneplus/android/wifi/OpWifiSar;->runSarUserDefinedCommand(IILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v14, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSoftApSarEnabled:Z

    iput-boolean v14, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarEnabled:Z

    :cond_b
    :goto_2
    iput-object v2, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mSarIface:Ljava/lang/String;

    iput v0, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Product id:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mProductId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  Domain id:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/wifi/OpWifiSar;->mDomainId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_c
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preDomainId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " preSarIface = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

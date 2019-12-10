.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field private static final LTE_RSRP_THRESHOLDS_NUM:I = 0x4

.field private static final MEASUREMENT_TYPE_RSCP:Ljava/lang/String; = "rscp"

.field public static final NT_CDMA:I = 0x5

.field public static final NT_EVDO:I = 0x6

.field public static final NT_GSM:I = 0x1

.field public static final NT_LTE:I = 0x3

.field public static final NT_TDS:I = 0x2

.field public static final NT_UNKNOWN:I = 0x0

.field public static final NT_WCDMA:I = 0x4

.field public static final NUM_SIGNAL_STRENGTH_BINS:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static OEM_SMOOTH_LOWEST_LVL:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation
.end field

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation
.end field

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation
.end field

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation
.end field

.field public static final SIGNAL_STRENGTH_PERFECT:I = 0x5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation
.end field

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation
.end field

.field public static final USA_SPRINT:I = 0x2

.field public static final USA_TMO:I = 0x1

.field public static final USA_VERIZON:I = 0x3

.field private static final WCDMA_RSCP_THRESHOLDS_NUM:I = 0x4

.field public static mOperatorDefine:I


# instance fields
.field mCdma:Landroid/telephony/CellSignalStrengthCdma;

.field mGsm:Landroid/telephony/CellSignalStrengthGsm;

.field mLte:Landroid/telephony/CellSignalStrengthLte;

.field mNr:Landroid/telephony/CellSignalStrengthNr;

.field public mSmooth_lvl_with_data_rat:I

.field public mSmooth_lvl_with_voice_rat:I

.field mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

.field mWcdma:Landroid/telephony/CellSignalStrengthWcdma;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string/jumbo v1, "persist.radio.vendor.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    new-array v1, v2, [I

    const/16 v3, 0x5a

    aput v3, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string/jumbo v3, "ro.boot.opcarrier"

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "tmo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    new-array v1, v2, [I

    const/16 v2, 0x97

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    :cond_3
    :goto_2
    sput v0, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    sget v0, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->isNACarrier(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_3

    :cond_4
    const/4 v0, 0x5

    :goto_3
    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const-string/jumbo v0, "none"

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "moderate"

    const-string/jumbo v3, "good"

    const-string/jumbo v4, "great"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string/jumbo v0, "persist.sys.oem_smooth"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    new-instance v1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v2, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v3}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v4, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 7

    new-instance v1, Landroid/telephony/CellSignalStrengthCdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v2, p1, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-direct {v1, v0, v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)V

    new-instance v2, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v0, p1, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v2, v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/hardware/radio/V1_0/GsmSignalStrength;)V

    new-instance v3, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v3}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v4, Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_0/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-direct {v4, v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;)V

    new-instance v5, Landroid/telephony/CellSignalStrengthLte;

    iget-object v0, p1, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-direct {v5, v0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/hardware/radio/V1_0/LteSignalStrength;)V

    new-instance v6, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 7

    new-instance v1, Landroid/telephony/CellSignalStrengthCdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v2, p1, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-direct {v1, v0, v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)V

    new-instance v2, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v0, p1, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v2, v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/hardware/radio/V1_0/GsmSignalStrength;)V

    new-instance v3, Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-direct {v3, v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/hardware/radio/V1_2/WcdmaSignalStrength;)V

    new-instance v4, Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-direct {v4, v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;)V

    new-instance v5, Landroid/telephony/CellSignalStrengthLte;

    iget-object v0, p1, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-direct {v5, v0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/hardware/radio/V1_0/LteSignalStrength;)V

    new-instance v6, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_4/SignalStrength;)V
    .locals 7

    new-instance v1, Landroid/telephony/CellSignalStrengthCdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_4/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v2, p1, Landroid/hardware/radio/V1_4/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-direct {v1, v0, v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)V

    new-instance v2, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v0, p1, Landroid/hardware/radio/V1_4/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v2, v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/hardware/radio/V1_0/GsmSignalStrength;)V

    new-instance v3, Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_4/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-direct {v3, v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/hardware/radio/V1_2/WcdmaSignalStrength;)V

    new-instance v4, Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v0, p1, Landroid/hardware/radio/V1_4/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-direct {v4, v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;)V

    new-instance v5, Landroid/telephony/CellSignalStrengthLte;

    iget-object v0, p1, Landroid/hardware/radio/V1_4/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-direct {v5, v0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/hardware/radio/V1_0/LteSignalStrength;)V

    new-instance v6, Landroid/telephony/CellSignalStrengthNr;

    iget-object v0, p1, Landroid/hardware/radio/V1_4/SignalStrength;->nr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-direct {v6, v0}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/hardware/radio/V1_4/NrSignalStrength;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size of signalstrength parcel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_0
    const-class v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    const-class v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    const-class v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    const-class v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    iput-object p1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    iput-object p2, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    iput-object p3, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    iput-object p4, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object p5, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    iput-object p6, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private getPrimary()Landroid/telephony/CellSignalStrength;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    return-object v0

    :cond_5
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Cdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    const-string v0, "Gsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    const-string v0, "Wcdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    const-string v0, "Tdscdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    const-string v0, "Lte"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    const-string v0, "Nr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    const-string v0, "OEMLevel_0"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    const-string v0, "OEMLevel_1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/telephony/CellSignalStrengthTdscdma;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    iget v0, p1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    iget-object v3, v0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    iget-object v3, v0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthGsm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v3, v0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v3, v0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v3, v0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    iget-object v3, v0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    const-string v1, "Cdma"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    const-string v1, "Gsm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    const-string v1, "Wcdma"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    const-string v1, "Tdscdma"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    const-string v1, "Lte"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    const-string v1, "Nr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    const-string v1, "OEMLevel_0"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    const-string v1, "OEMLevel_1"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getAsuLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public getCdmaAsuLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public getCdmaDbm()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v0

    return v0
.end method

.method public getCdmaLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v0

    return v0
.end method

.method public getCellSignalStrengths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellSignalStrength;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/telephony/CellSignalStrength;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/telephony/CellSignalStrength;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public getDbm()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v0

    return v0
.end method

.method public getEvdoAsuLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoAsuLevel()I

    move-result v0

    return v0
.end method

.method public getEvdoDbm()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v0

    return v0
.end method

.method public getEvdoLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v0

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v0

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getBitErrorRate()I

    move-result v0

    return v0
.end method

.method public getGsmDbm()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v0

    return v0
.end method

.method public getGsmLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 4

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    if-ltz v0, :cond_5

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_5

    :cond_0
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-static {v1}, Landroid/telephony/OpSignalStrength;->isNACarrier(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLevel: level mapping = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_3
    if-le v0, v2, :cond_4

    const/4 v0, 0x5

    :cond_4
    return v0

    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getLteAsuLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public getLteCqi()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getCqi()I

    move-result v0

    return v0
.end method

.method public getLteDbm()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    return v0
.end method

.method public getLteLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v0

    return v0
.end method

.method public getLteRsrp()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    return v0
.end method

.method public getLteRsrq()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v0

    return v0
.end method

.method public getLteRssnr()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v0

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result v0

    return v0
.end method

.method public getOEMSmoothSignalLevel(I)I
    .locals 8

    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v0

    :cond_0
    if-lez v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_0
    move v0, v1

    goto/16 :goto_7

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthTdscdma;->getLevel()I

    move-result v0

    :cond_3
    sget v3, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v3, v1, :cond_17

    if-le v0, v1, :cond_4

    move v2, v0

    :cond_4
    move v0, v2

    goto/16 :goto_7

    :cond_5
    const/4 v3, 0x3

    const-string v4, ", mOperatorDefine="

    const-string v5, ", OpLevel="

    if-ne p1, v3, :cond_9

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-static {v2}, Landroid/telephony/OpSignalStrength;->isNACarrier(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getOpLevel()I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getOEMSmoothSignalLevel Lte rat Level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getOpLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_7
    if-lez v0, :cond_8

    move v2, v0

    goto :goto_2

    :cond_8
    sget v2, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_2
    move v0, v2

    if-nez v0, :cond_17

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getOEMSmoothSignalLevel(I)I

    move-result v1

    return v1

    :cond_9
    const/4 v6, 0x4

    if-ne p1, v6, :cond_f

    sget-boolean v6, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "getOEMSmoothSignalLevel()"

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v6

    if-eqz v6, :cond_c

    sget v6, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-static {v6}, Landroid/telephony/OpSignalStrength;->isNACarrier(I)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthWcdma;->getOpLevel()I

    move-result v0

    goto :goto_3

    :cond_b
    iget-object v6, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v0

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getOEMSmoothSignalLevel Wcdma rat Level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getOpLevel()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_c
    sget v4, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v4, v1, :cond_17

    if-ge v0, v2, :cond_d

    invoke-virtual {p0, v3}, Landroid/telephony/SignalStrength;->getOEMSmoothSignalLevel(I)I

    move-result v0

    :cond_d
    if-le v0, v1, :cond_e

    move v2, v0

    :cond_e
    move v0, v2

    goto/16 :goto_7

    :cond_f
    const/4 v1, 0x5

    if-ne p1, v1, :cond_13

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_11

    sget v1, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-static {v1}, Landroid/telephony/OpSignalStrength;->isNACarrier(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getOpLevel()I

    move-result v0

    goto :goto_4

    :cond_10
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOEMSmoothSignalLevel Cdma rat Level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getOpLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_11
    if-lez v0, :cond_12

    move v1, v0

    goto :goto_5

    :cond_12
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_5
    move v0, v1

    goto :goto_7

    :cond_13
    const/4 v1, 0x6

    if-ne p1, v1, :cond_16

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v0

    :cond_14
    if-lez v0, :cond_15

    move v1, v0

    goto :goto_6

    :cond_15
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_6
    move v0, v1

    goto :goto_7

    :cond_16
    if-nez p1, :cond_17

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    :cond_17
    :goto_7
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get OEM Smooth Level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_18
    return v0
.end method

.method public getSmoothSignalLevel()I
    .locals 2

    sget v0, Landroid/telephony/SignalStrength;->mOperatorDefine:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TMO support, only getLevel"

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lte rat in TMO, return mLte.getOpLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getOpLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getOpLevel()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wcdma rat in TMO, return mWcdma.getOpLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getOpLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getOpLevel()I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cdma rat in TMO, return mCdma.getOpLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getOpLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getOpLevel()I

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    return v0

    :cond_4
    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    if-le v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getSmoothSignalLevelAll()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public getTdScdmaDbm()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result v0

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getLevel()I

    move-result v0

    return v0
.end method

.method public getWcdmaAsuLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public getWcdmaDbm()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v0

    return v0
.end method

.method public getWcdmaLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v0

    return v0
.end method

.method public getWcdmaRscp()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGsm()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    instance-of v0, v0, Landroid/telephony/CellSignalStrengthCdma;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCdma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mWcdma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mTdscdma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mLte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mNr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",voice level ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",data level ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isGsm ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthNr;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

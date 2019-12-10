.class public abstract Landroid/telephony/CellSignalStrength;
.super Ljava/lang/Object;
.source "CellSignalStrength.java"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_BINS:I

.field protected static final NUM_SIGNAL_STRENGTH_THRESHOLDS:I

.field public static OEM_SMOOTH_LOWEST_LVL:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_PERFECT:I = 0x5

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field protected static final USA_SPRINT:I = 0x2

.field protected static final USA_TMO:I = 0x1

.field protected static final USA_VERIZON:I = 0x3

.field protected static mOperatorDefine:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string/jumbo v3, "ro.boot.opcarrier"

    if-eqz v1, :cond_0

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "tmo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v0, [I

    const/16 v4, 0x97

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sprint"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sput v1, Landroid/telephony/CellSignalStrength;->mOperatorDefine:I

    sget v1, Landroid/telephony/CellSignalStrength;->mOperatorDefine:I

    invoke-static {v1}, Landroid/telephony/OpSignalStrength;->isNACarrier(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    :goto_1
    sput v1, Landroid/telephony/CellSignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const-string/jumbo v1, "persist.sys.oem_smooth"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput v1, Landroid/telephony/CellSignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    sget v1, Landroid/telephony/CellSignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    sub-int/2addr v1, v0

    sput v1, Landroid/telephony/CellSignalStrength;->NUM_SIGNAL_STRENGTH_THRESHOLDS:I

    const-string/jumbo v0, "none"

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "moderate"

    const-string/jumbo v3, "good"

    const-string/jumbo v4, "great"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final getAsuFromRscpDbm(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/16 v0, 0xff

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x78

    return v0
.end method

.method protected static final getAsuFromRssiDbm(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/16 v0, 0x63

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x71

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected static final getEcNoDbFromAsu(I)I
    .locals 1

    const/16 v0, 0x31

    if-gt p0, v0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x18

    return v0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method protected static final getRscpDbmFromAsu(I)I
    .locals 1

    const/16 v0, 0x60

    if-gt p0, v0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x78

    return v0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method protected static final getRssiDbmFromAsu(I)I
    .locals 1

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method protected static final inRangeOrUnavailable(III)I
    .locals 1

    if-lt p0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method protected static final inRangeOrUnavailable(IIII)I
    .locals 1

    if-lt p0, p1, :cond_0

    if-le p0, p2, :cond_1

    :cond_0
    if-eq p0, p3, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    return p0
.end method


# virtual methods
.method public abstract copy()Landroid/telephony/CellSignalStrength;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAsuLevel()I
.end method

.method public abstract getDbm()I
.end method

.method public abstract getLevel()I
.end method

.method public abstract hashCode()I
.end method

.method public abstract isValid()Z
.end method

.method public abstract setDefaultValues()V
.end method

.method public abstract updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
.end method

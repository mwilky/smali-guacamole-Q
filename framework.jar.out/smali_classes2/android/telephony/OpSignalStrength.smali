.class public Landroid/telephony/OpSignalStrength;
.super Ljava/lang/Object;
.source "OpSignalStrength.java"


# static fields
.field protected static final CDMA_DBM_MAX:I = 0x0

.field private static final CDMA_DBM_SMOOTH_THRESHOLDS:[I

.field private static final CDMA_DBM_UST_THRESHOLDS:[I

.field protected static final CDMA_ECIO_MAX:I = 0x0

.field private static final CDMA_ECIO_SMOOTH_THRESHOLDS:[I

.field private static final CDMA_ECIO_UST_THRESHOLDS:[I

.field protected static final EVDO_DBM_MAX:I = 0x0

.field private static final EVDO_DBM_SMOOTH_THRESHOLDS:[I

.field private static final EVDO_DBM_UST_THRESHOLDS:[I

.field protected static final EVDO_ECIO_MAX:I = 0x0

.field private static final EVDO_ECIO_UST_THRESHOLDS:[I

.field private static final EVDO_SNR_SMOOTH_THRESHOLDS:[I

.field protected static final GSM_RSSI_MAX:I = -0x33

.field protected static final GSM_RSSI_MIN:I = -0x71

.field private static final GSM_SMOOTH_THRESHOLDS:[I

.field private static final LOG_TAG:Ljava/lang/String; = "OpSignalStrength"

.field private static final LTE_SMOOTH_THRESHOLDS:[I

.field private static final LTE_USS_B25_THRESHOLDS:[I

.field private static final LTE_USS_B26_THRESHOLDS:[I

.field private static final LTE_USS_B41_THRESHOLDS:[I

.field private static final LTE_USS_DEF_THRESHOLDS:[I

.field private static LTE_USS_THRESHOLDS:[I = null

.field private static final LTE_UST_THRESHOLDS:[I

.field protected static final TDSCDMA_RSCP_MAX:I = -0x18

.field protected static final TDSCDMA_RSCP_MIN:I = -0x78

.field private static final TDSCDMA_SMOOTH_THRESHOLDS:[I

.field protected static final USA_SPRINT:I = 0x2

.field protected static final USA_TMO:I = 0x1

.field protected static final USA_VERIZON:I = 0x3

.field protected static final WCDMA_RSCP_MAX:I = -0x18

.field protected static final WCDMA_RSCP_MIN:I = -0x78

.field private static final WCDMA_SMOOTH_THRESHOLDS:[I

.field private static mOperatorDefine:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/OpSignalStrength;->CDMA_DBM_UST_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/telephony/OpSignalStrength;->CDMA_ECIO_UST_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/telephony/OpSignalStrength;->CDMA_DBM_SMOOTH_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/telephony/OpSignalStrength;->CDMA_ECIO_SMOOTH_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroid/telephony/OpSignalStrength;->EVDO_DBM_UST_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Landroid/telephony/OpSignalStrength;->EVDO_ECIO_UST_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Landroid/telephony/OpSignalStrength;->EVDO_DBM_SMOOTH_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Landroid/telephony/OpSignalStrength;->EVDO_SNR_SMOOTH_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Landroid/telephony/OpSignalStrength;->GSM_SMOOTH_THRESHOLDS:[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    sput-object v2, Landroid/telephony/OpSignalStrength;->WCDMA_SMOOTH_THRESHOLDS:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    sput-object v1, Landroid/telephony/OpSignalStrength;->TDSCDMA_SMOOTH_THRESHOLDS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Landroid/telephony/OpSignalStrength;->LTE_SMOOTH_THRESHOLDS:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_c

    sput-object v1, Landroid/telephony/OpSignalStrength;->LTE_UST_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    sput-object v1, Landroid/telephony/OpSignalStrength;->LTE_USS_DEF_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    sput-object v1, Landroid/telephony/OpSignalStrength;->LTE_USS_B25_THRESHOLDS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_f

    sput-object v1, Landroid/telephony/OpSignalStrength;->LTE_USS_B26_THRESHOLDS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_B41_THRESHOLDS:[I

    sget-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_DEF_THRESHOLDS:[I

    sput-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_THRESHOLDS:[I

    const/4 v0, -0x1

    sput v0, Landroid/telephony/OpSignalStrength;->mOperatorDefine:I

    return-void

    :array_0
    .array-data 4
        -0x69
        -0x5f
        -0x55
        -0x4b
    .end array-data

    :array_1
    .array-data 4
        -0x96
        -0x8c
        -0x78
        -0x5a
    .end array-data

    :array_2
    .array-data 4
        -0x6d
        -0x6a
        -0x64
        -0x5a
    .end array-data

    :array_3
    .array-data 4
        -0x96
        -0x82
        -0x6e
        -0x5a
    .end array-data

    :array_4
    .array-data 4
        -0x69
        -0x5f
        -0x55
        -0x4b
    .end array-data

    :array_5
    .array-data 4
        -0x96
        -0x8c
        -0x78
        -0x5a
    .end array-data

    :array_6
    .array-data 4
        -0x6e
        -0x6a
        -0x64
        -0x5a
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x3
        0x5
        0x7
    .end array-data

    :array_8
    .array-data 4
        -0x69
        -0x63
        -0x5d
        -0x57
    .end array-data

    :array_9
    .array-data 4
        -0x63
        -0x61
        -0x5b
    .end array-data

    :array_a
    .array-data 4
        -0x63
        -0x61
        -0x5b
    .end array-data

    :array_b
    .array-data 4
        -0x78
        -0x71
        -0x69
        -0x61
    .end array-data

    :array_c
    .array-data 4
        -0x7d
        -0x78
        -0x73
        -0x6e
        -0x64
    .end array-data

    :array_d
    .array-data 4
        -0x8c
        -0x79
        -0x73
        -0x6d
        -0x65
    .end array-data

    :array_e
    .array-data 4
        -0x8c
        -0x79
        -0x73
        -0x6d
        -0x63
    .end array-data

    :array_f
    .array-data 4
        -0x8c
        -0x75
        -0x6d
        -0x63
        -0x5a
    .end array-data

    :array_10
    .array-data 4
        -0x8c
        -0x7d
        -0x74
        -0x6e
        -0x63
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static defineNumberToString(I)Ljava/lang/String;
    .locals 2

    const-string v0, "<null string>"

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Verizon"

    goto :goto_0

    :cond_1
    const-string v0, "Sprint"

    goto :goto_0

    :cond_2
    const-string v0, "T-Mobile"

    nop

    :goto_0
    return-object v0
.end method

.method public static getCdmaLevel(III)I
    .locals 10

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    sget v2, Landroid/telephony/OpSignalStrength;->mOperatorDefine:I

    if-eq p2, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaLevel: operatorDefine="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/telephony/OpSignalStrength;->defineNumberToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    sput p2, Landroid/telephony/OpSignalStrength;->mOperatorDefine:I

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq p2, v7, :cond_f

    sget v8, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v8, v6, :cond_e

    if-eq p0, v1, :cond_7

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v8, Landroid/telephony/OpSignalStrength;->CDMA_DBM_SMOOTH_THRESHOLDS:[I

    aget v9, v8, v5

    if-lt p0, v9, :cond_3

    const/4 v2, 0x5

    goto :goto_1

    :cond_3
    aget v9, v8, v7

    if-lt p0, v9, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    aget v9, v8, v6

    if-lt p0, v9, :cond_5

    const/4 v2, 0x3

    goto :goto_1

    :cond_5
    aget v8, v8, v0

    if-lt p0, v8, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eq p1, v1, :cond_d

    if-ltz p1, :cond_8

    goto :goto_2

    :cond_8
    sget-object v1, Landroid/telephony/OpSignalStrength;->CDMA_ECIO_SMOOTH_THRESHOLDS:[I

    aget v5, v1, v5

    if-lt p1, v5, :cond_9

    const/4 v3, 0x5

    goto/16 :goto_6

    :cond_9
    aget v5, v1, v7

    if-lt p1, v5, :cond_a

    const/4 v3, 0x4

    goto/16 :goto_6

    :cond_a
    aget v5, v1, v6

    if-lt p1, v5, :cond_b

    const/4 v3, 0x3

    goto/16 :goto_6

    :cond_b
    aget v0, v1, v0

    if-lt p1, v0, :cond_c

    const/4 v3, 0x2

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    :goto_2
    const/4 v3, 0x0

    goto :goto_6

    :cond_e
    const-string v0, "getCdmaLevel: do nothing"

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    if-eq p0, v1, :cond_15

    if-ltz p0, :cond_10

    goto :goto_3

    :cond_10
    sget-object v8, Landroid/telephony/OpSignalStrength;->CDMA_DBM_UST_THRESHOLDS:[I

    aget v9, v8, v5

    if-lt p0, v9, :cond_11

    const/4 v2, 0x5

    goto :goto_4

    :cond_11
    aget v9, v8, v7

    if-lt p0, v9, :cond_12

    const/4 v2, 0x4

    goto :goto_4

    :cond_12
    aget v9, v8, v6

    if-lt p0, v9, :cond_13

    const/4 v2, 0x3

    goto :goto_4

    :cond_13
    aget v8, v8, v0

    if-lt p0, v8, :cond_14

    const/4 v2, 0x2

    goto :goto_4

    :cond_14
    const/4 v2, 0x1

    goto :goto_4

    :cond_15
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eq p1, v1, :cond_1b

    if-ltz p1, :cond_16

    goto :goto_5

    :cond_16
    sget-object v1, Landroid/telephony/OpSignalStrength;->CDMA_ECIO_UST_THRESHOLDS:[I

    aget v5, v1, v5

    if-lt p1, v5, :cond_17

    const/4 v3, 0x5

    goto :goto_6

    :cond_17
    aget v5, v1, v7

    if-lt p1, v5, :cond_18

    const/4 v3, 0x4

    goto :goto_6

    :cond_18
    aget v5, v1, v6

    if-lt p1, v5, :cond_19

    const/4 v3, 0x3

    goto :goto_6

    :cond_19
    aget v0, v1, v0

    if-lt p1, v0, :cond_1a

    const/4 v3, 0x2

    goto :goto_6

    :cond_1a
    const/4 v3, 0x1

    goto :goto_6

    :cond_1b
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-ge v2, v3, :cond_1c

    move v0, v2

    goto :goto_7

    :cond_1c
    move v0, v3

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaLevel: cdmaDbm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", levelDbm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cdmaEcio="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", levelEcio="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", level="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    return v0
.end method

.method public static getEvdoLevel(IIII)I
    .locals 11

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    sget v2, Landroid/telephony/OpSignalStrength;->mOperatorDefine:I

    if-eq p3, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEvdoLevel: operatorDefine="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/telephony/OpSignalStrength;->defineNumberToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    sput p3, Landroid/telephony/OpSignalStrength;->mOperatorDefine:I

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p3, v7, :cond_f

    sget v9, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v9, v8, :cond_e

    if-eq p0, v1, :cond_7

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v9, Landroid/telephony/OpSignalStrength;->EVDO_DBM_SMOOTH_THRESHOLDS:[I

    aget v10, v9, v6

    if-lt p0, v10, :cond_3

    const/4 v2, 0x5

    goto :goto_1

    :cond_3
    aget v10, v9, v7

    if-lt p0, v10, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    aget v10, v9, v8

    if-lt p0, v10, :cond_5

    const/4 v2, 0x3

    goto :goto_1

    :cond_5
    aget v9, v9, v0

    if-lt p0, v9, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ne p1, v1, :cond_8

    const/4 v0, 0x0

    move v3, v0

    goto :goto_2

    :cond_8
    sget-object v9, Landroid/telephony/OpSignalStrength;->EVDO_SNR_SMOOTH_THRESHOLDS:[I

    aget v6, v9, v6

    if-lt p1, v6, :cond_9

    const/4 v0, 0x5

    move v3, v0

    goto :goto_2

    :cond_9
    aget v6, v9, v7

    if-lt p1, v6, :cond_a

    const/4 v0, 0x4

    move v3, v0

    goto :goto_2

    :cond_a
    aget v6, v9, v8

    if-lt p1, v6, :cond_b

    const/4 v0, 0x3

    move v3, v0

    goto :goto_2

    :cond_b
    aget v0, v9, v0

    if-lt p1, v0, :cond_c

    const/4 v0, 0x2

    move v3, v0

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v2, v3, :cond_d

    move v0, v2

    goto :goto_3

    :cond_d
    move v0, v3

    :goto_3
    move v5, v0

    goto/16 :goto_9

    :cond_e
    const-string v0, "getEvdoLevel: do nothing"

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_f
    if-eq p0, v1, :cond_15

    if-ltz p0, :cond_10

    goto :goto_4

    :cond_10
    sget-object v9, Landroid/telephony/OpSignalStrength;->EVDO_DBM_UST_THRESHOLDS:[I

    aget v10, v9, v6

    if-lt p0, v10, :cond_11

    const/4 v2, 0x5

    goto :goto_5

    :cond_11
    aget v10, v9, v7

    if-lt p0, v10, :cond_12

    const/4 v2, 0x4

    goto :goto_5

    :cond_12
    aget v10, v9, v8

    if-lt p0, v10, :cond_13

    const/4 v2, 0x3

    goto :goto_5

    :cond_13
    aget v9, v9, v0

    if-lt p0, v9, :cond_14

    const/4 v2, 0x2

    goto :goto_5

    :cond_14
    const/4 v2, 0x1

    goto :goto_5

    :cond_15
    :goto_4
    const/4 v2, 0x0

    :goto_5
    const/16 v9, -0xa0

    if-eq p2, v9, :cond_1b

    if-ltz p2, :cond_16

    goto :goto_6

    :cond_16
    sget-object v9, Landroid/telephony/OpSignalStrength;->EVDO_ECIO_UST_THRESHOLDS:[I

    aget v6, v9, v6

    if-lt p2, v6, :cond_17

    const/4 v0, 0x5

    move v4, v0

    goto :goto_7

    :cond_17
    aget v6, v9, v7

    if-lt p2, v6, :cond_18

    const/4 v0, 0x4

    move v4, v0

    goto :goto_7

    :cond_18
    aget v6, v9, v8

    if-lt p2, v6, :cond_19

    const/4 v0, 0x3

    move v4, v0

    goto :goto_7

    :cond_19
    aget v0, v9, v0

    if-lt p2, v0, :cond_1a

    const/4 v0, 0x2

    move v4, v0

    goto :goto_7

    :cond_1a
    const/4 v0, 0x1

    move v4, v0

    goto :goto_7

    :cond_1b
    :goto_6
    const/4 v0, 0x0

    move v4, v0

    :goto_7
    if-ge v2, v4, :cond_1c

    move v0, v2

    goto :goto_8

    :cond_1c
    move v0, v4

    :goto_8
    move v5, v0

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoLevel: evdoDbm="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", levelEvdoDbm="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    if-ne p0, v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", evdoEcio="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", levelEcio="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_1d
    move-object v1, v6

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v1, v8, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", evdoSnr="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", levelEvdoSnr="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    return v5
.end method

.method public static getGsmLevel(I)I
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, -0x33

    if-le p0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/telephony/OpSignalStrength;->GSM_SMOOTH_THRESHOLDS:[I

    const/4 v3, 0x3

    aget v3, v2, v3

    if-lt p0, v3, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    aget v3, v2, v3

    if-lt p0, v3, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    aget v3, v2, v3

    if-lt p0, v3, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    aget v0, v2, v0

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmLevel: rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    return v0
.end method

.method public static getLteLevel(II)I
    .locals 10

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/telephony/OpSignalStrength;->mOperatorDefine:I

    if-eq p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteLevel: operatorDefine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/OpSignalStrength;->defineNumberToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    sput p1, Landroid/telephony/OpSignalStrength;->mOperatorDefine:I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/16 v4, -0x2c

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v7, :cond_10

    if-eq p1, v6, :cond_8

    sget v2, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v2, v7, :cond_7

    sget-object v2, Landroid/telephony/OpSignalStrength;->LTE_SMOOTH_THRESHOLDS:[I

    array-length v8, v2

    if-lt v8, v5, :cond_7

    if-le p0, v4, :cond_2

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_2
    aget v3, v2, v3

    if-lt p0, v3, :cond_3

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_3
    aget v3, v2, v6

    if-lt p0, v3, :cond_4

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_4
    aget v3, v2, v7

    if-lt p0, v3, :cond_5

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_5
    aget v0, v2, v0

    if-lt p0, v0, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v0, "getLteLevel: do nothing"

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-object v8, Landroid/telephony/OpSignalStrength;->LTE_USS_THRESHOLDS:[I

    array-length v9, v8

    if-ge v9, v2, :cond_9

    goto :goto_0

    :cond_9
    if-le p0, v4, :cond_a

    const/4 v1, -0x1

    goto :goto_0

    :cond_a
    aget v2, v8, v5

    if-lt p0, v2, :cond_b

    const/4 v1, 0x5

    goto :goto_0

    :cond_b
    aget v2, v8, v3

    if-lt p0, v2, :cond_c

    const/4 v1, 0x4

    goto :goto_0

    :cond_c
    aget v2, v8, v6

    if-lt p0, v2, :cond_d

    const/4 v1, 0x3

    goto :goto_0

    :cond_d
    aget v2, v8, v7

    if-lt p0, v2, :cond_e

    const/4 v1, 0x2

    goto :goto_0

    :cond_e
    aget v0, v8, v0

    if-lt p0, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_0

    :cond_f
    const/4 v1, 0x0

    goto :goto_0

    :cond_10
    sget-object v8, Landroid/telephony/OpSignalStrength;->LTE_UST_THRESHOLDS:[I

    array-length v9, v8

    if-ge v9, v2, :cond_11

    goto :goto_0

    :cond_11
    if-le p0, v4, :cond_12

    const/4 v1, -0x1

    goto :goto_0

    :cond_12
    aget v2, v8, v5

    if-le p0, v2, :cond_13

    const/4 v1, 0x5

    goto :goto_0

    :cond_13
    aget v2, v8, v3

    if-le p0, v2, :cond_14

    const/4 v1, 0x4

    goto :goto_0

    :cond_14
    aget v2, v8, v6

    if-le p0, v2, :cond_15

    const/4 v1, 0x3

    goto :goto_0

    :cond_15
    aget v2, v8, v7

    if-le p0, v2, :cond_16

    const/4 v1, 0x2

    goto :goto_0

    :cond_16
    aget v0, v8, v0

    if-le p0, v0, :cond_17

    const/4 v1, 0x1

    goto :goto_0

    :cond_17
    const/4 v1, 0x0

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteLevel: rsrp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    return v1
.end method

.method public static getTdscdmaLevel(I)I
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, -0x78

    if-lt p0, v2, :cond_4

    const/16 v2, -0x18

    if-le p0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/telephony/OpSignalStrength;->TDSCDMA_SMOOTH_THRESHOLDS:[I

    const/4 v3, 0x2

    aget v3, v2, v3

    if-lt p0, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    aget v3, v2, v3

    if-lt p0, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    aget v0, v2, v0

    if-lt p0, v0, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTdscdmaLevel: rscp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    return v1
.end method

.method public static getWcdmaLevel(I)I
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, -0x78

    if-lt p0, v2, :cond_4

    const/16 v2, -0x18

    if-le p0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/telephony/OpSignalStrength;->WCDMA_SMOOTH_THRESHOLDS:[I

    const/4 v3, 0x2

    aget v3, v2, v3

    if-lt p0, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    aget v3, v2, v3

    if-lt p0, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    aget v0, v2, v0

    if-lt p0, v0, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWcdmaLevel: rscp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    return v1
.end method

.method public static isNACarrier(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OpSignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OpSignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setLteThresholdsByBand(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLteThresholdsbyBand: currentBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operatorDefine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/OpSignalStrength;->defineNumberToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OpSignalStrength;->logd(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/16 v0, 0x19

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_B25_THRESHOLDS:[I

    sput-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_THRESHOLDS:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1

    sget-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_B26_THRESHOLDS:[I

    sput-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_THRESHOLDS:[I

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    if-ne p0, v0, :cond_2

    sget-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_B41_THRESHOLDS:[I

    sput-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_THRESHOLDS:[I

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_DEF_THRESHOLDS:[I

    sput-object v0, Landroid/telephony/OpSignalStrength;->LTE_USS_THRESHOLDS:[I

    :cond_3
    :goto_0
    return-void
.end method

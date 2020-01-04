.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;,
        Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;
    }
.end annotation


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGeoFencingTriggerMessage([B)Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;
    .locals 10

    const/4 v0, 0x7

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;-><init>([BI)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->skip()V

    add-int/lit8 v4, v3, -0x2

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0x20

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v8

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v7

    new-instance v9, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;

    invoke-direct {v9, v8, v7}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage$CellBroadcastIdentity;-><init>(II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;

    invoke-direct {v6, v2, v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$GeoFencingTriggerMessage;-><init>(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create geo-fencing trigger failed, ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v3

    move-object/from16 v15, p0

    invoke-static {v15, v3}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v0

    move-object/from16 v7, p2

    move-object/from16 v15, v16

    move-wide/from16 v16, v18

    invoke-direct/range {v3 .. v17}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;J)V

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    aget-object v15, v2, v4

    invoke-static {v1, v15}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseUmtsBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v14

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    move v11, v3

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    nop

    const/4 v0, 0x6

    aget-byte v22, v15, v0

    mul-int/lit8 v0, v22, 0x53

    add-int/lit8 v13, v0, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xff

    array-length v0, v15

    if-le v0, v13, :cond_2

    :try_start_0
    invoke-static {v15, v13}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseWarningAreaCoordinates([BI)Landroid/util/Pair;

    move-result-object v0

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    move-object/from16 v23, v0

    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t parse warning area coordinates, ex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v3

    move v0, v4

    goto :goto_1

    :cond_2
    move-object/from16 v23, v3

    move v0, v4

    :goto_1
    new-instance v24, Landroid/telephony/SmsCbMessage;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v16

    move-object/from16 v3, v24

    move-object/from16 v7, p2

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v25, v13

    move-object/from16 v13, v16

    move-object/from16 v26, v14

    move v14, v0

    move-object/from16 v27, v15

    move-object/from16 v15, v23

    move-wide/from16 v16, v18

    invoke-direct/range {v3 .. v17}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;J)V

    return-object v24

    :cond_3
    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v5

    array-length v5, v2

    move-object/from16 v20, v0

    move v0, v4

    :goto_2
    if-ge v0, v5, :cond_4

    aget-object v6, v2, v0

    invoke-static {v1, v6}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseGsmBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v7

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v8

    check-cast v20, Ljava/lang/String;

    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    move v11, v3

    goto :goto_3

    :cond_5
    move v11, v4

    :goto_3
    nop

    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v8

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v0

    move-object/from16 v7, p2

    move-object/from16 v9, v20

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v18

    invoke-direct/range {v3 .. v17}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;J)V

    return-object v0
.end method

.method private static getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    const v1, 0x104022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v1, 0x104022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const v1, 0x104022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const v1, 0x1040230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    const v1, 0x104022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLatLng(Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;)Lcom/android/internal/telephony/CbGeoUtils$LatLng;
    .locals 13

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v0

    new-instance v2, Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    int-to-double v3, v1

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide/high16 v7, 0x4150000000000000L    # 4194304.0

    div-double/2addr v3, v7

    const-wide v9, 0x4056800000000000L    # 90.0

    sub-double/2addr v3, v9

    int-to-double v9, v0

    const-wide v11, 0x4076800000000000L    # 360.0

    mul-double/2addr v9, v11

    div-double/2addr v9, v7

    sub-double/2addr v9, v5

    invoke-direct {v2, v3, v4, v9, v10}, Lcom/android/internal/telephony/CbGeoUtils$LatLng;-><init>(DD)V

    return-object v2
.end method

.method private static parseGsmBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingSchemeStructedData()Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIILcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static parseUmtsBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingSchemeStructedData()Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->language:Ljava/lang/String;

    array-length v2, p1

    mul-int/lit8 v3, v0, 0x53

    add-int/lit8 v3, v3, 0x7

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v4, v3, 0x53

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v4, 0x52

    aget-byte v5, p1, v5

    const/16 v6, 0x52

    if-gt v5, v6, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingSchemeStructedData()Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIILcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Page length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " exceeds maximum value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pdu length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseWarningAreaCoordinates([BI)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CbGeoUtils$Geometry;",
            ">;>;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    add-int v3, v2, v0

    array-length v4, p0

    if-gt v3, v4, :cond_5

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;-><init>([BI)V

    const/16 v4, 0xff

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    :goto_0
    if-lez v6, :cond_4

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v7

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->skip()V

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getLatLng(Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;)Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    move-result-object v9

    const/16 v10, 0x14

    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    div-double/2addr v10, v12

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    new-instance v12, Lcom/android/internal/telephony/CbGeoUtils$Circle;

    invoke-direct {v12, v9, v10, v11}, Lcom/android/internal/telephony/CbGeoUtils$Circle;-><init>(Lcom/android/internal/telephony/CbGeoUtils$LatLng;D)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported geoType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v10, v8, -0x2

    mul-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2c

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getLatLng(Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;)Lcom/android/internal/telephony/CbGeoUtils$LatLng;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->skip()V

    new-instance v11, Lcom/android/internal/telephony/CbGeoUtils$Polygon;

    invoke-direct {v11, v9}, Lcom/android/internal/telephony/CbGeoUtils$Polygon;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage$BitStreamReader;->read(I)I

    move-result v4

    nop

    :goto_2
    goto :goto_0

    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid wac data, expected the length of pdu atleast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", actual is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static unpackBody([BIILcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p3, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->language:Ljava/lang/String;

    iget v2, p3, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->encoding:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p3, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->hasLanguageIndicator:Z

    if-eqz v2, :cond_1

    array-length v2, p0

    add-int/lit8 v4, p1, 0x2

    if-lt v2, v4, :cond_1

    invoke-static {p0, p1, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, -0x2

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const v4, 0xfffe

    and-int/2addr v4, p2

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, p1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Error decoding UTF-16 message"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    mul-int/lit8 v2, p2, 0x8

    div-int/lit8 v2, v2, 0x7

    invoke-static {p0, p1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p3, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->hasLanguageIndicator:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_3

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    goto :goto_3

    :cond_6
    const-string v0, ""

    :goto_3
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

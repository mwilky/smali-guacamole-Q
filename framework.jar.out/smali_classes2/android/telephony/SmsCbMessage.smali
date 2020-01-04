.class public Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final GEOGRAPHICAL_SCOPE_LA_WIDE:I = 0x2

.field public static final GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "SMSCB"

.field public static final MAXIMUM_WAIT_TIME_NOT_SET:I = 0xff

.field public static final MESSAGE_FORMAT_3GPP:I = 0x1

.field public static final MESSAGE_FORMAT_3GPP2:I = 0x2

.field public static final MESSAGE_PRIORITY_EMERGENCY:I = 0x3

.field public static final MESSAGE_PRIORITY_INTERACTIVE:I = 0x1

.field public static final MESSAGE_PRIORITY_NORMAL:I = 0x0

.field public static final MESSAGE_PRIORITY_URGENT:I = 0x2


# instance fields
.field private final mBody:Ljava/lang/String;

.field private final mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mGeographicalScope:I

.field private final mGeometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mLocation:Landroid/telephony/SmsCbLocation;

.field private final mMaximumWaitTimeSec:I

.field private final mMessageFormat:I

.field private final mPriority:I

.field private final mReceivedTimeMillis:J

.field private final mSerialNumber:I

.field private final mServiceCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SmsCbMessage$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V
    .locals 15

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v14}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;J)V

    return-void
.end method

.method public constructor <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/telephony/SmsCbLocation;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/telephony/SmsCbEtwsInfo;",
            "Landroid/telephony/SmsCbCmasInfo;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CbGeoUtils$Geometry;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    iput p2, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    iput p3, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    iput-object p4, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    iput p5, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    iput-object p6, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    iput-object p7, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    iput p8, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    iput-object p9, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    iput-object p10, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iput-wide p13, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    iput-object p12, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    iput p11, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    new-instance v0, Landroid/telephony/SmsCbLocation;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbLocation;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0x43

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbEtwsInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    new-instance v1, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbCmasInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/internal/telephony/CbGeoUtils;->parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Landroid/telephony/SmsCbMessage;
    .locals 38

    move-object/from16 v0, p0

    const-string v1, "geo_scope"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "serial_number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string/jumbo v2, "service_category"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    nop

    const-string/jumbo v2, "language"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v2, "format"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string/jumbo v2, "priority"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string/jumbo v2, "plmn"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const/4 v2, -0x1

    if-eq v15, v2, :cond_0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v13, v3

    :goto_0
    const-string/jumbo v3, "lac"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v2, :cond_1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v11, v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    move v11, v3

    :goto_1
    const-string v3, "cid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v2, :cond_2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v9, v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    move v9, v3

    :goto_2
    new-instance v6, Landroid/telephony/SmsCbLocation;

    invoke-direct {v6, v13, v11, v9}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    const-string v3, "etws_warning_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v2, :cond_3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Landroid/telephony/SmsCbEtwsInfo;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v4

    move/from16 v24, v3

    invoke-direct/range {v23 .. v28}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object v3, v4

    move-object/from16 v23, v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v23, v3

    :goto_3
    const/4 v3, 0x0

    const-string v4, "cmas_message_class"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v2, :cond_9

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "cmas_category"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v2, :cond_4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_4

    :cond_4
    const/4 v14, -0x1

    :goto_4
    const-string v2, "cmas_response_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v31, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, -0x1

    :goto_5
    move/from16 v32, v2

    const-string v2, "cmas_severity"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v5

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_6

    :cond_6
    const/4 v5, -0x1

    :goto_6
    move/from16 v34, v2

    const-string v2, "cmas_urgency"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v7

    const/4 v7, -0x1

    if-eq v2, v7, :cond_7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_7

    :cond_7
    const/4 v7, -0x1

    :goto_7
    move/from16 v36, v2

    const-string v2, "cmas_certainty"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v8

    const/4 v8, -0x1

    if-eq v2, v8, :cond_8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_8

    :cond_8
    const/4 v8, -0x1

    :goto_8
    new-instance v16, Landroid/telephony/SmsCbCmasInfo;

    move-object/from16 v24, v16

    move/from16 v25, v4

    move/from16 v26, v14

    move/from16 v27, v3

    move/from16 v28, v5

    move/from16 v29, v7

    move/from16 v30, v8

    invoke-direct/range {v24 .. v30}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    move-object/from16 v31, v16

    goto :goto_9

    :cond_9
    move-object/from16 v31, v3

    move/from16 v35, v7

    move/from16 v37, v8

    :goto_9
    const-string v2, "geometries"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_a

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/CbGeoUtils;->parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    move-object v14, v2

    nop

    const-string/jumbo v2, "received_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    nop

    const-string/jumbo v2, "maximum_wait_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    new-instance v28, Landroid/telephony/SmsCbMessage;

    move-object/from16 v2, v28

    move/from16 v3, v21

    move v4, v1

    move/from16 v5, v17

    move/from16 v29, v35

    move/from16 v7, v18

    move/from16 v30, v37

    move-object/from16 v8, v19

    move/from16 v32, v9

    move-object/from16 v9, v20

    move/from16 v33, v10

    move/from16 v10, v22

    move/from16 v34, v11

    move-object/from16 v11, v23

    move/from16 v35, v12

    move-object/from16 v12, v31

    move-object/from16 v36, v13

    move/from16 v13, v27

    move/from16 v37, v15

    move-wide/from16 v15, v25

    invoke-direct/range {v2 .. v16}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;J)V

    return-object v28
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "geo_scope"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "plmn"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "lac"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "serial_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "service_category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "etws_warning_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_message_class"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_category"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_response_type"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_severity"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_urgency"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_certainty"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget-wide v3, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "received_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    const-string v4, "geometries"

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/android/internal/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v3, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "maximum_wait_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public getGeographicalScope()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    return v0
.end method

.method public getGeometries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/telephony/SmsCbLocation;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    return-object v0
.end method

.method public getMaximumWaitingTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageFormat()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    return v0
.end method

.method public getMessagePriority()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    return v0
.end method

.method public getReceivedTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    return-wide v0
.end method

.method public getSerialNumber()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    return v0
.end method

.method public isCmasMessage()Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyMessage()Z
    .locals 2

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEtwsMessage()Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needGeoFencingCheck()Z
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbMessage{geographicalScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    const-string v2, ", "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v4}, Landroid/telephony/SmsCbEtwsInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maximumWaitingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/internal/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbLocation;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbEtwsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbCmasInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    nop

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

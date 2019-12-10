.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mColorRange:I

.field private mColorStandard:I

.field private mColorTransfer:I

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDate:J

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mNoMedia:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPath:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mScanSuccess:Z

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 1

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' -> \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', expected \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaScanner"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private doesRingtonesPathHaveFilename(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/media/MediaScanner;->access$2600()I

    move-result v2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;
    .locals 19
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string/jumbo v0, "title"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_data"

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "album"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "<unknown>"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-ltz v8, :cond_6

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    if-ltz v10, :cond_5

    if-lt v10, v8, :cond_4

    goto :goto_1

    :cond_4
    move v9, v10

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v9, :cond_6

    add-int/lit8 v7, v9, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-wide v7, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_8

    cmp-long v0, v7, v10

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v12, "is_ringtone"

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v12, "is_notification"

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v12, "is_alarm"

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v12, "is_music"

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v12, "is_podcast"

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v12, "is_audiobook"

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    :cond_8
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->isExifMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v0, :cond_e

    const/4 v12, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v13, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v0, v13}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v0, v13, v15

    const-string v10, "datetaken"

    if-eqz v0, :cond_9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v12}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v13

    cmp-long v0, v13, v15

    if-eqz v0, :cond_a

    move-object v0, v10

    iget-wide v9, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v9, v15

    sub-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v15, 0x5265c00

    cmp-long v9, v9, v15

    if-ltz v9, :cond_a

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a
    :goto_3
    const/4 v0, -0x1

    const-string v9, "Orientation"

    invoke-virtual {v12, v9, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v0, :cond_e

    const/4 v0, 0x3

    if-eq v9, v0, :cond_d

    const/4 v10, 0x6

    if-eq v9, v10, :cond_c

    const/16 v0, 0x8

    if-eq v9, v0, :cond_b

    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    const/16 v0, 0x10e

    goto :goto_4

    :cond_c
    const/16 v0, 0x5a

    goto :goto_4

    :cond_d
    const/16 v0, 0xb4

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v15, "orientation"

    invoke-virtual {v3, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    :goto_5
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    const/4 v9, 0x0

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v10

    iget-boolean v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v12, :cond_12

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v12}, Landroid/media/MediaFile;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v12}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    const/4 v9, 0x3

    goto :goto_6

    :cond_f
    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v12}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v12}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    const/4 v9, 0x1

    goto :goto_6

    :cond_10
    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v12}, Landroid/media/MediaFile;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v12}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    const/4 v9, 0x2

    goto :goto_6

    :cond_11
    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v12}, Landroid/media/MediaFile;->isPlayListMimeType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v12}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    const/4 v9, 0x4

    :cond_12
    :goto_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz p3, :cond_17

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v11

    if-nez v11, :cond_14

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v15, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v15}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v11, v15}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    const/4 v13, 0x1

    const/4 v14, 0x0

    :cond_14
    const/4 v11, 0x1

    new-array v15, v11, [I

    const/4 v11, 0x0

    const/16 v16, 0x6

    aput v16, v15, v11

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Z

    move-result v11

    if-nez v11, :cond_16

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v15, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v15}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v11, v15}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    :cond_15
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v16, v4

    goto/16 :goto_a

    :cond_16
    move-object/from16 v16, v4

    goto :goto_a

    :cond_17
    if-eqz p2, :cond_1b

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->isDefaultRingtonesSet()Z

    move-result v11

    if-nez v11, :cond_1b

    const/4 v11, 0x0

    :goto_7
    invoke-static {}, Landroid/media/MediaScanner;->access$2600()I

    move-result v15

    if-ge v11, v15, :cond_1a

    iget-object v15, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v15}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v11

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_19

    iget-object v15, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v16, v4

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-direct {v1, v15, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_8

    :cond_18
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    goto :goto_7

    :cond_19
    move-object/from16 v16, v4

    :goto_8
    const/4 v4, 0x1

    move v13, v4

    goto :goto_9

    :cond_1a
    move-object/from16 v16, v4

    :goto_9
    goto :goto_a

    :cond_1b
    move-object/from16 v16, v4

    if-eqz p4, :cond_1d

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    const/4 v13, 0x1

    :cond_1d
    :goto_a
    const-wide/16 v17, 0x0

    cmp-long v4, v7, v17

    if-nez v4, :cond_25

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "media_scanner_new_object_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1e
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    if-ne v0, v4, :cond_20

    iget v4, v2, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    if-nez v4, :cond_1f

    iget-object v5, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v5, v11}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_1f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v11, "format"

    invoke-virtual {v3, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_20
    if-eqz v10, :cond_23

    if-eqz v13, :cond_21

    goto :goto_b

    :cond_21
    iget v4, v2, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_22

    invoke-virtual {v10, v0, v3}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_c

    :cond_22
    invoke-virtual {v10, v0, v3}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_c

    :cond_23
    :goto_b
    if-eqz v10, :cond_24

    invoke-virtual {v10}, Landroid/media/MediaInserter;->flushAll()V

    :cond_24
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    :goto_c
    if-eqz v12, :cond_27

    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    goto :goto_d

    :cond_25
    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    iget-boolean v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    const/4 v5, 0x0

    if-nez v4, :cond_26

    iget v4, v2, Landroid/media/MediaScanner$FileEntry;->mMediaType:I

    if-eq v9, v4, :cond_26

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v15, "media_type"

    invoke-virtual {v4, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v11

    iget-object v15, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v15}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v11, v15, v4, v5, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_26
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v4

    invoke-virtual {v4, v12, v3, v5, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_27
    :goto_d
    if-eqz v13, :cond_2e

    if-eqz p3, :cond_29

    if-eqz v14, :cond_28

    const-string/jumbo v4, "mms_notification"

    invoke-direct {v1, v4, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2402(Landroid/media/MediaScanner;Z)Z

    goto :goto_10

    :cond_28
    const/4 v5, 0x1

    const-string/jumbo v4, "notification_sound"

    invoke-direct {v1, v4, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$502(Landroid/media/MediaScanner;Z)Z

    goto :goto_10

    :cond_29
    if-eqz p2, :cond_2d

    const/4 v4, 0x0

    :goto_e
    invoke-static {}, Landroid/media/MediaScanner;->access$2600()I

    move-result v5

    if-ge v4, v5, :cond_2c

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)[Z

    move-result-object v5

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_2a

    goto :goto_f

    :cond_2a
    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-direct {v1, v5, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_f

    :cond_2b
    invoke-static {}, Landroid/media/MediaScanner;->access$2900()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-direct {v1, v5, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)[Z

    move-result-object v5

    const/4 v11, 0x1

    aput-boolean v11, v5, v4

    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_2c
    goto :goto_10

    :cond_2d
    if-eqz p4, :cond_2e

    const-string v4, "alarm_alert"

    invoke-direct {v1, v4, v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$802(Landroid/media/MediaScanner;Z)Z

    :cond_2e
    :goto_10
    return-object v12
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method private getMimeTypeFromDrm(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/media/MediaScanner;->access$3302(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private isDefaultRingtonesSet()Z
    .locals 5

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)[Z

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-boolean v4, v0, v3

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    return p3

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x30

    if-lt p2, v2, :cond_5

    const/16 v3, 0x39

    if-le p2, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, p2, -0x30

    :goto_0
    if-ge v1, v0, :cond_4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v2, :cond_3

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v4, 0xa

    add-int/lit8 v6, p2, -0x30

    add-int v4, v1, v6

    move v1, v5

    goto :goto_0

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v4

    :cond_5
    :goto_2
    return p3
.end method

.method private processImageFile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    return v0
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 6

    invoke-static {}, Landroid/media/MediaScanner;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRingtoneIfNotSet: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, p1}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v5

    invoke-static {v4, v5, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2, p1}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    const-string v0, "Country"

    const-string v1, "2"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "(2)"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "(2"

    invoke-direct {p0, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "2 Foo"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "(2) Foo"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "(2 Foo"

    invoke-direct {p0, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "2Foo"

    invoke-direct {p0, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "(2)Foo"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Foo"

    const-string v1, "200 Foo"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "(200) Foo"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "200Foo"

    invoke-direct {p0, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "(200)Foo"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200)Foo"

    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200) Foo"

    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 9
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset mimetype("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to null for directory"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/MediaScanner;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "."

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MediaScanner"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    const-string v4, "_data"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "date_modified"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "_size"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string/jumbo v4, "mime_type"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v4, "is_drm"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "_hash"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v4, :cond_2

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "width"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "height"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_f

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "duration"

    const-string v6, "album"

    const-string v7, "artist"

    const-string v8, "<unknown>"

    if-eqz v4, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, v8

    :goto_1
    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v8, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_2

    :cond_4
    nop

    :goto_2
    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_5

    const-string/jumbo v3, "resolution"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorStandard:I

    if-ltz v3, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "color_standard"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorTransfer:I

    if-ltz v3, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "color_transfer"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorRange:I

    if-ltz v3, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "color_range"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "datetaken"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6

    :cond_9
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_3

    :cond_b
    move-object v4, v8

    :goto_3
    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_4

    :cond_c
    nop

    :goto_4
    const-string v4, "album_artist"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v8, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_5

    :cond_d
    nop

    :goto_5
    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    const-string v4, "composer"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    const-string v4, "genre"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "year"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "track"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "compilation"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    :goto_6
    return-object v0
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 24
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p2

    iput-object v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-wide/from16 v13, p5

    iput-wide v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    const/4 v15, 0x0

    iput-boolean v15, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-nez p7, :cond_3

    if-nez p8, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p8

    :goto_0
    iput-boolean v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    :cond_1
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaFile;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getMimeTypeFromDrm(Ljava/lang/String;)V

    :cond_2
    move/from16 v16, v1

    goto :goto_1

    :cond_3
    move/from16 v16, p8

    :goto_1
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-virtual {v1, v9}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v7

    const-wide/16 v5, 0x0

    if-eqz v7, :cond_4

    iget-wide v1, v7, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v1, v10, v1

    goto :goto_2

    :cond_4
    move-wide v1, v5

    :goto_2
    move-wide/from16 v17, v1

    const-wide/16 v1, 0x1

    cmp-long v1, v17, v1

    if-gtz v1, :cond_6

    const-wide/16 v1, -0x1

    cmp-long v1, v17, v1

    if-gez v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v15

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v8

    :goto_4
    move/from16 v19, v1

    if-eqz v7, :cond_7

    if-eqz v19, :cond_a

    :cond_7
    if-eqz v19, :cond_8

    iput-wide v10, v7, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    move v15, v8

    goto :goto_6

    :cond_8
    new-instance v20, Landroid/media/MediaScanner$FileEntry;

    const-wide/16 v2, 0x0

    if-eqz p7, :cond_9

    const/16 v1, 0x3001

    move/from16 v21, v1

    goto :goto_5

    :cond_9
    move/from16 v21, v15

    :goto_5
    const/16 v22, 0x0

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-object/from16 v23, v7

    move/from16 v7, v21

    move v15, v8

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JII)V

    move-object v7, v1

    :goto_6
    iput-boolean v15, v7, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    :cond_a
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->isPlayListMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_b
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    iput-object v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    iput-wide v10, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorStandard:I

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorTransfer:I

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorRange:I

    return-object v7
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 25
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "MediaScanner"

    if-nez p7, :cond_0

    cmp-long v0, p5, v13

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v16, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide/from16 v16, p5

    move/from16 v9, p8

    goto/16 :goto_b

    :cond_0
    move-wide/from16 v16, p5

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, v16

    move/from16 v8, p7

    move/from16 v9, p9

    :try_start_1
    invoke-virtual/range {v1 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v1

    if-eqz v1, :cond_2

    iput-wide v13, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_2
    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    const-string v2, "forcing rescan of "

    if-nez v1, :cond_3

    :try_start_2
    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v3, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v1, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->isDefaultRingtonesSet()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v3, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v1, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesRingtonesPathHaveFilename(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v3, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v1, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "since ringtone setting didn\'t finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {}, Landroid/media/MediaScanner;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " since build fingerprint changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    move/from16 v1, p8

    :goto_1
    :try_start_3
    invoke-static {}, Landroid/media/MediaScanner;->access$1200()Z

    move-result v2

    iget-object v3, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->forceToScanAlways(ZLjava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move v9, v2

    :try_start_4
    iget-boolean v1, v0, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v1, :cond_8

    if-eqz v9, :cond_16

    :cond_8
    if-eqz p9, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v1

    move-object v12, v1

    goto/16 :goto_a

    :cond_9
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    move v13, v1

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v1

    move v14, v1

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v1

    move/from16 v18, v1

    if-nez v13, :cond_a

    if-nez v14, :cond_a

    if-eqz v18, :cond_b

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v11, v1

    :cond_b
    if-nez v13, :cond_d

    if-eqz v14, :cond_c

    goto :goto_2

    :cond_c
    move-object/from16 v7, p2

    goto :goto_3

    :cond_d
    :goto_2
    :try_start_5
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v7, p2

    invoke-static {v1, v11, v7, v10}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z

    move-result v1

    iput-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    :goto_3
    if-eqz v18, :cond_e

    invoke-direct {v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    :cond_e
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    const-string v1, "/ringtones/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_4

    :cond_f
    move v1, v3

    :goto_4
    move/from16 v19, v1

    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_10

    const-string v1, "/notifications/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    move v1, v2

    goto :goto_5

    :cond_10
    move v1, v3

    :goto_5
    move/from16 v20, v1

    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_11

    const-string v1, "/alarms/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_11

    move v1, v2

    goto :goto_6

    :cond_11
    move v1, v3

    :goto_6
    move/from16 v21, v1

    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_12

    const-string v1, "/podcasts/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_12

    move v1, v2

    goto :goto_7

    :cond_12
    move v1, v3

    :goto_7
    move/from16 v22, v1

    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_13

    const-string v1, "/audiobooks/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_13

    move v1, v2

    goto :goto_8

    :cond_13
    move v1, v3

    :goto_8
    move/from16 v23, v1

    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_15

    const-string v1, "/music/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_14

    if-nez v19, :cond_15

    if-nez v20, :cond_15

    if-nez v21, :cond_15

    if-nez v22, :cond_15

    if-nez v23, :cond_15

    :cond_14
    move v8, v2

    goto :goto_9

    :cond_15
    move v8, v3

    :goto_9
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v24, v6

    move/from16 v6, v22

    move/from16 v7, v23

    invoke-direct/range {v1 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v12, v1

    :cond_16
    :goto_a
    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    move v9, v1

    goto :goto_b

    :catch_4
    move-exception v0

    move/from16 v9, p8

    :goto_b
    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-object v12
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v4, :cond_1

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_3
    const/16 v5, 0x20

    :goto_2
    const/16 v6, 0x29

    if-eqz v2, :cond_4

    if-eq v5, v6, :cond_5

    :cond_4
    if-nez v2, :cond_c

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7

    if-ltz v7, :cond_b

    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_6

    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    if-eqz v8, :cond_6

    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    return-object v0

    :cond_6
    const/16 v8, 0xff

    if-ne v7, v8, :cond_7

    return-object v0

    :cond_7
    if-ge v7, v8, :cond_a

    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_a

    if-eqz v2, :cond_8

    if-ne v5, v6, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    return-object v0

    :cond_9
    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_b
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    :cond_c
    :goto_4
    return-object p1
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "title;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "artist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v0, "albumartist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "albumartist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "band"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "band;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v0, "album"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "album;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "composer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "genre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "genre;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_9

    :cond_6
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string/jumbo v0, "year;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v0, "tracknumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "tracknumber;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v0, "discnumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "set;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_9

    :cond_a
    const-string/jumbo v0, "writer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "writer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const-string v0, "compilation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_9

    :cond_c
    const-string/jumbo v0, "isdrm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_9

    :cond_e
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    goto/16 :goto_9

    :cond_f
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_9

    :cond_10
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_9

    :cond_11
    const-string v0, "colorstandard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_12

    invoke-direct {p0, p2, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorStandard:I

    goto :goto_9

    :cond_12
    const-string v0, "colortransfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p2, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorTransfer:I

    goto :goto_9

    :cond_13
    const-string v0, "colorrange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mColorRange:I

    goto :goto_9

    :cond_14
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto :goto_9

    :cond_15
    :goto_1
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto :goto_9

    :cond_16
    :goto_2
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto :goto_9

    :cond_17
    :goto_3
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto :goto_9

    :cond_18
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_9

    :cond_19
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_9

    :cond_1a
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_9

    :cond_1b
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_9

    :cond_1c
    :goto_8
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    :cond_1d
    :goto_9
    return-void
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 11
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {p1}, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->isProtectedMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move/from16 v0, p7

    :goto_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v1, "audio/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    return-void
.end method

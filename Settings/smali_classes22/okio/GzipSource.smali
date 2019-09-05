.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lokio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lokio/InflaterSource;

.field private section:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokio/GzipSource;->section:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    new-instance v0, Lokio/InflaterSource;

    iget-object v1, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    iget-object v2, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeHeader()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    if-eqz v10, :cond_1

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_1
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v11

    const/16 v0, 0x1f8b

    const-string v1, "ID1ID2"

    invoke-direct {v6, v1, v0, v11}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_4

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    if-eqz v10, :cond_2

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_2
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v12

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    if-eqz v10, :cond_3

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_3
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    :cond_4
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x1

    if-ne v0, v8, :cond_7

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0, v9}, Lokio/BufferedSource;->indexOf(B)J

    move-result-wide v16

    cmp-long v0, v16, v12

    if-eqz v0, :cond_6

    if-eqz v10, :cond_5

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v16, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_5
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    add-long v1, v16, v14

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    :goto_1
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0, v9}, Lokio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    cmp-long v0, v8, v12

    if-eqz v0, :cond_9

    if-eqz v10, :cond_8

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v8, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_8
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    add-long/2addr v14, v8

    invoke-interface {v0, v14, v15}, Lokio/BufferedSource;->skip(J)V

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_a
    :goto_2
    if-eqz v10, :cond_b

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    iget-object v1, v6, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, v6, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    return-void
.end method

.method private consumeTrailer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-direct {p0, v2, v0, v1}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-direct {p0, v2, v0, v1}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    return-void
.end method

.method private updateCrc(Lokio/Buffer;JJ)V
    .locals 5

    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_0

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_1

    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    long-to-int v1, v1

    iget v2, v0, Lokio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v4, v0, Lokio/Segment;->data:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v3, v2

    sub-long/2addr p4, v3

    const-wide/16 p2, 0x0

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-ltz v2, :cond_6

    cmp-long v2, v8, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget v0, v6, Lokio/GzipSource;->section:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lokio/GzipSource;->consumeHeader()V

    iput v1, v6, Lokio/GzipSource;->section:I

    :cond_1
    iget v0, v6, Lokio/GzipSource;->section:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v10, v7, Lokio/Buffer;->size:J

    iget-object v0, v6, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v0, p1, v8, v9}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v12

    cmp-long v0, v12, v2

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    return-wide v12

    :cond_2
    iput v4, v6, Lokio/GzipSource;->section:I

    :cond_3
    iget v0, v6, Lokio/GzipSource;->section:I

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lokio/GzipSource;->consumeTrailer()V

    const/4 v0, 0x3

    iput v0, v6, Lokio/GzipSource;->section:I

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    return-wide v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

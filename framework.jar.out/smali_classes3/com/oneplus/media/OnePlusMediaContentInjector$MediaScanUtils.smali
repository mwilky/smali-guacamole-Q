.class public Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;
.super Ljava/lang/Object;
.source "OnePlusMediaContentInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/OnePlusMediaContentInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaScanUtils"
.end annotation


# static fields
.field private static CONFIG_NO_MEDIA_FOR_SIZE_ZERO:Z

.field private static CONFIG_PROTECT_EXTERNAL_ROOT:Z

.field private static CONFIG_PROTECT_MEDIA:Z

.field private static CONFIG_REBUILD_MEDIA_VIEW:Z

.field public static final DBG:Z

.field public static final DBG_ALL:Z

.field private static PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->DBG:Z

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_ALL:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->DBG_ALL:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_NO_MEDIA_FOR_SIZE_ZERO:Z

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_PROTECT_EXTERNAL_ROOT:Z

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_PROTECT_MEDIA:Z

    sput-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_REBUILD_MEDIA_VIEW:Z

    const-string v0, "/DCIM/"

    const-string v1, "/DCIM/Camera"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNoMediaRule(ZLjava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_PROTECT_MEDIA:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->deleteNoMediaInProtectedPath()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    invoke-static {}, Lcom/oneplus/media/OnePlusMediaContentInjector;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string v1, "OnePlusMediaContentInjector"

    const-string v2, ".NoMedia was removed in the protected folders. We will execute the database rebuild works for external path."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method private static deleteNoMediaInProtectedPath()Z
    .locals 11

    const/4 v0, 0x0

    invoke-static {}, Lcom/oneplus/media/OnePlusMediaContentInjector;->getExternalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, " was protected."

    const-string v5, "deleteNoMediaInProtectedPath: "

    const-string v6, "deleteNoMediaInProtectedPath: failed on removing "

    const-string v7, "OnePlusMediaContentInjector"

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    sget-object v8, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-boolean v10, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->DBG:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public static forceToScanAlways(ZLjava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/media/OnePlusMediaContentInjector;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isExternalStorage(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_PROTECT_MEDIA:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/media/OnePlusMediaContentInjector;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isProtectedMediaPath(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    sget-boolean v1, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_PROTECT_MEDIA:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/oneplus/media/OnePlusMediaContentInjector;->getExternalPath()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_PROTECT_EXTERNAL_ROOT:Z

    const-string v3, "OnePlusMediaContentInjector"

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "/.nomedia"

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->DBG_ALL:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNoMediaPath: we plan to protect root dir "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v2, "/."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    const-string v2, ".nomedia"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->DBG_ALL:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isProtectedMediaPath: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is protected."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v0
.end method

.method public static protectRootStorage(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/media/OnePlusMediaContentInjector;->getExternalPath()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_PROTECT_EXTERNAL_ROOT:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static skipMediaTypeForInvalidFile(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->CONFIG_NO_MEDIA_FOR_SIZE_ZERO:Z

    if-eqz v1, :cond_1

    const-string v1, ".nomedia"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oneplus/media/OnePlusMediaContentInjector$MediaScanUtils;->DBG_ALL:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip the media type of size 0 file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusMediaContentInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

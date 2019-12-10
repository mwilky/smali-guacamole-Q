.class public Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;
.super Ljava/lang/Object;
.source "OnePlusMediaContentInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/OnePlusMediaContentInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentDebugUtils"
.end annotation


# static fields
.field public static final DBG:Z

.field public static final DBG_ALL:Z

.field private static final DBG_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG:Z

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_ALL:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_ALL:Z

    const-string v0, "content://media/external/op_debug"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriVolumeName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isExternalMediaUri(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->getUriVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "external"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "_tag"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_action"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_uri"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "sel"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "sel_arg"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_pkg_name"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packContentValues from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnePlusMediaContentInjector"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method public static saveDbgMsg(Landroid/content/ContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "DbgMsg Stack:"

    const-string v1, "OnePlusMediaContentInjector"

    :try_start_0
    invoke-static {p3}, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->isExternalMediaUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deletedata=false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p1 .. p6}, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    sget-object v4, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-boolean v3, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_ALL:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "saveDbgMsg error: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    sget-boolean v3, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    throw v2
.end method

.method public static saveDbgMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "DbgMsg Stack:"

    const-string v1, "OnePlusMediaContentInjector"

    if-eqz p0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, v2

    :try_start_1
    invoke-static/range {v3 .. v8}, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    sget-object v4, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-virtual {v9, v4, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    sget-boolean v3, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-static {v9}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v3, v9

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v9

    goto :goto_0

    :catchall_1
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_0
    :try_start_2
    sget-boolean v5, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_ALL:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "saveDbgMsg error: "

    invoke-static {v1, v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    sget-boolean v4, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-static {v3}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :goto_1
    sget-boolean v5, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    invoke-static {v3}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v4

    :cond_5
    :goto_2
    return-void
.end method

.method public static saveDbgMsg(Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "DbgMsg Stack:"

    const-string v1, "OnePlusMediaContentInjector"

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p3}, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->isExternalMediaUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deletedata=false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p1 .. p6}, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    sget-object v4, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-interface {p0, p6, v4, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    sget-boolean v3, Lcom/oneplus/media/OnePlusMediaContentInjector$ContentDebugUtils;->DBG_ALL:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "saveDbgMsg error: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_2

    :goto_0
    sget-boolean v3, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    throw v2

    :cond_2
    :goto_1
    sget-boolean v2, Lcom/oneplus/media/OnePlusMediaContentInjector;->DBG_DUMP_STACK:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    :goto_2
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

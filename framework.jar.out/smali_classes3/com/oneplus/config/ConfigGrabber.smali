.class public Lcom/oneplus/config/ConfigGrabber;
.super Ljava/lang/Object;
.source "ConfigGrabber.java"


# instance fields
.field private final OPCONFIG_URI:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Config:Grabber:"

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    const-string v0, "content://com.oneplus.config.ConfigProvider/"

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->OPCONFIG_URI:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/config/ConfigGrabber;->mConfigName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-void
.end method


# virtual methods
.method public grabConfig()Lorg/json/JSONArray;
    .locals 12

    const-string v0, "Exception:"

    iget-object v1, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.oneplus.config.ConfigProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->mConfigName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v2, "config_content"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v2, v1

    move-object v3, v8

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v9, v2

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v5, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lnet/oneplus/odm/OpDeviceManagerInjector;->decryptWithAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v2

    :cond_0
    if-eqz v9, :cond_2

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v9, :cond_2

    goto :goto_0

    :catch_1
    move-exception v2

    if-eqz v9, :cond_1

    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v3

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_3
    iget-object v5, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    if-eqz v9, :cond_2

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v2, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    if-eqz v9, :cond_2

    goto :goto_0

    :catch_4
    move-exception v0

    iget-object v2, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    :goto_3
    return-object v10

    :goto_4
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.class public Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;
.super Ljava/lang/Object;
.source "OpCaptivePortalOnlineUrlBlacklist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$CaptivePortalConfigUpdater;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static ONLINE_CONFIG_CONTENT_NAME:Ljava/lang/String; = null

.field private static ONLINE_CONFIG_PROJ_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OpCaptivePortalOnlineUrlBlacklist"

.field private static mOnlineUrlBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CaptivePortalOnlineConfig"

    sput-object v0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->ONLINE_CONFIG_PROJ_NAME:Ljava/lang/String;

    const-string v0, "captive_portal_url_blacklist"

    sput-object v0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->ONLINE_CONFIG_CONTENT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->initOnlineConfig()V

    new-instance v0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$1;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$1;-><init>(Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineConfigHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineConfigHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->ONLINE_CONFIG_PROJ_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->parseCaptivePortalConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$CaptivePortalConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$CaptivePortalConfigUpdater;-><init>(Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;)V

    sget-object v4, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->ONLINE_CONFIG_PROJ_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineUrlBlacklist:Ljava/util/ArrayList;

    return-void
.end method

.method private parseCaptivePortalConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseConfigFromJson jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCaptivePortalOnlineUrlBlacklist"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->ONLINE_CONFIG_CONTENT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineUrlBlacklist:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineUrlBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "OpCaptivePortalOnlineUrlBlacklist"

    const-string v6, "[OnlineConfig] captive portal url blacklist from online config:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OpCaptivePortalOnlineUrlBlacklist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineUrlBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "OpCaptivePortalOnlineUrlBlacklist"

    const-string v1, "[OnlineConfig] Captive portal online config updated complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpCaptivePortalOnlineUrlBlacklist"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpCaptivePortalOnlineUrlBlacklist"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    nop

    :goto_4
    return-void
.end method


# virtual methods
.method public getCaptivePortalOnlineUrlBlacklist()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->mOnlineUrlBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

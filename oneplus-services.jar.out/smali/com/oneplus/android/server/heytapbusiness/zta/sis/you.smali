.class public final Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;
.super Lcom/oneplus/android/server/heytapbusiness/zta/zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/android/server/heytapbusiness/zta/zta<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OpHeytapBusiness[wechatpay]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/android/server/heytapbusiness/zta/sis/zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/zta/zta;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "wechatpay={"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  originAppCmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fastAppCmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public jf()Ljava/lang/String;
    .locals 0

    const-string p0, "wechatpay"

    return-object p0
.end method

.method public na(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.nearme.instant.platform"

    invoke-direct {p1, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public oa(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic rtg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->na(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ssp(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->oa(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic you(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->you(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs you(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic zta(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs zta(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p4

    const/16 v0, 0x14

    if-le p4, v0, :cond_1

    iget-object p4, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/zta/zta;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.class public Lcom/android/id/impl/IdProviderImpl;
.super Ljava/lang/Object;
.source "IdProviderImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenIdProviderImpl"

.field private static final TYPE_APID:Ljava/lang/String; = "APID"

.field private static final TYPE_AUID:Ljava/lang/String; = "AUID"

.field private static final TYPE_GUID:Ljava/lang/String; = "GUID"

.field private static final TYPE_OUID:Ljava/lang/String; = "OUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "APID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getOpenid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "AUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getOpenid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "GUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getOpenid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "OUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getOpenid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenId got exception with package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpenIdProviderImpl"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.class public Lcom/oneplus/android/wifi/OpWifiPasspoint;
.super Ljava/lang/Object;
.source "OpWifiPasspoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpWifiPasspoint"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildRealm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wlan.mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setPasspointConfig(Landroid/content/Context;I)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set passpoint config, phoneSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWifiPasspoint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const-string v2, "SIM NOT READY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    aget v5, v2, v5

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v3, :cond_2

    const-string/jumbo v3, "sim operator length is invalid"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    invoke-static {v5}, Lcom/oneplus/android/wifi/OpWifiPasspoint;->buildRealm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setup Realm:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    new-instance v7, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v7}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    invoke-virtual {v7, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    const-string v8, "Passpoint"

    invoke-virtual {v7, v8}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    new-instance v8, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v8}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    new-instance v9, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v9}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    invoke-virtual {v9, v6}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    invoke-virtual {v8, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isTmobileSku()Z

    move-result v10

    const/16 v11, 0x17

    if-eqz v10, :cond_3

    invoke-virtual {v9, v11}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v10

    const-string/jumbo v12, "t-mobile.com"

    invoke-virtual {v10, v12}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isSprintSku()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v11}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Passpoint Setup providerFriendlyName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Realm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", FQDN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", EapType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSubId null or empty, phoneSlot: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

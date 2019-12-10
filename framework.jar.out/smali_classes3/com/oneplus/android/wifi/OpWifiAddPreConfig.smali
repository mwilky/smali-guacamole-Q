.class public Lcom/oneplus/android/wifi/OpWifiAddPreConfig;
.super Ljava/lang/Object;
.source "OpWifiAddPreConfig.java"


# static fields
.field private static final INVALID_OPERATOR_ID:I = -0x1

.field private static final OPERATOR_DE_ID:I = 0x0

.field private static final OPERATOR_NEED_ADD_CONFIG:[I

.field private static final PRODUCT_NEED_ADD_CONFIG:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OpWifiAddPreConfig"

.field private static mNeedAddConfigOpeator:I

.field private static mNetworkId:I

.field private static mProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, -0x1

    sput v0, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNetworkId:I

    const-string/jumbo v0, "ro.product.name"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mProductName:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNeedAddConfigOpeator:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v0, v2, v0

    sput-object v2, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->OPERATOR_NEED_ADD_CONFIG:[I

    const/16 v2, 0x8

    new-array v2, v2, [[Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "SS8865"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "OnePlus7T"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "SS8827"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "OnePlus7ProNR_EEA"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string v0, "SS8821"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-string v0, "OnePlus7Pro_EEA"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v2, v1

    const-string v0, "SS9801"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v2, v1

    const-string v0, "OnePlus7TPro"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v2, v1

    sput-object v2, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->PRODUCT_NEED_ADD_CONFIG:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDeOperatorConfig(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mncmcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; gid1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; spn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiAddPreConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->isDeOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->isDeGid1(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->isDeSpn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p0, p3}, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->addDeWifiPreConfig(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public static addDeWifiPreConfig(Landroid/content/Context;I)V
    .locals 5

    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v2, "\"Telekom_SIM\""

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v2, "OpWifiAddPreConfig"

    if-eqz v0, :cond_1

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNetworkId:I

    sget v3, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNetworkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string v3, "add wifi config fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RemoteException: "

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    const-string v3, "WifiService is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static addWifiConfig(Landroid/content/Context;I)V
    .locals 9

    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->isNeedAddConfig()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set wifi config, phoneSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWifiAddPreConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const-string v2, "SIM NOT READY"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v4, v2

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->OPERATOR_NEED_ADD_CONFIG:[I

    array-length v7, v6

    if-ge v5, v7, :cond_5

    sget v7, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNeedAddConfigOpeator:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_4

    aget v3, v6, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find operator : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, p0, v4, v0, p1}, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->addWifiConfigInternal(ILandroid/content/Context;Ljava/lang/String;Landroid/telephony/TelephonyManager;I)V

    sget v6, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNeedAddConfigOpeator:I

    shr-int/2addr v6, v8

    sput v6, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNeedAddConfigOpeator:I

    sget v6, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNeedAddConfigOpeator:I

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string/jumbo v3, "sim operator length is invalid"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubId null or empty, phoneSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addWifiConfigInternal(ILandroid/content/Context;Ljava/lang/String;Landroid/telephony/TelephonyManager;I)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3, p2, p4}, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->addDeOperatorConfig(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V

    nop

    :goto_0
    return-void
.end method

.method public static isDeGid1(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "99"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isDeOperator(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "26201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeSpn(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "Telekom.de"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "T-Mobile D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Business"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Privat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isNeedAddConfig()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->PRODUCT_NEED_ADD_CONFIG:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mProductName:Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->PRODUCT_NEED_ADD_CONFIG:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mNeedAddConfigOpeator:I

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProductName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/wifi/OpWifiAddPreConfig;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not need add pre-config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWifiAddPreConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

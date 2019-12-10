.class public Lcom/oneplus/android/wifi/OpWifiCustomizeReader;
.super Ljava/lang/Object;
.source "OpWifiCustomizeReader.java"


# static fields
.field static final IS_USS:Z

.field static final IS_UST:Z

.field private static final PRODUCT_NOTNEED_TCPTIMESTAMPSCONTROL:[Ljava/lang/String;

.field private static final SKU_SPRINT_18825:Ljava/lang/String; = "18825"

.field private static final SKU_TMO_18811:Ljava/lang/String; = "18811"

.field private static final SKU_TMO_18831:Ljava/lang/String; = "18831"

.field private static final SKU_TMO_19861:Ljava/lang/String; = "19861"

.field private static final SKU_UNIFY_19863:Ljava/lang/String; = "19863"

.field private static final TAG:Ljava/lang/String; = "OpWifiCustomizeReader"

.field private static mProductName:Ljava/lang/String;

.field private static mProjectNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.boot.project_name"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProductName:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string/jumbo v3, "ro.boot.opcarrier"

    if-eqz v1, :cond_0

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "tmo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->IS_UST:Z

    new-array v1, v0, [I

    const/16 v4, 0x97

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sprint"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->IS_USS:Z

    const-string v1, "OnePlus3"

    const-string v2, "OnePlus3T"

    const-string v3, "OnePlus5"

    const-string v4, "OnePlus5T"

    const-string v5, "OnePlus6"

    const-string v6, "P7819"

    const-string v7, "EC101"

    const-string v8, "P8801"

    const-string v9, "P8811"

    const-string v10, "OnePlus6T"

    const-string v11, "OnePlus6TSingle"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->PRODUCT_NOTNEED_TCPTIMESTAMPSCONTROL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDisconnectDelay(Landroid/content/Context;)Z
    .locals 6

    nop

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const-string v2, "OpWifiCustomizeReader"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MccMnc is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "20820"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "20821"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "20888"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "23420"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "23594"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    nop

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_2
    const-string v3, "Telephony service is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isNeedTcpTimestampsControl()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->PRODUCT_NOTNEED_TCPTIMESTAMPSCONTROL:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProductName:Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedTcpTimestampsControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWifiCustomizeReader"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSprintSku()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "18825"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->IS_USS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPasspoint()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "18811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "18831"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "18825"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "19863"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "19861"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isTmobileSku()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "18811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->mProjectNum:Ljava/lang/String;

    const-string v1, "18831"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->IS_UST:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

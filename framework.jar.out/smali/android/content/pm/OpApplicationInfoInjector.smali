.class public Landroid/content/pm/OpApplicationInfoInjector;
.super Ljava/lang/Object;
.source "OpApplicationInfoInjector.java"


# static fields
.field private static final WHITELISTED_ONEPLUS_APPS_FOR_HIDDEN_APIS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "com.oneplus.soundrecorder"

    const-string v2, "com.oneplus.calculator"

    const-string v3, "net.oneplus.forums"

    const-string v4, "com.oneplus.bbs"

    const-string v5, "net.oneplus.weather"

    const-string v6, "com.oneplus.note"

    const-string v7, "com.oneplus.card"

    const-string v8, "cn.oneplus.filedash"

    const-string v9, "com.google.android.syncadapters.contacts"

    const-string v10, "com.google.android.partnersetup"

    const-string v11, "com.tsinghua.tairapitest"

    const-string v12, "com.tsinghua.tairapitestm"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/pm/OpApplicationInfoInjector;->WHITELISTED_ONEPLUS_APPS_FOR_HIDDEN_APIS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWhitelistedOneplusApp(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/content/pm/OpApplicationInfoInjector;->WHITELISTED_ONEPLUS_APPS_FOR_HIDDEN_APIS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

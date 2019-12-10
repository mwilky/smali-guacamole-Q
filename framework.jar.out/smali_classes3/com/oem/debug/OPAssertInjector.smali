.class public Lcom/oem/debug/OPAssertInjector;
.super Ljava/lang/Object;
.source "OPAssertInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static assertInstance:Lcom/oem/debug/IOPAssert;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oem/debug/OPAssertInjector;->DEBUG:Z

    const-class v0, Lcom/oem/debug/OPAssertInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oem/debug/OPAssertInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/oem/debug/OPAssertInjector;->initInstance()V

    sget-object v0, Lcom/oem/debug/OPAssertInjector;->assertInstance:Lcom/oem/debug/IOPAssert;

    invoke-interface {v0, p0, p1, p2}, Lcom/oem/debug/IOPAssert;->epitaph(Ljava/io/File;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method private static initInstance()V
    .locals 2

    sget-boolean v0, Lcom/oem/debug/OPAssertInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oem/debug/OPAssertInjector;->TAG:Ljava/lang/String;

    const-string v1, "call ASSERT.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/oem/debug/OPAssertInjector;->assertInstance:Lcom/oem/debug/IOPAssert;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_REDSCREEN_ASSERTION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oem/debug/IOPAssert;

    sput-object v0, Lcom/oem/debug/OPAssertInjector;->assertInstance:Lcom/oem/debug/IOPAssert;

    :cond_1
    return-void
.end method

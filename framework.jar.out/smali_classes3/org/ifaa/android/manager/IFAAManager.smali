.class public abstract Lorg/ifaa/android/manager/IFAAManager;
.super Ljava/lang/Object;
.source "IFAAManager.java"


# static fields
.field public static final AUTH_TYPE_FACE:I = 0x4

.field public static final AUTH_TYPE_FINGERPRINT:I = 0x1

.field public static final AUTH_TYPE_IRIS:I = 0x2

.field public static final AUTH_TYPE_NOT_SUPPORT:I = 0x0

.field public static final COMMAND_FAIL:I = -0x1

.field public static final COMMAND_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getSupportBIOTypes(Landroid/content/Context;)I
.end method

.method public abstract getVersion()I
.end method

.method public native processCmd(Landroid/content/Context;[B)[B
.end method

.method public abstract startBIOManager(Landroid/content/Context;I)I
.end method

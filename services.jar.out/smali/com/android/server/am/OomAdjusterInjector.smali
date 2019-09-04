.class public Lcom/android/server/am/OomAdjusterInjector;
.super Ljava/lang/Object;
.source "OomAdjusterInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final DEBUG_PROCESS_ADJ_CONTROL:Z

.field private static final PROCESS_ADJ_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OomAdjusterInjector"

.field private static opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_ONEPLUS:Z

    nop

    const-string v0, "OomAdjusterInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    new-array v0, v1, [I

    const/16 v1, 0xc1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustProcessAdj(Ljava/lang/String;I)I
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustProcessAdj(), packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curAdj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjusterInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, p1

    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-nez v1, :cond_1

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IOpProcessAdjControl;

    sput-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    :cond_1
    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, p1}, Lcom/android/server/am/IOpProcessAdjControl;->forImportant(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    invoke-interface {v1, p0, v0}, Lcom/android/server/am/IOpProcessAdjControl;->forForeground(Ljava/lang/String;I)I

    move-result v0

    :cond_2
    return v0
.end method

.method public static sustainEmpty(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "embryo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

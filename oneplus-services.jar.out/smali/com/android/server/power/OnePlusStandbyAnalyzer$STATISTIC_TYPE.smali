.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATISTIC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field public static final enum Aja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field public static final enum Bja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field public static final enum zja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    const/4 v1, 0x0

    const-string v2, "SIPPER"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->zja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    const/4 v2, 0x1

    const-string v3, "WAKELOCK_WAKEUP"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->Aja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    const/4 v3, 0x2

    const-string v4, "KWL_WR"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->Bja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->zja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->Aja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->Bja:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    return-object v0
.end method

.class public final enum Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/custom/utils/OpCustomizeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CUSTOM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

.field public static final enum AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

.field public static final enum JCC:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

.field public static final enum MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

.field public static final enum NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

.field public static final enum SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

.field public static final enum cka:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    const/4 v2, 0x1

    const-string v3, "JCC"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    const/4 v3, 0x2

    const-string v4, "SW"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    const/4 v4, 0x3

    const-string v5, "AVG"

    invoke-direct {v0, v5, v4}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    const/4 v5, 0x4

    const-string v6, "MCL"

    invoke-direct {v0, v6, v5}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    const/4 v6, 0x5

    const-string v7, "OPR_RETAIL"

    invoke-direct {v0, v7, v6}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->cka:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    sget-object v7, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->cka:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->$VALUES:[Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 1

    const-class v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 1

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->$VALUES:[Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-virtual {v0}, [Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v0
.end method

.class Lcom/android/server/am/h$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/h;


# direct methods
.method private constructor <init>(Lcom/android/server/am/h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/h$zta;->this$0:Lcom/android/server/am/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/h;Lcom/android/server/am/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/h$zta;-><init>(Lcom/android/server/am/h;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/h$zta;->this$0:Lcom/android/server/am/h;

    invoke-static {p0, p1}, Lcom/android/server/am/h;->zta(Lcom/android/server/am/h;Lorg/json/JSONArray;)V

    return-void
.end method

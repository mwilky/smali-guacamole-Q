.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;

    invoke-direct {v0}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;-><init>()V

    sput-object v0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;->INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserActivity$ChooserListAdapter$0o9wjP10lRaguh-ZLgVIZcGRo0w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->lambda$completeServiceTargetLoading$0(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)Z

    move-result p1

    return p1
.end method

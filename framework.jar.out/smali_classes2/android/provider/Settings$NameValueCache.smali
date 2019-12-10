.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    return-void
.end method


# virtual methods
.method public clearGenerationTrackerForTest()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    :cond_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 24
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v0, p3

    const/16 v2, 0x3e7

    move/from16 v9, p3

    if-ne v9, v2, :cond_0

    sget-object v2, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v0

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v10, v0, :cond_1

    move v0, v11

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    move v13, v0

    const/4 v2, -0x1

    if-eqz v13, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_2

    :cond_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :cond_3
    :goto_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    move v2, v0

    :cond_4
    monitor-exit p0

    move v14, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v14, v2

    :goto_3
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v22

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    if-nez v13, :cond_6

    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "_user"

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    goto :goto_4

    :cond_6
    move-object v2, v0

    :goto_4
    const/4 v3, 0x0

    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v13, :cond_8

    :try_start_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v0, :cond_8

    const/4 v3, 0x1

    if-nez v2, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    :cond_7
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v2

    move/from16 v16, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_8
    move-object/from16 v17, v2

    move/from16 v16, v3

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-wide/from16 v18, v2

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->access$000(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v17

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object v2, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->access$000(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v17

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_e

    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    if-eqz v13, :cond_d

    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v16, :cond_b

    :try_start_7
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    const-string v4, "_generation_index"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v0, :cond_b

    if-ltz v4, :cond_b

    const-string v5, "_generation"

    invoke-virtual {v2, v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v6, :cond_a

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v6}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    :cond_a
    new-instance v6, Landroid/provider/Settings$GenerationTracker;

    new-instance v7, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;

    invoke-direct {v7, v1}, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v6, v0, v4, v5, v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    :cond_b
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_c

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    monitor-exit p0

    goto :goto_7

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_d
    :goto_7
    return-object v3

    :cond_e
    goto :goto_9

    :catchall_4
    move-exception v0

    move/from16 v3, v16

    move-object/from16 v2, v17

    :goto_8
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    :cond_f
    :goto_9
    const/16 v23, 0x0

    :try_start_b
    const-string/jumbo v0, "name=?"

    new-array v2, v11, [Ljava/lang/String;

    aput-object v8, v2, v12
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const/4 v11, 0x0

    :try_start_c
    invoke-static {v0, v2, v11}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-wide/from16 v16, v2

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, v22

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object/from16 v23, v0

    :try_start_e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object/from16 v2, v23

    goto :goto_a

    :catchall_5
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v19, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-object/from16 v18, v0

    move-object/from16 v20, v6

    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object v2, v0

    :goto_a
    if-nez v2, :cond_12

    :try_start_f
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    nop

    if-eqz v2, :cond_11

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11
    return-object v11

    :cond_12
    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_13
    move-object v7, v11

    :goto_b
    move-object v3, v7

    monitor-enter p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :try_start_11
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_14

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_6
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catchall_7
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_c

    :catchall_8
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    :goto_c
    :try_start_14
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    nop

    if-eqz v23, :cond_15

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_15
    return-object v11

    :goto_d
    if-eqz v23, :cond_16

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0
.end method

.method public synthetic lambda$getStringForUser$0$Settings$NameValueCache()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "value"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v10, p3

    :try_start_1
    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_user"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v11, p6

    :try_start_2
    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_0

    const-string v3, "_tag"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v12, 0x1

    if-eqz p5, :cond_1

    const-string v3, "_make_default"

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v13, p1

    :try_start_3
    invoke-virtual {v3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v5}, Landroid/provider/Settings$ContentProviderHolder;->access$000(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    move-object/from16 v7, p2

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    move-object v4, p1

    move-object v5, v3

    move/from16 v6, p6

    move-object/from16 v7, p3

    move-object/from16 v9, p2

    invoke-static/range {v4 .. v9}, Landroid/provider/SettingsInjector;->putStringForParallelUser(Landroid/content/ContentResolver;Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    nop

    return v12

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v13, p1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v13, p1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v13, p1

    move-object/from16 v10, p3

    :goto_0
    move/from16 v11, p6

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Settings"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return v3
.end method

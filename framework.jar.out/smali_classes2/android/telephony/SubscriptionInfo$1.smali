.class Landroid/telephony/SubscriptionInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;
    .locals 52

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v2, v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v3, v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v4, v28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v5, v29

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v6, v30

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    move/from16 v7, v31

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v32

    move/from16 v8, v32

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v9, v33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v34

    move/from16 v10, v34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v12, v35

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v13, v36

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v14, v37

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Landroid/graphics/Bitmap;

    move-object/from16 v11, v38

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v39

    move/from16 v15, v39

    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, [Landroid/telephony/UiccAccessRule;

    move-object/from16 v16, v40

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v17, v41

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v18, v42

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v43

    move/from16 v19, v43

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v20, v44

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v45

    move/from16 v21, v45

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v46

    move/from16 v22, v46

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v47

    move/from16 v23, v47

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v48

    move/from16 v24, v48

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v25, v49

    new-instance v50, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v51, v0

    move-object v0, v1

    move-object/from16 v1, v50

    invoke-direct/range {v1 .. v25}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;)V

    move-object/from16 v2, v51

    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionInfo;->setAssociatedPlmns([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/SubscriptionInfo;
    .locals 1

    new-array v0, p1, [Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->newArray(I)[Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

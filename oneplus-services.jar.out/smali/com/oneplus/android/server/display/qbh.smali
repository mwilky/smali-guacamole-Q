.class Lcom/oneplus/android/server/display/qbh;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sis([F[F)[F
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/qbh;->you([F[F)[F

    return-object p1
.end method

.method public static you([F)[F
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x2

    aget v4, p0, v3

    mul-float/2addr v2, v4

    const/4 v4, 0x1

    aget v5, p0, v4

    div-float/2addr v2, v5

    aput v2, v0, v1

    aget v2, p0, v3

    aput v2, v0, v4

    aget v1, p0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    aget v1, p0, v4

    sub-float/2addr v2, v1

    aget v1, p0, v3

    mul-float/2addr v2, v1

    aget p0, p0, v4

    div-float/2addr v2, p0

    aput v2, v0, v3

    return-object v0
.end method

.method public static you([F[F)[F
    .locals 8

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    aget v6, p0, v0

    mul-float/2addr v6, v1

    const/4 v7, 0x3

    aget v7, p0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    aput v6, p1, v0

    aget v0, p0, v2

    mul-float/2addr v0, v1

    const/4 v6, 0x4

    aget v6, p0, v6

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    aput v0, p1, v2

    aget v0, p0, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p0, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget p0, p0, v1

    mul-float/2addr p0, v5

    add-float/2addr v0, p0

    aput v0, p1, v4

    return-object p1
.end method

.method public static zta([F)[F
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v4, v0, v3

    const/4 v5, 0x6

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v8, v0, v7

    const/4 v9, 0x4

    aget v10, v0, v9

    const/4 v11, 0x7

    aget v12, v0, v11

    const/4 v13, 0x2

    aget v14, v0, v13

    const/4 v15, 0x5

    aget v16, v0, v15

    const/16 v17, 0x8

    aget v18, v0, v17

    mul-float v19, v10, v18

    mul-float v20, v12, v16

    sub-float v19, v19, v20

    mul-float v20, v12, v14

    mul-float v21, v8, v18

    sub-float v20, v20, v21

    mul-float v21, v8, v16

    mul-float v22, v10, v14

    sub-float v21, v21, v22

    mul-float v22, v2, v19

    mul-float v23, v4, v20

    add-float v22, v22, v23

    mul-float v23, v6, v21

    add-float v22, v22, v23

    array-length v0, v0

    new-array v0, v0, [F

    div-float v19, v19, v22

    aput v19, v0, v1

    div-float v20, v20, v22

    aput v20, v0, v7

    div-float v21, v21, v22

    aput v21, v0, v13

    mul-float v1, v6, v16

    mul-float v7, v4, v18

    sub-float/2addr v1, v7

    div-float v1, v1, v22

    aput v1, v0, v3

    mul-float v18, v18, v2

    mul-float v1, v6, v14

    sub-float v18, v18, v1

    div-float v18, v18, v22

    aput v18, v0, v9

    mul-float/2addr v14, v4

    mul-float v16, v16, v2

    sub-float v14, v14, v16

    div-float v14, v14, v22

    aput v14, v0, v15

    mul-float v1, v4, v12

    mul-float v3, v6, v10

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    aput v1, v0, v5

    mul-float/2addr v6, v8

    mul-float/2addr v12, v2

    sub-float/2addr v6, v12

    div-float v6, v6, v22

    aput v6, v0, v11

    mul-float/2addr v2, v10

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    div-float v2, v2, v22

    aput v2, v0, v17

    return-object v0
.end method

.method public static zta([F[F)[F
    .locals 25

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    aget v12, p1, v0

    aget v13, p1, v2

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v1

    div-float v16, v15, v3

    sub-float v17, v14, v5

    div-float v18, v17, v7

    sub-float v19, v14, v9

    div-float v20, v19, v11

    sub-float v21, v14, v12

    div-float v21, v21, v13

    div-float v22, v1, v3

    div-float v23, v5, v7

    div-float v24, v9, v11

    div-float/2addr v12, v13

    sub-float v21, v21, v16

    sub-float v23, v23, v22

    mul-float v21, v21, v23

    sub-float v12, v12, v22

    sub-float v18, v18, v16

    mul-float v13, v12, v18

    sub-float v21, v21, v13

    sub-float v20, v20, v16

    mul-float v20, v20, v23

    sub-float v24, v24, v22

    mul-float v18, v18, v24

    sub-float v20, v20, v18

    div-float v21, v21, v20

    mul-float v24, v24, v21

    sub-float v12, v12, v24

    div-float v12, v12, v23

    sub-float/2addr v14, v12

    sub-float v14, v14, v21

    div-float v13, v14, v3

    div-float v16, v12, v7

    div-float v18, v21, v11

    const/16 v10, 0x9

    new-array v10, v10, [F

    mul-float/2addr v1, v13

    aput v1, v10, v0

    aput v14, v10, v2

    sub-float/2addr v15, v3

    mul-float/2addr v13, v15

    aput v13, v10, v4

    mul-float v5, v5, v16

    aput v5, v10, v6

    aput v12, v10, v8

    sub-float v17, v17, v7

    mul-float v16, v16, v17

    const/4 v0, 0x5

    aput v16, v10, v0

    mul-float v9, v9, v18

    const/4 v0, 0x6

    aput v9, v10, v0

    const/4 v0, 0x7

    aput v21, v10, v0

    sub-float v19, v19, v11

    mul-float v18, v18, v19

    const/16 v0, 0x8

    aput v18, v10, v0

    return-object v10
.end method

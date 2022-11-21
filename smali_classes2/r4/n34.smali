.class public final Lr4/n34;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Lr4/lc;->X(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lr4/n34;->a:[B

    return-void
.end method

.method public static a(Lr4/d34;Lr4/p04;JLr4/fz3;ZZLr4/p03;)Ljava/util/List;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/d34;",
            "Lr4/p04;",
            "J",
            "Lr4/fz3;",
            "ZZ",
            "Lr4/p03<",
            "Lr4/d44;",
            "Lr4/d44;",
            ">;)",
            "Ljava/util/List<",
            "Lr4/g44;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_0
    iget-object v2, v0, Lr4/d34;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_93

    iget-object v2, v0, Lr4/d34;->d:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lr4/d34;

    iget v2, v11, Lr4/f34;->a:I

    const v3, 0x7472616b

    if-eq v2, v3, :cond_0

    move-object v0, v13

    move/from16 v31, v15

    goto/16 :goto_68

    :cond_0
    const v2, 0x6d766864

    invoke-virtual {v0, v2}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x6d646961

    invoke-virtual {v11, v10}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x68646c72    # 4.3148E24f

    invoke-virtual {v3, v4}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lr4/e34;->b:Lr4/xb;

    invoke-static {v4}, Lr4/n34;->e(Lr4/xb;)I

    move-result v4

    invoke-static {v4}, Lr4/n34;->f(I)I

    move-result v9

    const-string v7, "AtomParsers"

    const/4 v5, 0x4

    move/from16 v31, v15

    const/4 v6, -0x1

    if-ne v9, v6, :cond_1

    move-object/from16 v0, p7

    move-object/from16 v45, v7

    move-object v2, v11

    move-object/from16 v32, v13

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_3c

    :cond_1
    const v15, 0x746b6864

    invoke-virtual {v11, v15}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Lr4/e34;->b:Lr4/xb;

    const/16 v14, 0x8

    invoke-virtual {v15, v14}, Lr4/xb;->p(I)V

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lr4/f34;->a(I)I

    move-result v18

    const/16 v14, 0x10

    if-nez v18, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    invoke-virtual {v15, v4}, Lr4/xb;->s(I)V

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v4

    invoke-virtual {v15, v5}, Lr4/xb;->s(I)V

    invoke-virtual {v15}, Lr4/xb;->o()I

    move-result v21

    if-nez v18, :cond_3

    const/4 v8, 0x4

    goto :goto_3

    :cond_3
    const/16 v8, 0x8

    :goto_3
    const/4 v10, 0x0

    :goto_4
    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v8, :cond_7

    invoke-virtual {v15}, Lr4/xb;->q()[B

    move-result-object v26

    add-int v27, v21, v10

    aget-byte v5, v26, v27

    if-eq v5, v6, :cond_6

    if-nez v18, :cond_4

    invoke-virtual {v15}, Lr4/xb;->B()J

    move-result-wide v26

    goto :goto_5

    :cond_4
    invoke-virtual {v15}, Lr4/xb;->d()J

    move-result-wide v26

    :goto_5
    const-wide/16 v29, 0x0

    cmp-long v5, v26, v29

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    move-object v8, v7

    move-wide/from16 v6, v26

    goto :goto_7

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x4

    goto :goto_4

    :cond_7
    invoke-virtual {v15, v8}, Lr4/xb;->s(I)V

    :goto_6
    move-object v8, v7

    move-wide/from16 v6, v24

    :goto_7
    invoke-virtual {v15, v14}, Lr4/xb;->s(I)V

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v5

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v10

    const/4 v14, 0x4

    invoke-virtual {v15, v14}, Lr4/xb;->s(I)V

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v14

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v15

    const/high16 v0, 0x10000

    move-object/from16 v26, v8

    const/high16 v8, -0x10000

    if-nez v5, :cond_b

    if-ne v10, v0, :cond_a

    if-ne v14, v8, :cond_9

    if-nez v15, :cond_8

    const/16 v0, 0x5a

    goto :goto_a

    :cond_8
    const/4 v5, 0x0

    const/high16 v10, 0x10000

    const/high16 v14, -0x10000

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    const/high16 v10, 0x10000

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :cond_b
    :goto_8
    if-nez v5, :cond_f

    if-ne v10, v8, :cond_e

    if-ne v14, v0, :cond_c

    if-nez v15, :cond_d

    const/16 v0, 0x10e

    goto :goto_a

    :cond_c
    move v0, v14

    :cond_d
    const/4 v5, 0x0

    const/high16 v10, -0x10000

    goto :goto_9

    :cond_e
    move v0, v14

    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    move v0, v14

    :goto_9
    if-ne v5, v8, :cond_10

    if-nez v10, :cond_10

    if-nez v0, :cond_10

    if-ne v15, v8, :cond_10

    const/16 v0, 0xb4

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    new-instance v14, Lr4/m34;

    invoke-direct {v14, v4, v6, v7, v0}, Lr4/m34;-><init>(IJI)V

    cmp-long v0, p2, v24

    if-nez v0, :cond_11

    invoke-static {v14}, Lr4/m34;->b(Lr4/m34;)J

    move-result-wide v4

    move-wide/from16 v32, v4

    goto :goto_b

    :cond_11
    move-wide/from16 v32, p2

    :goto_b
    iget-object v0, v2, Lr4/e34;->b:Lr4/xb;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v2

    invoke-static {v2}, Lr4/f34;->a(I)I

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x8

    goto :goto_c

    :cond_12
    const/16 v2, 0x10

    :goto_c
    invoke-virtual {v0, v2}, Lr4/xb;->s(I)V

    invoke-virtual {v0}, Lr4/xb;->B()J

    move-result-wide v29

    cmp-long v0, v32, v24

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    const-wide/32 v34, 0xf4240

    move-wide/from16 v36, v29

    invoke-static/range {v32 .. v37}, Lr4/lc;->h(JJJ)J

    move-result-wide v4

    move-wide/from16 v24, v4

    :goto_d
    const v0, 0x6d696e66

    invoke-virtual {v3, v0}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374626c

    invoke-virtual {v2, v4}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x6d646864

    invoke-virtual {v3, v4}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lr4/e34;->b:Lr4/xb;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lr4/xb;->p(I)V

    invoke-virtual {v3}, Lr4/xb;->D()I

    move-result v4

    invoke-static {v4}, Lr4/f34;->a(I)I

    move-result v4

    if-nez v4, :cond_14

    const/16 v5, 0x8

    goto :goto_e

    :cond_14
    const/16 v5, 0x10

    :goto_e
    invoke-virtual {v3, v5}, Lr4/xb;->s(I)V

    invoke-virtual {v3}, Lr4/xb;->B()J

    move-result-wide v5

    if-nez v4, :cond_15

    const/4 v4, 0x4

    goto :goto_f

    :cond_15
    const/16 v4, 0x8

    :goto_f
    invoke-virtual {v3, v4}, Lr4/xb;->s(I)V

    invoke-virtual {v3}, Lr4/xb;->w()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v7, v3, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v3, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const v3, 0x73747364

    invoke-virtual {v2, v3}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v2, Lr4/e34;->b:Lr4/xb;

    invoke-static {v14}, Lr4/m34;->a(Lr4/m34;)I

    move-result v7

    invoke-static {v14}, Lr4/m34;->c(Lr4/m34;)I

    move-result v6

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v8, v4}, Lr4/xb;->p(I)V

    invoke-virtual {v8}, Lr4/xb;->D()I

    move-result v3

    new-instance v2, Lr4/j34;

    invoke-direct {v2, v3}, Lr4/j34;-><init>(I)V

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_4f

    invoke-virtual {v8}, Lr4/xb;->o()I

    move-result v15

    move-object/from16 v32, v13

    invoke-virtual {v8}, Lr4/xb;->D()I

    move-result v13

    if-lez v13, :cond_16

    move/from16 v33, v3

    const/4 v4, 0x1

    goto :goto_11

    :cond_16
    move/from16 v33, v3

    const/4 v4, 0x0

    :goto_11
    const-string v3, "childAtomSize must be positive"

    invoke-static {v4, v3}, Lr4/e04;->a(ZLjava/lang/String;)V

    invoke-virtual {v8}, Lr4/xb;->D()I

    move-result v3

    const v4, 0x61766331

    move/from16 v34, v6

    const v6, 0x656e6376

    if-eq v3, v4, :cond_22

    const v4, 0x61766333

    if-eq v3, v4, :cond_22

    if-eq v3, v6, :cond_22

    const v4, 0x6d317620

    if-eq v3, v4, :cond_22

    const v4, 0x6d703476

    if-eq v3, v4, :cond_22

    const v4, 0x68766331

    if-eq v3, v4, :cond_22

    const v4, 0x68657631

    if-eq v3, v4, :cond_22

    const v4, 0x73323633

    if-eq v3, v4, :cond_22

    const v4, 0x48323633

    if-eq v3, v4, :cond_22

    const v4, 0x76703038

    if-eq v3, v4, :cond_22

    const v4, 0x76703039

    if-eq v3, v4, :cond_22

    const v4, 0x61763031

    if-eq v3, v4, :cond_22

    const v4, 0x64766176

    if-eq v3, v4, :cond_22

    const v4, 0x64766131

    if-eq v3, v4, :cond_22

    const v4, 0x64766865

    if-eq v3, v4, :cond_22

    const v4, 0x64766831

    if-ne v3, v4, :cond_17

    goto/16 :goto_18

    :cond_17
    const v4, 0x6d703461

    if-eq v3, v4, :cond_21

    const v4, 0x656e6361

    if-eq v3, v4, :cond_21

    const v4, 0x61632d33

    if-eq v3, v4, :cond_21

    const v4, 0x65632d33

    if-eq v3, v4, :cond_21

    const v4, 0x61632d34

    if-eq v3, v4, :cond_21

    const v4, 0x64747363

    if-eq v3, v4, :cond_21

    const v4, 0x64747365

    if-eq v3, v4, :cond_21

    const v4, 0x64747368

    if-eq v3, v4, :cond_21

    const v4, 0x6474736c

    if-eq v3, v4, :cond_21

    const v4, 0x64747378

    if-eq v3, v4, :cond_21

    const v4, 0x73616d72

    if-eq v3, v4, :cond_21

    const v4, 0x73617762

    if-eq v3, v4, :cond_21

    const v4, 0x6c70636d

    if-eq v3, v4, :cond_21

    const v4, 0x736f7774

    if-eq v3, v4, :cond_21

    const v4, 0x74776f73

    if-eq v3, v4, :cond_21

    const v4, 0x2e6d7032

    if-eq v3, v4, :cond_21

    const v4, 0x2e6d7033

    if-eq v3, v4, :cond_21

    const v4, 0x6d686131

    if-eq v3, v4, :cond_21

    const v4, 0x6d686d31

    if-eq v3, v4, :cond_21

    const v4, 0x616c6163

    if-eq v3, v4, :cond_21

    const v4, 0x616c6177

    if-eq v3, v4, :cond_21

    const v4, 0x756c6177

    if-eq v3, v4, :cond_21

    const v4, 0x4f707573

    if-eq v3, v4, :cond_21

    const v4, 0x664c6143

    if-ne v3, v4, :cond_18

    goto/16 :goto_17

    :cond_18
    const v4, 0x54544d4c

    if-eq v3, v4, :cond_1c

    const v4, 0x74783367

    if-eq v3, v4, :cond_1c

    const v4, 0x77767474

    if-eq v3, v4, :cond_1c

    const v4, 0x73747070

    if-eq v3, v4, :cond_1c

    const v4, 0x63363038

    if-ne v3, v4, :cond_19

    goto :goto_13

    :cond_19
    const v4, 0x6d657474

    if-ne v3, v4, :cond_1a

    add-int/lit8 v3, v15, 0x10

    invoke-virtual {v8, v3}, Lr4/xb;->p(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lr4/xb;->g(C)Ljava/lang/String;

    invoke-virtual {v8, v3}, Lr4/xb;->g(C)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    new-instance v3, Lr4/c5;

    invoke-direct {v3}, Lr4/c5;-><init>()V

    invoke-virtual {v3, v7}, Lr4/c5;->e(I)Lr4/c5;

    invoke-virtual {v3, v4}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v3}, Lr4/c5;->I()Lr4/e5;

    move-result-object v3

    iput-object v3, v2, Lr4/j34;->b:Lr4/e5;

    goto :goto_12

    :cond_1a
    const v4, 0x63616d6d

    if-ne v3, v4, :cond_1b

    new-instance v3, Lr4/c5;

    invoke-direct {v3}, Lr4/c5;-><init>()V

    invoke-virtual {v3, v7}, Lr4/c5;->e(I)Lr4/c5;

    const-string v4, "application/x-camera-motion"

    invoke-virtual {v3, v4}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v3}, Lr4/c5;->I()Lr4/e5;

    move-result-object v3

    iput-object v3, v2, Lr4/j34;->b:Lr4/e5;

    :cond_1b
    :goto_12
    move/from16 v17, v0

    move-object/from16 v20, v5

    move v1, v7

    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move/from16 v23, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move/from16 v3, v34

    move-object v9, v2

    goto/16 :goto_16

    :cond_1c
    :goto_13
    add-int/lit8 v4, v15, 0x10

    invoke-virtual {v8, v4}, Lr4/xb;->p(I)V

    const v4, 0x54544d4c

    const-wide v35, 0x7fffffffffffffffL

    if-ne v3, v4, :cond_1d

    const-string v3, "application/ttml+xml"

    :goto_14
    move-object/from16 v37, v10

    const/4 v4, 0x0

    move-wide/from16 v46, v35

    move/from16 v36, v9

    move-wide/from16 v9, v46

    goto :goto_15

    :cond_1d
    const v4, 0x74783367

    if-ne v3, v4, :cond_1e

    add-int/lit8 v3, v13, -0x10

    new-array v4, v3, [B

    const/4 v6, 0x0

    invoke-virtual {v8, v4, v6, v3}, Lr4/xb;->u([BII)V

    invoke-static {v4}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object v3

    const-string v4, "application/x-quicktime-tx3g"

    move-object/from16 v37, v10

    move-object/from16 v46, v4

    move-object v4, v3

    move-object/from16 v3, v46

    move-wide/from16 v47, v35

    move/from16 v36, v9

    move-wide/from16 v9, v47

    goto :goto_15

    :cond_1e
    const v4, 0x77767474

    if-ne v3, v4, :cond_1f

    const-string v3, "application/x-mp4-vtt"

    goto :goto_14

    :cond_1f
    const v4, 0x73747070

    if-ne v3, v4, :cond_20

    const-string v3, "application/ttml+xml"

    move/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    goto :goto_15

    :cond_20
    const/4 v3, 0x1

    iput v3, v2, Lr4/j34;->d:I

    const-string v3, "application/x-mp4-cea-608"

    goto :goto_14

    :goto_15
    new-instance v6, Lr4/c5;

    invoke-direct {v6}, Lr4/c5;-><init>()V

    invoke-virtual {v6, v7}, Lr4/c5;->e(I)Lr4/c5;

    invoke-virtual {v6, v3}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v6, v5}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v6, v9, v10}, Lr4/c5;->r(J)Lr4/c5;

    invoke-virtual {v6, v4}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v6}, Lr4/c5;->I()Lr4/e5;

    move-result-object v3

    iput-object v3, v2, Lr4/j34;->b:Lr4/e5;

    move/from16 v17, v0

    move-object v9, v2

    move-object/from16 v20, v5

    move v1, v7

    move-object/from16 v40, v11

    move/from16 v23, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move/from16 v3, v34

    move/from16 v22, v36

    move-object/from16 v39, v37

    :goto_16
    move-object v14, v8

    goto/16 :goto_36

    :cond_21
    :goto_17
    move/from16 v36, v9

    move-object/from16 v37, v10

    move-object v9, v2

    move-object v2, v8

    const/16 v6, 0xc

    const/4 v10, 0x2

    move v4, v15

    move-object/from16 v20, v5

    const/4 v1, 0x4

    move v5, v13

    move/from16 v1, v34

    move v6, v7

    move-object/from16 v18, v14

    move v14, v7

    move-object/from16 v46, v26

    move/from16 v26, v1

    move-object/from16 v1, v46

    move-object/from16 v7, v20

    move/from16 v27, v14

    move-object v14, v8

    move/from16 v8, p6

    move-object/from16 v17, v9

    move/from16 v22, v36

    move-object/from16 v9, p4

    move-object/from16 v36, v1

    move-object/from16 v39, v37

    const/4 v1, 0x2

    move-object/from16 v10, v17

    move-object/from16 v40, v11

    move v11, v0

    invoke-static/range {v2 .. v11}, Lr4/n34;->g(Lr4/xb;IIIILjava/lang/String;ZLr4/fz3;Lr4/j34;I)V

    move/from16 v23, v13

    move-object/from16 v9, v17

    move/from16 v3, v26

    move/from16 v1, v27

    move-object/from16 v45, v36

    move/from16 v17, v0

    goto/16 :goto_36

    :cond_22
    :goto_18
    move-object/from16 v17, v2

    move-object/from16 v20, v5

    move/from16 v27, v7

    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v18, v14

    move-object/from16 v36, v26

    move/from16 v26, v34

    const/4 v1, 0x2

    move-object v14, v8

    add-int/lit8 v2, v15, 0x10

    invoke-virtual {v14, v2}, Lr4/xb;->p(I)V

    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lr4/xb;->s(I)V

    invoke-virtual {v14}, Lr4/xb;->w()I

    move-result v4

    invoke-virtual {v14}, Lr4/xb;->w()I

    move-result v5

    const/16 v7, 0x32

    invoke-virtual {v14, v7}, Lr4/xb;->s(I)V

    invoke-virtual {v14}, Lr4/xb;->o()I

    move-result v7

    if-ne v3, v6, :cond_25

    invoke-static {v14, v15, v13}, Lr4/n34;->i(Lr4/xb;II)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_24

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v12, :cond_23

    move-object/from16 v9, v17

    const/4 v8, 0x0

    goto :goto_19

    :cond_23
    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lr4/e44;

    iget-object v8, v8, Lr4/e44;->b:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lr4/fz3;->a(Ljava/lang/String;)Lr4/fz3;

    move-result-object v8

    move-object/from16 v9, v17

    :goto_19
    iget-object v10, v9, Lr4/j34;->a:[Lr4/e44;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lr4/e44;

    aput-object v3, v10, v0

    move v3, v6

    goto :goto_1a

    :cond_24
    move-object/from16 v9, v17

    move-object v8, v12

    const v3, 0x656e6376

    :goto_1a
    invoke-virtual {v14, v7}, Lr4/xb;->p(I)V

    goto :goto_1b

    :cond_25
    move-object/from16 v9, v17

    move-object v8, v12

    :goto_1b
    const v6, 0x6d317620

    if-ne v3, v6, :cond_26

    const-string v6, "video/mpeg"

    move-object/from16 v46, v6

    move v6, v3

    move-object/from16 v3, v46

    goto :goto_1c

    :cond_26
    const v6, 0x48323633

    if-ne v3, v6, :cond_27

    const-string v3, "video/3gpp"

    goto :goto_1c

    :cond_27
    move v6, v3

    const/4 v3, 0x0

    :goto_1c
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v7

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/high16 v44, 0x3f800000    # 1.0f

    move-object v7, v3

    const/4 v3, 0x0

    :goto_1d
    sub-int v1, v11, v15

    if-ge v1, v13, :cond_4d

    invoke-virtual {v14, v11}, Lr4/xb;->p(I)V

    invoke-virtual {v14}, Lr4/xb;->o()I

    move-result v1

    invoke-virtual {v14}, Lr4/xb;->D()I

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v14}, Lr4/xb;->o()I

    move-result v17

    sub-int v12, v17, v15

    if-ne v12, v13, :cond_28

    goto/16 :goto_35

    :cond_28
    const/4 v12, 0x0

    goto :goto_1e

    :cond_29
    move/from16 v12, v17

    :goto_1e
    if-lez v12, :cond_2a

    move/from16 v17, v0

    move/from16 v23, v13

    const/4 v0, 0x1

    goto :goto_1f

    :cond_2a
    move/from16 v17, v0

    move/from16 v23, v13

    const/4 v0, 0x0

    :goto_1f
    const-string v13, "childAtomSize must be positive"

    invoke-static {v0, v13}, Lr4/e04;->a(ZLjava/lang/String;)V

    invoke-virtual {v14}, Lr4/xb;->D()I

    move-result v0

    const v13, 0x61766343

    if-ne v0, v13, :cond_2d

    if-nez v7, :cond_2b

    const/4 v0, 0x1

    goto :goto_20

    :cond_2b
    const/4 v0, 0x0

    :goto_20
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lr4/e04;->a(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v14, v1}, Lr4/xb;->p(I)V

    invoke-static {v14}, Lr4/kz3;->a(Lr4/xb;)Lr4/kz3;

    move-result-object v0

    iget-object v1, v0, Lr4/kz3;->a:Ljava/util/List;

    iget v2, v0, Lr4/kz3;->b:I

    iput v2, v9, Lr4/j34;->c:I

    if-nez v3, :cond_2c

    iget v2, v0, Lr4/kz3;->e:F

    move/from16 v44, v2

    :cond_2c
    iget-object v0, v0, Lr4/kz3;->f:Ljava/lang/String;

    const-string v2, "video/avc"

    goto :goto_22

    :cond_2d
    const v13, 0x68766343

    if-ne v0, v13, :cond_2f

    if-nez v7, :cond_2e

    const/4 v0, 0x1

    goto :goto_21

    :cond_2e
    const/4 v0, 0x0

    :goto_21
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lr4/e04;->a(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v14, v1}, Lr4/xb;->p(I)V

    invoke-static {v14}, Lr4/q04;->a(Lr4/xb;)Lr4/q04;

    move-result-object v0

    iget-object v1, v0, Lr4/q04;->a:Ljava/util/List;

    iget v2, v0, Lr4/q04;->b:I

    iput v2, v9, Lr4/j34;->c:I

    iget-object v0, v0, Lr4/q04;->c:Ljava/lang/String;

    const-string v2, "video/hevc"

    :goto_22
    move-object/from16 v41, v0

    move-object v7, v2

    move-object/from16 v45, v36

    move-object v2, v1

    :goto_23
    move/from16 v36, v6

    goto/16 :goto_34

    :cond_2f
    const v13, 0x64766343

    if-eq v0, v13, :cond_4b

    const v13, 0x64767643

    if-ne v0, v13, :cond_30

    goto/16 :goto_32

    :cond_30
    const v13, 0x76706343

    if-ne v0, v13, :cond_33

    if-nez v7, :cond_31

    const/4 v0, 0x1

    goto :goto_24

    :cond_31
    const/4 v0, 0x0

    :goto_24
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/e04;->a(ZLjava/lang/String;)V

    const v0, 0x76703038

    if-ne v6, v0, :cond_32

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_26

    :cond_32
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_26

    :cond_33
    const v13, 0x61763143

    if-ne v0, v13, :cond_35

    if-nez v7, :cond_34

    const/4 v0, 0x1

    goto :goto_25

    :cond_34
    const/4 v0, 0x0

    :goto_25
    const/4 v13, 0x0

    invoke-static {v0, v13}, Lr4/e04;->a(ZLjava/lang/String;)V

    const-string v0, "video/av01"

    :goto_26
    move-object v7, v0

    :goto_27
    move-object/from16 v45, v36

    goto :goto_23

    :cond_35
    const v13, 0x64323633

    if-ne v0, v13, :cond_37

    if-nez v7, :cond_36

    const/4 v0, 0x1

    goto :goto_28

    :cond_36
    const/4 v0, 0x0

    :goto_28
    const/4 v13, 0x0

    invoke-static {v0, v13}, Lr4/e04;->a(ZLjava/lang/String;)V

    const-string v0, "video/3gpp"

    goto :goto_26

    :cond_37
    const v13, 0x65736473

    if-ne v0, v13, :cond_3a

    if-nez v7, :cond_38

    const/4 v0, 0x1

    goto :goto_29

    :cond_38
    const/4 v0, 0x0

    :goto_29
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lr4/e04;->a(ZLjava/lang/String;)V

    invoke-static {v14, v1}, Lr4/n34;->h(Lr4/xb;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_39

    invoke-static {v0}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object v2

    :cond_39
    move-object v7, v1

    goto :goto_27

    :cond_3a
    const v13, 0x70617370

    if-ne v0, v13, :cond_3b

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v14, v1}, Lr4/xb;->p(I)V

    invoke-virtual {v14}, Lr4/xb;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v14}, Lr4/xb;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    move/from16 v44, v0

    move-object/from16 v45, v36

    const/4 v3, 0x1

    goto/16 :goto_23

    :cond_3b
    const v13, 0x73763364

    if-ne v0, v13, :cond_3e

    add-int/lit8 v0, v1, 0x8

    :goto_2a
    sub-int v13, v0, v1

    if-ge v13, v12, :cond_3d

    invoke-virtual {v14, v0}, Lr4/xb;->p(I)V

    invoke-virtual {v14}, Lr4/xb;->D()I

    move-result v13

    move/from16 v28, v1

    invoke-virtual {v14}, Lr4/xb;->D()I

    move-result v1

    move/from16 v37, v3

    const v3, 0x70726f6a

    if-ne v1, v3, :cond_3c

    invoke-virtual {v14}, Lr4/xb;->q()[B

    move-result-object v1

    add-int/2addr v13, v0

    invoke-static {v1, v0, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_2b

    :cond_3c
    add-int/2addr v0, v13

    move/from16 v1, v28

    move/from16 v3, v37

    goto :goto_2a

    :cond_3d
    move/from16 v37, v3

    const/4 v0, 0x0

    :goto_2b
    move-object/from16 v42, v0

    goto :goto_2c

    :cond_3e
    move/from16 v37, v3

    const v1, 0x73743364

    if-ne v0, v1, :cond_44

    invoke-virtual {v14}, Lr4/xb;->v()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {v14, v1}, Lr4/xb;->s(I)V

    if-nez v0, :cond_43

    invoke-virtual {v14}, Lr4/xb;->v()I

    move-result v0

    if-eqz v0, :cond_42

    const/4 v3, 0x1

    if-eq v0, v3, :cond_41

    const/4 v3, 0x2

    if-eq v0, v3, :cond_40

    if-eq v0, v1, :cond_3f

    goto :goto_2c

    :cond_3f
    const/4 v10, 0x3

    goto :goto_2c

    :cond_40
    const/4 v10, 0x2

    goto :goto_2c

    :cond_41
    const/4 v10, 0x1

    goto :goto_2c

    :cond_42
    const/4 v10, 0x0

    :cond_43
    :goto_2c
    move-object/from16 v45, v36

    move/from16 v3, v37

    goto/16 :goto_23

    :cond_44
    const/4 v1, 0x3

    const v3, 0x636f6c72

    if-ne v0, v3, :cond_4a

    invoke-virtual {v14}, Lr4/xb;->D()I

    move-result v0

    const v3, 0x6e636c78

    if-eq v0, v3, :cond_47

    const v3, 0x6e636c63

    if-ne v0, v3, :cond_45

    goto :goto_2e

    :cond_45
    invoke-static {v0}, Lr4/f34;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unsupported color type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_46

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2d
    move-object/from16 v3, v36

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v45, v3

    goto :goto_31

    :cond_47
    :goto_2e
    move-object/from16 v3, v36

    invoke-virtual {v14}, Lr4/xb;->w()I

    move-result v13

    invoke-virtual {v14}, Lr4/xb;->w()I

    move-result v16

    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Lr4/xb;->s(I)V

    const v1, 0x6e636c78

    if-ne v0, v1, :cond_48

    invoke-virtual {v14}, Lr4/xb;->v()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_2f

    :cond_48
    const/4 v0, 0x0

    :goto_2f
    invoke-static {v13}, Lr4/av3;->a(I)I

    move-result v1

    const/4 v13, 0x1

    if-eq v13, v0, :cond_49

    const/4 v0, 0x2

    goto :goto_30

    :cond_49
    const/4 v0, 0x1

    :goto_30
    new-instance v13, Lr4/av3;

    move/from16 v36, v6

    invoke-static/range {v16 .. v16}, Lr4/av3;->b(I)I

    move-result v6

    move-object/from16 v45, v3

    const/4 v3, 0x0

    invoke-direct {v13, v1, v0, v6, v3}, Lr4/av3;-><init>(III[B)V

    move-object/from16 v43, v13

    goto :goto_33

    :cond_4a
    move-object/from16 v45, v36

    :goto_31
    move/from16 v36, v6

    goto :goto_33

    :cond_4b
    :goto_32
    move/from16 v37, v3

    move-object/from16 v45, v36

    move/from16 v36, v6

    invoke-static {v14}, Lr4/xz3;->a(Lr4/xb;)Lr4/xz3;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lr4/xz3;->a:Ljava/lang/String;

    const-string v7, "video/dolby-vision"

    move-object/from16 v41, v0

    :cond_4c
    :goto_33
    move/from16 v3, v37

    :goto_34
    add-int/2addr v11, v12

    move-object/from16 v12, p4

    move/from16 v0, v17

    move/from16 v13, v23

    move/from16 v6, v36

    move-object/from16 v36, v45

    goto/16 :goto_1d

    :cond_4d
    :goto_35
    move/from16 v17, v0

    move/from16 v23, v13

    move-object/from16 v45, v36

    if-eqz v7, :cond_4e

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lr4/c5;->e(I)Lr4/c5;

    invoke-virtual {v0, v7}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    move-object/from16 v3, v41

    invoke-virtual {v0, v3}, Lr4/c5;->k(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0, v4}, Lr4/c5;->s(I)Lr4/c5;

    invoke-virtual {v0, v5}, Lr4/c5;->t(I)Lr4/c5;

    move/from16 v3, v44

    invoke-virtual {v0, v3}, Lr4/c5;->w(F)Lr4/c5;

    move/from16 v3, v26

    invoke-virtual {v0, v3}, Lr4/c5;->v(I)Lr4/c5;

    move-object/from16 v4, v42

    invoke-virtual {v0, v4}, Lr4/c5;->x([B)Lr4/c5;

    invoke-virtual {v0, v10}, Lr4/c5;->y(I)Lr4/c5;

    invoke-virtual {v0, v2}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v0, v8}, Lr4/c5;->q(Lr4/fz3;)Lr4/c5;

    move-object/from16 v2, v43

    invoke-virtual {v0, v2}, Lr4/c5;->z(Lr4/av3;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object v0

    iput-object v0, v9, Lr4/j34;->b:Lr4/e5;

    goto :goto_36

    :cond_4e
    move/from16 v3, v26

    move/from16 v1, v27

    :goto_36
    add-int v15, v15, v23

    invoke-virtual {v14, v15}, Lr4/xb;->p(I)V

    add-int/lit8 v0, v17, 0x1

    move-object/from16 v12, p4

    move v7, v1

    move v6, v3

    move-object v2, v9

    move-object v8, v14

    move-object/from16 v14, v18

    move-object/from16 v5, v20

    move/from16 v9, v22

    move-object/from16 v13, v32

    move/from16 v3, v33

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    move-object/from16 v26, v45

    const/16 v4, 0xc

    const/4 v15, 0x3

    move-object/from16 v1, p1

    goto/16 :goto_10

    :cond_4f
    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v32, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move-object v9, v2

    const v0, 0x65647473

    move-object/from16 v2, v40

    invoke-virtual {v2, v0}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v0

    if-eqz v0, :cond_55

    const v1, 0x656c7374

    invoke-virtual {v0, v1}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v0

    if-nez v0, :cond_50

    const/4 v8, 0x0

    goto :goto_3a

    :cond_50
    iget-object v0, v0, Lr4/e34;->b:Lr4/xb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v1

    invoke-static {v1}, Lr4/f34;->a(I)I

    move-result v1

    invoke-virtual {v0}, Lr4/xb;->b()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v3, :cond_54

    const/4 v7, 0x1

    if-ne v1, v7, :cond_51

    invoke-virtual {v0}, Lr4/xb;->d()J

    move-result-wide v10

    goto :goto_38

    :cond_51
    invoke-virtual {v0}, Lr4/xb;->B()J

    move-result-wide v10

    :goto_38
    aput-wide v10, v4, v6

    if-ne v1, v7, :cond_52

    invoke-virtual {v0}, Lr4/xb;->F()J

    move-result-wide v10

    goto :goto_39

    :cond_52
    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v8

    int-to-long v10, v8

    :goto_39
    aput-wide v10, v5, v6

    invoke-virtual {v0}, Lr4/xb;->y()S

    move-result v8

    if-ne v8, v7, :cond_53

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lr4/xb;->s(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    :goto_3a
    if-eqz v8, :cond_55

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    goto :goto_3b

    :cond_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3b
    iget-object v3, v9, Lr4/j34;->b:Lr4/e5;

    if-nez v3, :cond_56

    move-object/from16 v0, p7

    goto/16 :goto_1

    :cond_56
    new-instance v8, Lr4/d44;

    invoke-static/range {v18 .. v18}, Lr4/m34;->a(Lr4/m34;)I

    move-result v17

    move-object/from16 v3, v39

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v3, v9, Lr4/j34;->b:Lr4/e5;

    iget v4, v9, Lr4/j34;->d:I

    iget-object v5, v9, Lr4/j34;->a:[Lr4/e44;

    iget v6, v9, Lr4/j34;->c:I

    move-object/from16 v16, v8

    move/from16 v18, v22

    move-wide/from16 v21, v29

    move-wide/from16 v23, v24

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    invoke-direct/range {v16 .. v30}, Lr4/d44;-><init>(IIJJJLr4/e5;I[Lr4/e44;I[J[J)V

    move-object/from16 v0, p7

    :goto_3c
    invoke-interface {v0, v8}, Lr4/p03;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lr4/d44;

    if-eqz v4, :cond_92

    const v1, 0x6d646961

    invoke-virtual {v2, v1}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x6d696e66

    invoke-virtual {v1, v2}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7374626c

    invoke-virtual {v1, v2}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7374737a

    invoke-virtual {v1, v2}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v2

    if-eqz v2, :cond_57

    new-instance v3, Lr4/k34;

    iget-object v5, v4, Lr4/d44;->f:Lr4/e5;

    invoke-direct {v3, v2, v5}, Lr4/k34;-><init>(Lr4/e34;Lr4/e5;)V

    goto :goto_3d

    :cond_57
    const v2, 0x73747a32

    invoke-virtual {v1, v2}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v2

    if-eqz v2, :cond_91

    new-instance v3, Lr4/l34;

    invoke-direct {v3, v2}, Lr4/l34;-><init>(Lr4/e34;)V

    :goto_3d
    invoke-interface {v3}, Lr4/h34;->zza()I

    move-result v2

    if-nez v2, :cond_58

    new-instance v1, Lr4/g44;

    const/4 v2, 0x0

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lr4/g44;-><init>(Lr4/d44;[J[II[J[IJ)V

    :goto_3e
    move-object/from16 v0, v32

    goto/16 :goto_67

    :cond_58
    const v5, 0x7374636f

    invoke-virtual {v1, v5}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v5

    if-nez v5, :cond_59

    const v5, 0x636f3634

    invoke-virtual {v1, v5}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_3f

    :cond_59
    move-object v6, v5

    const/4 v5, 0x0

    :goto_3f
    iget-object v6, v6, Lr4/e34;->b:Lr4/xb;

    const v7, 0x73747363

    invoke-virtual {v1, v7}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lr4/e34;->b:Lr4/xb;

    const v8, 0x73747473

    invoke-virtual {v1, v8}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lr4/e34;->b:Lr4/xb;

    const v9, 0x73747373

    invoke-virtual {v1, v9}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v9

    if-eqz v9, :cond_5a

    iget-object v9, v9, Lr4/e34;->b:Lr4/xb;

    goto :goto_40

    :cond_5a
    const/4 v9, 0x0

    :goto_40
    const v10, 0x63747473

    invoke-virtual {v1, v10}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v1, v1, Lr4/e34;->b:Lr4/xb;

    goto :goto_41

    :cond_5b
    const/4 v1, 0x0

    :goto_41
    new-instance v10, Lr4/g34;

    invoke-direct {v10, v7, v6, v5}, Lr4/g34;-><init>(Lr4/xb;Lr4/xb;Z)V

    const/16 v5, 0xc

    invoke-virtual {v8, v5}, Lr4/xb;->p(I)V

    invoke-virtual {v8}, Lr4/xb;->b()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    invoke-virtual {v8}, Lr4/xb;->b()I

    move-result v7

    invoke-virtual {v8}, Lr4/xb;->b()I

    move-result v11

    if-eqz v1, :cond_5c

    invoke-virtual {v1, v5}, Lr4/xb;->p(I)V

    invoke-virtual {v1}, Lr4/xb;->b()I

    move-result v12

    goto :goto_42

    :cond_5c
    const/4 v12, 0x0

    :goto_42
    if-eqz v9, :cond_5e

    invoke-virtual {v9, v5}, Lr4/xb;->p(I)V

    invoke-virtual {v9}, Lr4/xb;->b()I

    move-result v5

    if-lez v5, :cond_5d

    invoke-virtual {v9}, Lr4/xb;->b()I

    move-result v13

    const/4 v14, -0x1

    add-int/2addr v13, v14

    goto :goto_44

    :cond_5d
    const/4 v14, -0x1

    const/4 v9, 0x0

    goto :goto_43

    :cond_5e
    const/4 v14, -0x1

    const/4 v5, 0x0

    :goto_43
    const/4 v13, -0x1

    :goto_44
    invoke-interface {v3}, Lr4/h34;->a()I

    move-result v15

    iget-object v0, v4, Lr4/d44;->f:Lr4/e5;

    iget-object v0, v0, Lr4/e5;->l:Ljava/lang/String;

    if-eq v15, v14, :cond_65

    const-string v14, "audio/raw"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5f

    const-string v14, "audio/g711-mlaw"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5f

    const-string v14, "audio/g711-alaw"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_5f
    if-nez v6, :cond_65

    if-nez v12, :cond_64

    if-nez v5, :cond_64

    iget v0, v10, Lr4/g34;->a:I

    new-array v1, v0, [J

    new-array v3, v0, [I

    :goto_45
    invoke-virtual {v10}, Lr4/g34;->a()Z

    move-result v5

    if-eqz v5, :cond_60

    iget v5, v10, Lr4/g34;->b:I

    iget-wide v6, v10, Lr4/g34;->d:J

    aput-wide v6, v1, v5

    iget v6, v10, Lr4/g34;->c:I

    aput v6, v3, v5

    goto :goto_45

    :cond_60
    int-to-long v5, v11

    const/16 v7, 0x2000

    div-int/2addr v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_46
    if-ge v8, v0, :cond_61

    aget v10, v3, v8

    invoke-static {v10, v7}, Lr4/lc;->b0(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_61
    new-array v8, v9, [J

    new-array v10, v9, [I

    new-array v11, v9, [J

    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_47
    if-ge v12, v0, :cond_63

    aget v17, v3, v12

    aget-wide v18, v1, v12

    move/from16 v46, v17

    move/from16 v17, v0

    move/from16 v0, v46

    :goto_48
    if-lez v0, :cond_62

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    aput-wide v18, v8, v16

    move-object/from16 v21, v1

    mul-int v1, v15, v20

    aput v1, v10, v16

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v1, v7

    move-object/from16 v22, v8

    int-to-long v7, v13

    mul-long v7, v7, v5

    aput-wide v7, v11, v16

    const/4 v7, 0x1

    aput v7, v9, v16

    aget v7, v10, v16

    int-to-long v7, v7

    add-long v18, v18, v7

    add-int v13, v13, v20

    sub-int v0, v0, v20

    add-int/lit8 v16, v16, 0x1

    move v7, v1

    move-object/from16 v1, v21

    move-object/from16 v8, v22

    goto :goto_48

    :cond_62
    move-object/from16 v21, v1

    move v1, v7

    move-object/from16 v22, v8

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v21

    goto :goto_47

    :cond_63
    move-object/from16 v22, v8

    int-to-long v0, v13

    mul-long v5, v5, v0

    move-wide v0, v5

    move-object v12, v9

    move-object v15, v11

    move-object/from16 v9, v22

    move-object v11, v4

    goto/16 :goto_57

    :cond_64
    const/4 v6, 0x0

    :cond_65
    new-array v0, v2, [J

    new-array v14, v2, [I

    new-array v15, v2, [J

    move/from16 v16, v5

    new-array v5, v2, [I

    move-object/from16 v19, v4

    move/from16 v17, v7

    move v4, v11

    move/from16 v20, v12

    move v12, v13

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move v13, v6

    const/4 v6, 0x0

    :goto_49
    if-ge v6, v2, :cond_71

    const/16 v26, 0x1

    :goto_4a
    if-nez v18, :cond_67

    invoke-virtual {v10}, Lr4/g34;->a()Z

    move-result v26

    if-eqz v26, :cond_66

    move/from16 v27, v11

    move/from16 v28, v12

    iget-wide v11, v10, Lr4/g34;->d:J

    move/from16 v29, v2

    iget v2, v10, Lr4/g34;->c:I

    move/from16 v18, v2

    move-wide/from16 v22, v11

    move/from16 v11, v27

    move/from16 v12, v28

    move/from16 v2, v29

    goto :goto_4a

    :cond_66
    move/from16 v29, v2

    move/from16 v27, v11

    move/from16 v28, v12

    const/4 v2, 0x0

    goto :goto_4b

    :cond_67
    move/from16 v29, v2

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v2, v18

    :goto_4b
    if-nez v26, :cond_68

    const-string v2, "Unexpected end of chunk data"

    move-object/from16 v11, v45

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    invoke-static {v15, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v15

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v2, v6

    move-object/from16 v36, v11

    move/from16 v12, v27

    goto/16 :goto_50

    :cond_68
    move-object/from16 v11, v45

    if-eqz v1, :cond_6b

    :goto_4c
    if-nez v21, :cond_6a

    if-lez v20, :cond_69

    invoke-virtual {v1}, Lr4/xb;->b()I

    move-result v21

    invoke-virtual {v1}, Lr4/xb;->D()I

    move-result v27

    add-int/lit8 v20, v20, -0x1

    goto :goto_4c

    :cond_69
    const/4 v12, -0x1

    const/16 v21, 0x0

    goto :goto_4d

    :cond_6a
    const/4 v12, -0x1

    :goto_4d
    add-int/lit8 v21, v21, -0x1

    :cond_6b
    move/from16 v12, v27

    aput-wide v22, v0, v6

    move-object/from16 v26, v0

    invoke-interface {v3}, Lr4/h34;->b()I

    move-result v0

    aput v0, v14, v6

    if-le v0, v7, :cond_6c

    move v7, v0

    :cond_6c
    move-object v0, v10

    move-object/from16 v36, v11

    int-to-long v10, v12

    add-long v10, v24, v10

    aput-wide v10, v15, v6

    if-nez v9, :cond_6d

    const/4 v10, 0x1

    goto :goto_4e

    :cond_6d
    const/4 v10, 0x0

    :goto_4e
    aput v10, v5, v6

    move/from16 v10, v28

    if-ne v6, v10, :cond_6e

    const/4 v11, 0x1

    aput v11, v5, v6

    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_6e

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lr4/xb;->b()I

    move-result v10

    const/4 v11, -0x1

    add-int/2addr v10, v11

    :cond_6e
    move-object v11, v9

    move/from16 v18, v10

    int-to-long v9, v4

    add-long v24, v24, v9

    add-int/lit8 v9, v17, -0x1

    if-nez v9, :cond_70

    if-lez v13, :cond_6f

    invoke-virtual {v8}, Lr4/xb;->b()I

    move-result v4

    invoke-virtual {v8}, Lr4/xb;->D()I

    move-result v9

    add-int/lit8 v13, v13, -0x1

    move/from16 v17, v4

    move v4, v9

    goto :goto_4f

    :cond_6f
    const/16 v17, 0x0

    goto :goto_4f

    :cond_70
    move/from16 v17, v9

    :goto_4f
    aget v9, v14, v6

    int-to-long v9, v9

    add-long v22, v22, v9

    const/4 v9, -0x1

    add-int/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    move-object v10, v0

    move-object v9, v11

    move v11, v12

    move/from16 v12, v18

    move-object/from16 v0, v26

    move-object/from16 v45, v36

    move/from16 v18, v2

    move/from16 v2, v29

    goto/16 :goto_49

    :cond_71
    move-object/from16 v26, v0

    move/from16 v29, v2

    move-object/from16 v36, v45

    move v12, v11

    :goto_50
    int-to-long v3, v12

    add-long v3, v24, v3

    if-eqz v1, :cond_73

    :goto_51
    if-lez v20, :cond_73

    invoke-virtual {v1}, Lr4/xb;->b()I

    move-result v6

    if-eqz v6, :cond_72

    const/4 v1, 0x0

    goto :goto_52

    :cond_72
    invoke-virtual {v1}, Lr4/xb;->D()I

    add-int/lit8 v20, v20, -0x1

    goto :goto_51

    :cond_73
    const/4 v1, 0x1

    :goto_52
    if-nez v16, :cond_79

    if-nez v17, :cond_78

    if-nez v18, :cond_77

    if-nez v13, :cond_76

    if-nez v21, :cond_75

    if-nez v1, :cond_74

    move-object/from16 v11, v19

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_53

    :cond_74
    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v11, v19

    goto/16 :goto_56

    :cond_75
    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_53
    const/4 v13, 0x0

    goto :goto_54

    :cond_76
    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_54

    :cond_77
    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_54

    :cond_78
    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    goto :goto_54

    :cond_79
    move/from16 v6, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    :goto_54
    iget v12, v11, Lr4/d44;->a:I

    move-object/from16 v16, v0

    const/4 v0, 0x1

    if-eq v0, v1, :cond_7a

    const-string v0, ", ctts invalid"

    goto :goto_55

    :cond_7a
    const-string v0, ""

    :goto_55
    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v17, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x106

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v36

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    move-wide v0, v3

    move-object v12, v5

    move-object v10, v14

    move-object/from16 v9, v16

    move/from16 v2, v17

    move v14, v7

    :goto_57
    const-wide/32 v5, 0xf4240

    iget-wide v7, v11, Lr4/d44;->c:J

    move-wide v3, v0

    invoke-static/range {v3 .. v8}, Lr4/lc;->h(JJJ)J

    move-result-wide v16

    iget-object v3, v11, Lr4/d44;->h:[J

    if-nez v3, :cond_7b

    const-wide/32 v0, 0xf4240

    iget-wide v2, v11, Lr4/d44;->c:J

    invoke-static {v15, v0, v1, v2, v3}, Lr4/lc;->i([JJJ)V

    new-instance v1, Lr4/g44;

    move-object v3, v1

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide/from16 v10, v16

    invoke-direct/range {v3 .. v11}, Lr4/g44;-><init>(Lr4/d44;[J[II[J[IJ)V

    goto/16 :goto_3e

    :cond_7b
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7e

    iget v4, v11, Lr4/d44;->b:I

    if-ne v4, v5, :cond_7e

    array-length v4, v15

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7e

    iget-object v5, v11, Lr4/d44;->i:[J

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    aget-wide v16, v3, v6

    move-wide/from16 v22, v7

    iget-wide v6, v11, Lr4/d44;->c:J

    move v5, v2

    iget-wide v2, v11, Lr4/d44;->d:J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v2

    invoke-static/range {v16 .. v21}, Lr4/lc;->h(JJJ)J

    move-result-wide v2

    add-long v7, v22, v2

    add-int/lit8 v2, v4, -0x1

    const/4 v3, 0x4

    const/4 v6, 0x0

    invoke-static {v3, v6, v2}, Lr4/lc;->c0(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x4

    invoke-static {v4, v6, v2}, Lr4/lc;->c0(III)I

    move-result v2

    aget-wide v16, v15, v6

    cmp-long v4, v16, v22

    if-gtz v4, :cond_7d

    aget-wide v3, v15, v3

    cmp-long v6, v22, v3

    if-gez v6, :cond_7d

    aget-wide v2, v15, v2

    cmp-long v4, v2, v7

    if-gez v4, :cond_7d

    cmp-long v2, v7, v0

    if-gtz v2, :cond_7d

    sub-long v24, v22, v16

    iget-object v2, v11, Lr4/d44;->f:Lr4/e5;

    iget v2, v2, Lr4/e5;->z:I

    int-to-long v2, v2

    move v6, v5

    iget-wide v4, v11, Lr4/d44;->c:J

    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    invoke-static/range {v24 .. v29}, Lr4/lc;->h(JJJ)J

    move-result-wide v2

    sub-long v16, v0, v7

    iget-object v4, v11, Lr4/d44;->f:Lr4/e5;

    iget v4, v4, Lr4/e5;->z:I

    int-to-long v4, v4

    iget-wide v7, v11, Lr4/d44;->c:J

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-static/range {v16 .. v21}, Lr4/lc;->h(JJJ)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v13, v2, v7

    if-nez v13, :cond_7c

    cmp-long v13, v4, v7

    if-eqz v13, :cond_7f

    :cond_7c
    const-wide/32 v7, 0x7fffffff

    cmp-long v13, v2, v7

    if-gtz v13, :cond_7f

    const-wide/32 v7, 0x7fffffff

    cmp-long v13, v4, v7

    if-gtz v13, :cond_7f

    long-to-int v0, v2

    move-object/from16 v2, p1

    iput v0, v2, Lr4/p04;->a:I

    long-to-int v0, v4

    iput v0, v2, Lr4/p04;->b:I

    const-wide/32 v0, 0xf4240

    iget-wide v3, v11, Lr4/d44;->c:J

    invoke-static {v15, v0, v1, v3, v4}, Lr4/lc;->i([JJJ)V

    iget-object v0, v11, Lr4/d44;->h:[J

    const/4 v1, 0x0

    aget-wide v3, v0, v1

    iget-wide v7, v11, Lr4/d44;->d:J

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v8}, Lr4/lc;->h(JJJ)J

    move-result-wide v0

    new-instance v13, Lr4/g44;

    move-object v3, v13

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide v10, v0

    invoke-direct/range {v3 .. v11}, Lr4/g44;-><init>(Lr4/d44;[J[II[J[IJ)V

    goto :goto_5a

    :cond_7d
    move-object/from16 v2, p1

    move v6, v5

    goto :goto_58

    :cond_7e
    move v6, v2

    :cond_7f
    move-object/from16 v2, p1

    :goto_58
    iget-object v3, v11, Lr4/d44;->h:[J

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_82

    const/4 v5, 0x0

    aget-wide v7, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v13, v7, v3

    if-nez v13, :cond_81

    iget-object v3, v11, Lr4/d44;->i:[J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v6, v3, v5

    const/4 v3, 0x0

    :goto_59
    array-length v4, v15

    if-ge v3, v4, :cond_80

    aget-wide v4, v15, v3

    sub-long v16, v4, v6

    const-wide/32 v18, 0xf4240

    iget-wide v4, v11, Lr4/d44;->c:J

    move-wide/from16 v20, v4

    invoke-static/range {v16 .. v21}, Lr4/lc;->h(JJJ)J

    move-result-wide v4

    aput-wide v4, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_80
    iget-wide v3, v11, Lr4/d44;->c:J

    sub-long v16, v0, v6

    const-wide/32 v18, 0xf4240

    move-wide/from16 v20, v3

    invoke-static/range {v16 .. v21}, Lr4/lc;->h(JJJ)J

    move-result-wide v0

    new-instance v13, Lr4/g44;

    move-object v3, v13

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide v10, v0

    invoke-direct/range {v3 .. v11}, Lr4/g44;-><init>(Lr4/d44;[J[II[J[IJ)V

    :goto_5a
    move-object v1, v13

    goto/16 :goto_3e

    :cond_81
    const/4 v4, 0x1

    :cond_82
    iget v0, v11, Lr4/d44;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    const/4 v3, 0x1

    goto :goto_5b

    :cond_83
    const/4 v3, 0x0

    :goto_5b
    new-array v0, v4, [I

    new-array v1, v4, [I

    iget-object v4, v11, Lr4/d44;->i:[J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_5c
    iget-object v2, v11, Lr4/d44;->h:[J

    move/from16 v16, v14

    array-length v14, v2

    if-ge v5, v14, :cond_87

    move-object v14, v9

    move-object/from16 v17, v10

    aget-wide v9, v4, v5

    const-wide/16 v18, -0x1

    cmp-long v20, v9, v18

    if-eqz v20, :cond_86

    aget-wide v21, v2, v5

    move v2, v13

    move-object/from16 v18, v14

    iget-wide v13, v11, Lr4/d44;->c:J

    move/from16 v19, v6

    move/from16 v20, v7

    iget-wide v6, v11, Lr4/d44;->d:J

    move-wide/from16 v23, v13

    move-wide/from16 v25, v6

    invoke-static/range {v21 .. v26}, Lr4/lc;->h(JJJ)J

    move-result-wide v6

    const/4 v13, 0x1

    invoke-static {v15, v9, v10, v13, v13}, Lr4/lc;->d([JJZZ)I

    move-result v14

    aput v14, v0, v5

    add-long/2addr v9, v6

    const/4 v14, 0x0

    invoke-static {v15, v9, v10, v3, v14}, Lr4/lc;->e([JJZZ)I

    move-result v6

    aput v6, v1, v5

    :goto_5d
    aget v6, v0, v5

    aget v7, v1, v5

    if-ge v6, v7, :cond_84

    aget v9, v12, v6

    and-int/2addr v9, v13

    if-nez v9, :cond_84

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    const/4 v13, 0x1

    goto :goto_5d

    :cond_84
    sub-int v9, v7, v6

    add-int v9, v20, v9

    if-eq v8, v6, :cond_85

    const/4 v6, 0x1

    goto :goto_5e

    :cond_85
    const/4 v6, 0x0

    :goto_5e
    or-int/2addr v2, v6

    move v13, v2

    move v8, v7

    move v7, v9

    goto :goto_5f

    :cond_86
    move/from16 v19, v6

    move/from16 v20, v7

    move v2, v13

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :goto_5f
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move/from16 v6, v19

    goto :goto_5c

    :cond_87
    move v5, v6

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    move v2, v13

    const/4 v14, 0x0

    if-eq v7, v5, :cond_88

    const/4 v3, 0x1

    goto :goto_60

    :cond_88
    const/4 v3, 0x0

    :goto_60
    or-int/2addr v2, v3

    if-eqz v2, :cond_89

    new-array v3, v7, [J

    move-object v5, v3

    goto :goto_61

    :cond_89
    move-object/from16 v5, v18

    :goto_61
    if-eqz v2, :cond_8a

    new-array v3, v7, [I

    move-object v6, v3

    goto :goto_62

    :cond_8a
    move-object/from16 v6, v17

    :goto_62
    const/4 v3, 0x1

    if-ne v3, v2, :cond_8b

    const/4 v3, 0x0

    goto :goto_63

    :cond_8b
    move/from16 v3, v16

    :goto_63
    if-eqz v2, :cond_8c

    new-array v4, v7, [I

    move-object v9, v4

    goto :goto_64

    :cond_8c
    move-object v9, v12

    :goto_64
    new-array v8, v7, [J

    move v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v25, 0x0

    :goto_65
    iget-object v10, v11, Lr4/d44;->h:[J

    array-length v10, v10

    if-ge v3, v10, :cond_90

    iget-object v10, v11, Lr4/d44;->i:[J

    aget-wide v27, v10, v3

    aget v10, v0, v3

    aget v13, v1, v3

    if-eqz v2, :cond_8d

    sub-int v14, v13, v10

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10, v5, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    invoke-static {v0, v10, v6, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12, v10, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_66

    :cond_8d
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    :goto_66
    if-ge v10, v13, :cond_8f

    const-wide/32 v21, 0xf4240

    move-object v14, v12

    move/from16 v17, v13

    iget-wide v12, v11, Lr4/d44;->d:J

    move-wide/from16 v19, v25

    move-wide/from16 v23, v12

    invoke-static/range {v19 .. v24}, Lr4/lc;->h(JJJ)J

    move-result-wide v12

    aget-wide v19, v15, v10

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    sub-long v14, v19, v27

    move-object/from16 v20, v0

    move-object/from16 v19, v1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    const-wide/32 v35, 0xf4240

    iget-wide v14, v11, Lr4/d44;->c:J

    move-wide/from16 v37, v14

    invoke-static/range {v33 .. v38}, Lr4/lc;->h(JJJ)J

    move-result-wide v14

    add-long/2addr v12, v14

    aput-wide v12, v8, v4

    if-eqz v2, :cond_8e

    aget v12, v6, v4

    if-le v12, v7, :cond_8e

    aget v7, v20, v10

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v17

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    goto :goto_66

    :cond_8f
    move-object/from16 v20, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v12

    move-object/from16 v21, v15

    const-wide/16 v0, 0x0

    iget-object v10, v11, Lr4/d44;->h:[J

    aget-wide v12, v10, v3

    add-long v25, v25, v12

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v17, v20

    move-object/from16 v12, v22

    const/4 v14, 0x0

    goto/16 :goto_65

    :cond_90
    iget-wide v0, v11, Lr4/d44;->d:J

    const-wide/32 v21, 0xf4240

    move-wide/from16 v19, v25

    move-wide/from16 v23, v0

    invoke-static/range {v19 .. v24}, Lr4/lc;->h(JJJ)J

    move-result-wide v0

    new-instance v2, Lr4/g44;

    move-object v3, v2

    move-object v4, v11

    move-wide v10, v0

    invoke-direct/range {v3 .. v11}, Lr4/g44;-><init>(Lr4/d44;[J[II[J[IJ)V

    move-object v1, v2

    goto/16 :goto_3e

    :goto_67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_91
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_92
    move-object/from16 v0, v32

    :goto_68
    add-int/lit8 v15, v31, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    move-object v13, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_93
    move-object v0, v13

    return-object v0
.end method

.method public static b(Lr4/e34;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/e34;",
            ")",
            "Landroid/util/Pair<",
            "Lr4/j8;",
            "Lr4/j8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lr4/e34;->b:Lr4/xb;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lr4/xb;->p(I)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lr4/xb;->l()I

    move-result v4

    if-lt v4, v0, :cond_c

    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v4

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v5

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v6

    const v7, 0x6d657461

    if-ne v6, v7, :cond_5

    invoke-virtual {p0, v4}, Lr4/xb;->p(I)V

    add-int v2, v4, v5

    invoke-virtual {p0, v0}, Lr4/xb;->s(I)V

    invoke-static {p0}, Lr4/n34;->d(Lr4/xb;)V

    :goto_1
    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v6

    if-ge v6, v2, :cond_4

    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v6

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v7

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v8

    const v9, 0x696c7374

    if-ne v8, v9, :cond_3

    invoke-virtual {p0, v6}, Lr4/xb;->p(I)V

    add-int/2addr v6, v7

    invoke-virtual {p0, v0}, Lr4/xb;->s(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v7

    if-ge v7, v6, :cond_1

    invoke-static {p0}, Lr4/u34;->a(Lr4/xb;)Lr4/i8;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    new-instance v6, Lr4/j8;

    invoke-direct {v6, v2}, Lr4/j8;-><init>(Ljava/util/List;)V

    move-object v2, v6

    goto/16 :goto_6

    :cond_3
    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lr4/xb;->p(I)V

    goto :goto_1

    :cond_4
    :goto_3
    move-object v2, v1

    goto :goto_6

    :cond_5
    const v7, 0x736d7461

    if-ne v6, v7, :cond_b

    invoke-virtual {p0, v4}, Lr4/xb;->p(I)V

    add-int v3, v4, v5

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lr4/xb;->s(I)V

    :goto_4
    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v7

    if-ge v7, v3, :cond_a

    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v7

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v8

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v9

    const v10, 0x73617574

    if-ne v9, v10, :cond_9

    const/16 v3, 0xe

    if-ge v8, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lr4/xb;->s(I)V

    invoke-virtual {p0}, Lr4/xb;->v()I

    move-result v3

    const/high16 v7, 0x42f00000    # 120.0f

    if-eq v3, v6, :cond_7

    const/16 v6, 0xd

    if-eq v3, v6, :cond_8

    goto :goto_5

    :cond_7
    if-ne v3, v6, :cond_8

    const/high16 v7, 0x43700000    # 240.0f

    :cond_8
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lr4/xb;->s(I)V

    invoke-virtual {p0}, Lr4/xb;->v()I

    move-result v6

    new-instance v8, Lr4/j8;

    new-array v3, v3, [Lr4/i8;

    new-instance v9, Lr4/ga;

    invoke-direct {v9, v7, v6}, Lr4/ga;-><init>(FI)V

    const/4 v6, 0x0

    aput-object v9, v3, v6

    invoke-direct {v8, v3}, Lr4/j8;-><init>([Lr4/i8;)V

    move-object v3, v8

    goto :goto_6

    :cond_9
    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lr4/xb;->p(I)V

    goto :goto_4

    :cond_a
    :goto_5
    move-object v3, v1

    :cond_b
    :goto_6
    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lr4/xb;->p(I)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lr4/d34;)Lr4/j8;
    .locals 14

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    iget-object v0, v0, Lr4/e34;->b:Lr4/xb;

    invoke-static {v0}, Lr4/n34;->e(Lr4/xb;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lr4/e34;->b:Lr4/xb;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lr4/xb;->s(I)V

    add-int/lit8 v6, v6, -0x8

    sget-object v7, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lr4/xb;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lr4/e34;->b:Lr4/xb;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lr4/xb;->p(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lr4/xb;->l()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v6

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v7

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    if-ge v8, v1, :cond_4

    aget-object v8, v3, v8

    add-int v9, v6, v7

    sget-object v10, Lr4/u34;->a:[Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v10

    if-ge v10, v9, :cond_3

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v11

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v12

    const v13, 0x64617461

    if-ne v12, v13, :cond_2

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v9

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v10

    add-int/lit8 v11, v11, -0x10

    new-array v12, v11, [B

    invoke-virtual {p0, v12, v4, v11}, Lr4/xb;->u([BII)V

    new-instance v11, Lr4/aa;

    invoke-direct {v11, v8, v12, v10, v9}, Lr4/aa;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lr4/xb;->p(I)V

    goto :goto_2

    :cond_3
    move-object v11, v2

    :goto_3
    if-eqz v11, :cond_5

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x34

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AtomParsers"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lr4/xb;->p(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v2

    :cond_7
    new-instance p0, Lr4/j8;

    invoke-direct {p0, v5}, Lr4/j8;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_8
    :goto_5
    return-object v2
.end method

.method public static d(Lr4/xb;)V
    .locals 3

    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lr4/xb;->s(I)V

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, Lr4/xb;->p(I)V

    return-void
.end method

.method public static e(Lr4/xb;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lr4/xb;->p(I)V

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result p0

    return p0
.end method

.method public static f(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static g(Lr4/xb;IIIILjava/lang/String;ZLr4/fz3;Lr4/j34;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    invoke-virtual {v0, v7}, Lr4/xb;->p(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->w()I

    move-result v9

    invoke-virtual {v0, v7}, Lr4/xb;->s(I)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lr4/xb;->s(I)V

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x14

    const/16 v11, 0x10

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v9, :cond_3

    if-ne v9, v13, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v12, :cond_2

    invoke-virtual {v0, v11}, Lr4/xb;->s(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->F()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v7, v14

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->b()I

    move-result v9

    invoke-virtual {v0, v10}, Lr4/xb;->s(I)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lr4/xb;->w()I

    move-result v14

    invoke-virtual {v0, v7}, Lr4/xb;->s(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->H()I

    move-result v7

    if-ne v9, v13, :cond_4

    invoke-virtual {v0, v11}, Lr4/xb;->s(I)V

    :cond_4
    move v9, v14

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lr4/xb;->o()I

    move-result v11

    const v14, 0x656e6361

    move/from16 v15, p1

    if-ne v15, v14, :cond_7

    invoke-static {v0, v1, v2}, Lr4/n34;->i(Lr4/xb;II)Landroid/util/Pair;

    move-result-object v15

    if-eqz v15, :cond_6

    iget-object v14, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    iget-object v10, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lr4/e44;

    iget-object v10, v10, Lr4/e44;->b:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lr4/fz3;->a(Ljava/lang/String;)Lr4/fz3;

    move-result-object v5

    :goto_3
    iget-object v10, v6, Lr4/j34;->a:[Lr4/e44;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lr4/e44;

    aput-object v15, v10, p9

    :cond_6
    invoke-virtual {v0, v11}, Lr4/xb;->p(I)V

    goto :goto_4

    :cond_7
    move v14, v15

    :goto_4
    const v10, 0x61632d33

    const v15, 0x616c6163

    const-string v16, "audio/raw"

    const-string v12, "audio/ac4"

    if-ne v14, v10, :cond_8

    const-string v16, "audio/ac3"

    :goto_5
    const/4 v10, -0x1

    goto/16 :goto_9

    :cond_8
    const v10, 0x65632d33

    if-ne v14, v10, :cond_9

    const-string v16, "audio/eac3"

    goto :goto_5

    :cond_9
    const v10, 0x61632d34

    if-ne v14, v10, :cond_a

    move-object/from16 v16, v12

    goto :goto_5

    :cond_a
    const v10, 0x64747363

    if-ne v14, v10, :cond_b

    const-string v16, "audio/vnd.dts"

    goto :goto_5

    :cond_b
    const v10, 0x64747368

    if-eq v14, v10, :cond_1d

    const v10, 0x6474736c

    if-ne v14, v10, :cond_c

    goto/16 :goto_8

    :cond_c
    const v10, 0x64747365

    if-ne v14, v10, :cond_d

    const-string v16, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_5

    :cond_d
    const v10, 0x64747378

    if-ne v14, v10, :cond_e

    const-string v16, "audio/vnd.dts.uhd"

    goto :goto_5

    :cond_e
    const v10, 0x73616d72

    if-ne v14, v10, :cond_f

    const-string v16, "audio/3gpp"

    goto :goto_5

    :cond_f
    const v10, 0x73617762

    if-ne v14, v10, :cond_10

    const-string v16, "audio/amr-wb"

    goto :goto_5

    :cond_10
    const v10, 0x6c70636d

    if-eq v14, v10, :cond_1c

    const v10, 0x736f7774

    if-ne v14, v10, :cond_11

    goto :goto_7

    :cond_11
    const v10, 0x74776f73

    if-ne v14, v10, :cond_12

    const/high16 v10, 0x10000000

    goto :goto_9

    :cond_12
    const v10, 0x2e6d7032

    if-eq v14, v10, :cond_1b

    const v10, 0x2e6d7033

    if-ne v14, v10, :cond_13

    goto :goto_6

    :cond_13
    const v10, 0x6d686131

    if-ne v14, v10, :cond_14

    const-string v16, "audio/mha1"

    goto :goto_5

    :cond_14
    const v10, 0x6d686d31

    if-ne v14, v10, :cond_15

    const-string v16, "audio/mhm1"

    goto :goto_5

    :cond_15
    if-ne v14, v15, :cond_16

    const-string v16, "audio/alac"

    goto :goto_5

    :cond_16
    const v10, 0x616c6177

    if-ne v14, v10, :cond_17

    const-string v16, "audio/g711-alaw"

    goto/16 :goto_5

    :cond_17
    const v10, 0x756c6177

    if-ne v14, v10, :cond_18

    const-string v16, "audio/g711-mlaw"

    goto/16 :goto_5

    :cond_18
    const v10, 0x4f707573

    if-ne v14, v10, :cond_19

    const-string v16, "audio/opus"

    goto/16 :goto_5

    :cond_19
    const v10, 0x664c6143

    if-ne v14, v10, :cond_1a

    const-string v16, "audio/flac"

    goto/16 :goto_5

    :cond_1a
    const/4 v10, -0x1

    const/16 v16, 0x0

    goto :goto_9

    :cond_1b
    :goto_6
    const-string v16, "audio/mpeg"

    goto/16 :goto_5

    :cond_1c
    :goto_7
    const/4 v10, 0x2

    goto :goto_9

    :cond_1d
    :goto_8
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :goto_9
    move-object/from16 v13, v16

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_a
    sub-int v15, v11, v1

    if-ge v15, v2, :cond_2f

    invoke-virtual {v0, v11}, Lr4/xb;->p(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v15

    if-lez v15, :cond_1e

    const/4 v8, 0x1

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    :goto_b
    const-string v1, "childAtomSize must be positive"

    invoke-static {v8, v1}, Lr4/e04;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v8

    const v2, 0x6d686143

    if-ne v8, v2, :cond_1f

    add-int/lit8 v1, v15, -0xd

    new-array v2, v1, [B

    add-int/lit8 v8, v11, 0xd

    invoke-virtual {v0, v8}, Lr4/xb;->p(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v1}, Lr4/xb;->u([BII)V

    invoke-static {v2}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object v1

    move-object/from16 v19, v1

    move/from16 v16, v10

    :goto_c
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_14

    :cond_1f
    const v2, 0x65736473

    if-eq v8, v2, :cond_2c

    if-eqz p6, :cond_23

    const v2, 0x77617665

    if-ne v8, v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->o()I

    move-result v2

    :goto_d
    sub-int v8, v2, v11

    if-ge v8, v15, :cond_22

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v8

    if-lez v8, :cond_20

    move/from16 v16, v10

    const/4 v10, 0x1

    goto :goto_e

    :cond_20
    move/from16 v16, v10

    const/4 v10, 0x0

    :goto_e
    invoke-static {v10, v1}, Lr4/e04;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v10

    move-object/from16 v20, v1

    const v1, 0x65736473

    if-eq v10, v1, :cond_21

    add-int/2addr v2, v8

    move/from16 v10, v16

    move-object/from16 v1, v20

    goto :goto_d

    :cond_21
    const/4 v1, -0x1

    goto :goto_f

    :cond_22
    move/from16 v16, v10

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_f
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_13

    :cond_23
    move/from16 v16, v10

    const v1, 0x64616333

    if-ne v8, v1, :cond_24

    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v0, v1}, Lr4/xb;->p(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lr4/gz3;->a(Lr4/xb;Ljava/lang/String;Ljava/lang/String;Lr4/fz3;)Lr4/e5;

    move-result-object v1

    iput-object v1, v6, Lr4/j34;->b:Lr4/e5;

    :goto_10
    const/16 v1, 0x14

    goto :goto_c

    :cond_24
    const v1, 0x64656333

    if-ne v8, v1, :cond_25

    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v0, v1}, Lr4/xb;->p(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lr4/gz3;->b(Lr4/xb;Ljava/lang/String;Ljava/lang/String;Lr4/fz3;)Lr4/e5;

    move-result-object v1

    iput-object v1, v6, Lr4/j34;->b:Lr4/e5;

    goto :goto_10

    :cond_25
    const v1, 0x64616334

    if-ne v8, v1, :cond_27

    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v0, v1}, Lr4/xb;->p(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lr4/jz3;->a:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lr4/xb;->s(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->v()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v8, v8, 0x5

    if-eq v2, v8, :cond_26

    const v2, 0xac44

    goto :goto_11

    :cond_26
    const v2, 0xbb80

    :goto_11
    new-instance v8, Lr4/c5;

    invoke-direct {v8}, Lr4/c5;-><init>()V

    invoke-virtual {v8, v1}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v8, v12}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lr4/c5;->B(I)Lr4/c5;

    invoke-virtual {v8, v2}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {v8, v5}, Lr4/c5;->q(Lr4/fz3;)Lr4/c5;

    invoke-virtual {v8, v4}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v8}, Lr4/c5;->I()Lr4/e5;

    move-result-object v1

    iput-object v1, v6, Lr4/j34;->b:Lr4/e5;

    goto :goto_10

    :cond_27
    const v1, 0x64647473

    if-ne v8, v1, :cond_28

    new-instance v1, Lr4/c5;

    invoke-direct {v1}, Lr4/c5;-><init>()V

    invoke-virtual {v1, v3}, Lr4/c5;->e(I)Lr4/c5;

    invoke-virtual {v1, v13}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v1, v9}, Lr4/c5;->B(I)Lr4/c5;

    invoke-virtual {v1, v7}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {v1, v5}, Lr4/c5;->q(Lr4/fz3;)Lr4/c5;

    invoke-virtual {v1, v4}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v1}, Lr4/c5;->I()Lr4/e5;

    move-result-object v1

    iput-object v1, v6, Lr4/j34;->b:Lr4/e5;

    goto :goto_10

    :cond_28
    const v1, 0x644f7073

    if-ne v8, v1, :cond_29

    add-int/lit8 v1, v15, -0x8

    sget-object v2, Lr4/n34;->a:[B

    array-length v8, v2

    add-int/2addr v8, v1

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    add-int/lit8 v10, v11, 0x8

    invoke-virtual {v0, v10}, Lr4/xb;->p(I)V

    array-length v2, v2

    invoke-virtual {v0, v8, v2, v1}, Lr4/xb;->u([BII)V

    invoke-static {v8}, Lr4/v04;->a([B)Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v1

    goto/16 :goto_c

    :cond_29
    const v1, 0x64664c61

    if-ne v8, v1, :cond_2a

    add-int/lit8 v1, v15, -0xc

    add-int/lit8 v2, v1, 0x4

    new-array v2, v2, [B

    const/16 v8, 0x66

    const/4 v10, 0x0

    aput-byte v8, v2, v10

    const/16 v8, 0x4c

    const/4 v10, 0x1

    aput-byte v8, v2, v10

    const/16 v8, 0x61

    const/16 v17, 0x2

    aput-byte v8, v2, v17

    const/4 v8, 0x3

    const/16 v18, 0x43

    aput-byte v18, v2, v8

    add-int/lit8 v8, v11, 0xc

    invoke-virtual {v0, v8}, Lr4/xb;->p(I)V

    const/4 v8, 0x4

    invoke-virtual {v0, v2, v8, v1}, Lr4/xb;->u([BII)V

    invoke-static {v2}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_12
    const/4 v8, 0x0

    goto/16 :goto_14

    :cond_2a
    const v1, 0x616c6163

    const/4 v10, 0x1

    const/16 v17, 0x2

    if-ne v8, v1, :cond_2b

    add-int/lit8 v2, v15, -0xc

    new-array v7, v2, [B

    add-int/lit8 v8, v11, 0xc

    invoke-virtual {v0, v8}, Lr4/xb;->p(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v2}, Lr4/xb;->u([BII)V

    new-instance v2, Lr4/xb;

    invoke-direct {v2, v7}, Lr4/xb;-><init>([B)V

    const/16 v9, 0x9

    invoke-virtual {v2, v9}, Lr4/xb;->p(I)V

    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result v9

    const/16 v1, 0x14

    invoke-virtual {v2, v1}, Lr4/xb;->p(I)V

    invoke-virtual {v2}, Lr4/xb;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v7}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object v7

    move-object/from16 v19, v7

    move v7, v9

    move v9, v2

    goto :goto_14

    :cond_2b
    const/16 v1, 0x14

    goto :goto_12

    :cond_2c
    move/from16 v16, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    move v2, v11

    const/4 v1, -0x1

    :goto_13
    if-eq v2, v1, :cond_2e

    invoke-static {v0, v2}, Lr4/n34;->h(Lr4/xb;I)Landroid/util/Pair;

    move-result-object v2

    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_2e

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v2}, Lr4/cz3;->a([B)Lr4/az3;

    move-result-object v1

    iget v7, v1, Lr4/az3;->a:I

    iget v9, v1, Lr4/az3;->b:I

    iget-object v14, v1, Lr4/az3;->c:Ljava/lang/String;

    :cond_2d
    invoke-static {v2}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object v19

    :cond_2e
    :goto_14
    add-int/2addr v11, v15

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v10, v16

    goto/16 :goto_a

    :cond_2f
    move/from16 v16, v10

    iget-object v0, v6, Lr4/j34;->b:Lr4/e5;

    if-nez v0, :cond_30

    if-eqz v13, :cond_30

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    invoke-virtual {v0, v3}, Lr4/c5;->e(I)Lr4/c5;

    invoke-virtual {v0, v13}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0, v14}, Lr4/c5;->k(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0, v9}, Lr4/c5;->B(I)Lr4/c5;

    invoke-virtual {v0, v7}, Lr4/c5;->C(I)Lr4/c5;

    move/from16 v13, v16

    invoke-virtual {v0, v13}, Lr4/c5;->D(I)Lr4/c5;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v0, v5}, Lr4/c5;->q(Lr4/fz3;)Lr4/c5;

    invoke-virtual {v0, v4}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object v0

    iput-object v0, v6, Lr4/j34;->b:Lr4/e5;

    :cond_30
    return-void
.end method

.method public static h(Lr4/xb;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/xb;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lr4/xb;->p(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr4/xb;->s(I)V

    invoke-static {p0}, Lr4/n34;->j(Lr4/xb;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lr4/xb;->s(I)V

    invoke-virtual {p0}, Lr4/xb;->v()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lr4/xb;->s(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lr4/xb;->w()I

    move-result v3

    invoke-virtual {p0, v3}, Lr4/xb;->s(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lr4/xb;->s(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lr4/xb;->s(I)V

    invoke-static {p0}, Lr4/n34;->j(Lr4/xb;)I

    invoke-virtual {p0}, Lr4/xb;->v()I

    move-result v1

    invoke-static {v1}, Lr4/kb;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/mpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lr4/xb;->s(I)V

    invoke-virtual {p0, p1}, Lr4/xb;->s(I)V

    invoke-static {p0}, Lr4/n34;->j(Lr4/xb;)I

    move-result p1

    new-array v0, p1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lr4/xb;->u([BII)V

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lr4/xb;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/xb;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lr4/e44;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->o()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lr4/xb;->p(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v7, v8}, Lr4/e04;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    invoke-virtual {v0, v7}, Lr4/xb;->p(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    invoke-virtual {v0, v13}, Lr4/xb;->s(I)V

    sget-object v3, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lr4/xb;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v3, v7}, Lr4/e04;->a(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v3, v7}, Lr4/e04;->a(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    invoke-virtual {v0, v3}, Lr4/xb;->p(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->D()I

    move-result v3

    invoke-virtual {v0, v5}, Lr4/xb;->s(I)V

    invoke-static {v3}, Lr4/f34;->a(I)I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0, v5}, Lr4/xb;->s(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lr4/xb;->v()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lr4/xb;->v()I

    move-result v7

    if-ne v7, v5, :cond_a

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lr4/xb;->v()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v13, v6, v7}, Lr4/xb;->u([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lr4/xb;->v()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8, v6, v7}, Lr4/xb;->u([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lr4/e44;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lr4/e44;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lr4/e04;->a(ZLjava/lang/String;)V

    sget v5, Lr4/lc;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public static j(Lr4/xb;)I
    .locals 3

    invoke-virtual {p0}, Lr4/xb;->v()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lr4/xb;->v()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

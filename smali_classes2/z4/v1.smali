.class public final Lz4/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz4/f2<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:[I

.field public static final s:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lz4/r1;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lz4/y1;

.field public final n:Lz4/b1;

.field public final o:Lz4/x2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/x2<",
            "**>;"
        }
    .end annotation
.end field

.field public final p:Lz4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/c0<",
            "*>;"
        }
    .end annotation
.end field

.field public final q:Lz4/m1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lz4/v1;->r:[I

    invoke-static {}, Lz4/d3;->t()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lz4/v1;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILz4/r1;ZZ[IIILz4/y1;Lz4/b1;Lz4/x2;Lz4/c0;Lz4/m1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lz4/r1;",
            "ZZ[III",
            "Lz4/y1;",
            "Lz4/b1;",
            "Lz4/x2<",
            "**>;",
            "Lz4/c0<",
            "*>;",
            "Lz4/m1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/v1;->a:[I

    iput-object p2, p0, Lz4/v1;->b:[Ljava/lang/Object;

    iput p3, p0, Lz4/v1;->c:I

    iput p4, p0, Lz4/v1;->d:I

    instance-of p1, p5, Lz4/m0;

    iput-boolean p1, p0, Lz4/v1;->g:Z

    iput-boolean p6, p0, Lz4/v1;->h:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lz4/c0;->f(Lz4/r1;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lz4/v1;->f:Z

    iput-boolean p1, p0, Lz4/v1;->i:Z

    iput-object p8, p0, Lz4/v1;->j:[I

    iput p9, p0, Lz4/v1;->k:I

    iput p10, p0, Lz4/v1;->l:I

    iput-object p11, p0, Lz4/v1;->m:Lz4/y1;

    iput-object p12, p0, Lz4/v1;->n:Lz4/b1;

    iput-object p13, p0, Lz4/v1;->o:Lz4/x2;

    iput-object p14, p0, Lz4/v1;->p:Lz4/c0;

    iput-object p5, p0, Lz4/v1;->e:Lz4/r1;

    iput-object p15, p0, Lz4/v1;->q:Lz4/m1;

    return-void
.end method

.method public static A(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static B(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static C(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static D(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static E(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static f(Lz4/x2;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lz4/x2<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz4/x2;->f(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static h(Ljava/lang/Class;Lz4/p1;Lz4/y1;Lz4/b1;Lz4/x2;Lz4/c0;Lz4/m1;)Lz4/v1;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lz4/p1;",
            "Lz4/y1;",
            "Lz4/b1;",
            "Lz4/x2<",
            "**>;",
            "Lz4/c0<",
            "*>;",
            "Lz4/m1;",
            ")",
            "Lz4/v1<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lz4/e2;

    if-eqz v1, :cond_34

    check-cast v0, Lz4/e2;

    invoke-virtual {v0}, Lz4/e2;->a()I

    move-result v1

    sget v2, Lz4/m0$d;->j:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v0}, Lz4/e2;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    const/4 v8, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_1

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    move v8, v12

    :cond_4
    if-nez v9, :cond_5

    sget-object v9, Lz4/v1;->r:[I

    move-object v14, v9

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_5
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_6
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v12

    :cond_7
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_8

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_8
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_9
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_a

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_a
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_b
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_c

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_c
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_d
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_f
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_12

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_12
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v3, v17

    goto :goto_b

    :cond_13
    move/from16 v3, v16

    :goto_b
    add-int/lit8 v16, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v17, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v3, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v17

    goto :goto_c

    :cond_14
    shl-int v6, v6, v16

    or-int/2addr v3, v6

    move/from16 v16, v17

    :cond_15
    add-int v6, v3, v14

    add-int/2addr v6, v15

    new-array v6, v6, [I

    shl-int/lit8 v15, v8, 0x1

    add-int/2addr v15, v9

    move v9, v12

    move v12, v15

    move v15, v3

    move v3, v8

    move/from16 v8, v16

    move/from16 v35, v14

    move-object v14, v6

    move/from16 v6, v35

    :goto_d
    sget-object v7, Lz4/v1;->s:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lz4/e2;->e()[Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v0}, Lz4/e2;->c()Lz4/r1;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move/from16 v18, v8

    mul-int/lit8 v8, v13, 0x3

    new-array v8, v8, [I

    const/16 v19, 0x1

    shl-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    add-int v20, v15, v6

    move/from16 v22, v15

    move/from16 v6, v18

    move/from16 v23, v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    :goto_e
    if-ge v6, v2, :cond_33

    add-int/lit8 v24, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v26, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v6, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    move/from16 v15, v27

    goto :goto_f

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v6, v2

    move/from16 v2, v26

    goto :goto_10

    :cond_17
    move/from16 v27, v15

    move/from16 v2, v24

    :goto_10
    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_11
    add-int/lit8 v26, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v11

    const v11, 0xd800

    if-lt v15, v11, :cond_18

    and-int/lit16 v11, v15, 0x1fff

    shl-int v11, v11, v24

    or-int/2addr v2, v11

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v11, v28

    goto :goto_11

    :cond_18
    shl-int v11, v15, v24

    or-int/2addr v2, v11

    move/from16 v15, v26

    goto :goto_12

    :cond_19
    move/from16 v28, v11

    move/from16 v15, v24

    :goto_12
    and-int/lit16 v11, v2, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v18, 0x1

    aput v21, v14, v18

    move/from16 v18, v9

    :cond_1a
    const/16 v9, 0x33

    move/from16 v30, v10

    if-lt v11, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v10, 0xd800

    if-lt v15, v10, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    :goto_13
    add-int/lit8 v33, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_1b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v32

    or-int/2addr v15, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v9, v33

    const v10, 0xd800

    goto :goto_13

    :cond_1b
    shl-int v9, v9, v32

    or-int/2addr v15, v9

    move/from16 v9, v33

    :cond_1c
    add-int/lit8 v10, v11, -0x33

    move/from16 v32, v9

    const/16 v9, 0x9

    if-eq v10, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v10, v9, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v9, 0xc

    if-ne v10, v9, :cond_1e

    and-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    div-int/lit8 v9, v21, 0x3

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move v12, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_15

    :cond_1f
    :goto_14
    div-int/lit8 v9, v21, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v19, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move/from16 v12, v19

    :goto_15
    shl-int/lit8 v9, v15, 0x1

    aget-object v10, v17, v9

    instance-of v15, v10, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_20

    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_20
    check-cast v10, Ljava/lang/String;

    invoke-static {v4, v10}, Lz4/v1;->g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    aput-object v10, v17, v9

    :goto_16
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    invoke-virtual {v7, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v9, v9, 0x1

    aget-object v0, v17, v9

    instance-of v10, v0, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lz4/v1;->g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v17, v9

    :goto_17
    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v0, v9

    move-object/from16 v19, v4

    move/from16 v31, v12

    move/from16 v15, v32

    move-object/from16 v10, v34

    const/4 v12, 0x0

    const/16 v16, 0x1

    move v4, v0

    move v0, v3

    const v3, 0xd800

    goto/16 :goto_20

    :cond_22
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    add-int/lit8 v0, v12, 0x1

    aget-object v1, v17, v12

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lz4/v1;->g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v9, 0x31

    const/16 v10, 0x9

    if-eq v11, v10, :cond_2a

    const/16 v10, 0x11

    if-ne v11, v10, :cond_23

    goto :goto_1b

    :cond_23
    const/16 v10, 0x1b

    if-eq v11, v10, :cond_29

    if-ne v11, v9, :cond_24

    goto :goto_19

    :cond_24
    const/16 v10, 0xc

    if-eq v11, v10, :cond_28

    const/16 v10, 0x1e

    if-eq v11, v10, :cond_28

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_25

    goto :goto_18

    :cond_25
    const/16 v10, 0x32

    if-ne v11, v10, :cond_26

    add-int/lit8 v10, v22, 0x1

    aput v21, v14, v22

    div-int/lit8 v12, v21, 0x3

    const/16 v19, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int/lit8 v22, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v12

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v0, v22, 0x1

    aget-object v22, v17, v22

    aput-object v22, v13, v12

    move/from16 v22, v10

    :cond_26
    const/4 v12, 0x1

    goto :goto_1c

    :cond_27
    move/from16 v0, v22

    const/4 v12, 0x1

    move/from16 v22, v10

    goto :goto_1c

    :cond_28
    :goto_18
    and-int/lit8 v10, v5, 0x1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2b

    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    goto :goto_1a

    :cond_29
    :goto_19
    const/4 v12, 0x1

    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    :goto_1a
    move/from16 v0, v19

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/4 v12, 0x1

    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v13, v10

    :cond_2b
    :goto_1c
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    and-int/lit8 v9, v5, 0x1

    if-ne v9, v12, :cond_2f

    const/16 v9, 0x11

    if-gt v11, v9, :cond_2f

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v10, v34

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v15, 0xd800

    if-lt v12, v15, :cond_2d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v16, 0xd

    :goto_1d
    add-int/lit8 v29, v9, 0x1

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v15, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v16

    or-int/2addr v12, v9

    add-int/lit8 v16, v16, 0xd

    move/from16 v9, v29

    goto :goto_1d

    :cond_2c
    shl-int v9, v9, v16

    or-int/2addr v12, v9

    move/from16 v9, v29

    :cond_2d
    const/16 v16, 0x1

    shl-int/lit8 v19, v3, 0x1

    div-int/lit8 v29, v12, 0x20

    add-int v19, v19, v29

    aget-object v15, v17, v19

    move/from16 v31, v0

    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_1e

    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v4, v15}, Lz4/v1;->g(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    aput-object v15, v17, v19

    :goto_1e
    move v0, v3

    move-object/from16 v19, v4

    invoke-virtual {v7, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    rem-int/lit8 v12, v12, 0x20

    move v15, v9

    const v3, 0xd800

    goto :goto_1f

    :cond_2f
    move/from16 v31, v0

    move v0, v3

    move-object/from16 v19, v4

    move-object/from16 v10, v34

    const v3, 0xd800

    const/16 v16, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_1f
    const/16 v9, 0x12

    if-lt v11, v9, :cond_30

    const/16 v9, 0x31

    if-gt v11, v9, :cond_30

    add-int/lit8 v9, v23, 0x1

    aput v1, v14, v23

    move/from16 v23, v9

    :cond_30
    :goto_20
    add-int/lit8 v9, v21, 0x1

    aput v6, v8, v21

    add-int/lit8 v6, v9, 0x1

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_31

    const/high16 v3, 0x20000000

    goto :goto_21

    :cond_31
    const/4 v3, 0x0

    :goto_21
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_22

    :cond_32
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x14

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v8, v9

    add-int/lit8 v21, v6, 0x1

    shl-int/lit8 v1, v12, 0x14

    or-int/2addr v1, v4

    aput v1, v8, v6

    move v3, v0

    move-object v1, v10

    move v6, v15

    move-object/from16 v4, v19

    move/from16 v9, v24

    move/from16 v2, v25

    move/from16 v15, v27

    move/from16 v11, v28

    move/from16 v10, v30

    move/from16 v12, v31

    move-object/from16 v0, v33

    goto/16 :goto_e

    :cond_33
    move-object/from16 v33, v0

    move/from16 v24, v9

    move/from16 v30, v10

    move/from16 v28, v11

    move/from16 v27, v15

    new-instance v0, Lz4/v1;

    invoke-virtual/range {v33 .. v33}, Lz4/e2;->c()Lz4/r1;

    move-result-object v10

    const/4 v12, 0x0

    move-object v5, v0

    move-object v6, v8

    move-object v7, v13

    move/from16 v8, v30

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lz4/v1;-><init>([I[Ljava/lang/Object;IILz4/r1;ZZ[IIILz4/y1;Lz4/b1;Lz4/x2;Lz4/c0;Lz4/m1;)V

    return-object v0

    :cond_34
    check-cast v0, Lz4/s2;

    invoke-virtual {v0}, Lz4/s2;->a()I

    sget v0, Lz4/m0$d;->a:I

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23
.end method

.method public static i(ILjava/lang/Object;Lz4/r3;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lz4/r3;->f0(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lz4/i;

    invoke-interface {p2, p0, p1}, Lz4/r3;->z(ILz4/i;)V

    return-void
.end method

.method public static k(Lz4/x2;Ljava/lang/Object;Lz4/r3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lz4/x2<",
            "TUT;TUB;>;TT;",
            "Lz4/r3;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lz4/x2;->a(Ljava/lang/Object;Lz4/r3;)V

    return-void
.end method

.method public static p(Ljava/lang/Object;ILz4/f2;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lz4/f2;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static z(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lz4/v1;->h:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    sget-object v2, Lz4/v1;->s:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v14, v0, Lz4/v1;->a:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    invoke-virtual {v0, v12}, Lz4/v1;->s(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lz4/v1;->a:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    sget-object v14, Lz4/i0;->Z:Lz4/i0;

    invoke-virtual {v14}, Lz4/i0;->c()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lz4/i0;->m0:Lz4/i0;

    invoke-virtual {v14}, Lz4/i0;->c()I

    move-result v14

    if-gt v15, v14, :cond_0

    iget-object v14, v0, Lz4/v1;->a:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz4/r1;

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lz4/x;->P(ILz4/r1;Lz4/f2;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lz4/x;->h0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->n0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v9, v10}, Lz4/x;->m0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v11}, Lz4/x;->p0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->q0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->l0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz4/i;

    invoke-static {v3, v5}, Lz4/x;->O(ILz4/i;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lz4/h2;->l(ILjava/lang/Object;Lz4/f2;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lz4/i;

    if-eqz v6, :cond_1

    check-cast v5, Lz4/i;

    invoke-static {v3, v5}, Lz4/x;->O(ILz4/i;)I

    move-result v3

    goto/16 :goto_3

    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lz4/x;->D(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v8}, Lz4/x;->Q(IZ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v11}, Lz4/x;->o0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v9, v10}, Lz4/x;->k0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->j0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lz4/x;->f0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lz4/x;->a0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v4}, Lz4/x;->C(IF)I

    move-result v3

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v1, v3, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lz4/x;->B(ID)I

    move-result v3

    goto/16 :goto_3

    :pswitch_12
    iget-object v14, v0, Lz4/v1;->q:Lz4/m1;

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v12}, Lz4/v1;->r(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v14, v3, v5, v6}, Lz4/m1;->e(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lz4/h2;->r(ILjava/util/List;Lz4/f2;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->o(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->F(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->K(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->I(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->C(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->M(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->I(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->K(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_a
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->v(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_b
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_c
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto :goto_2

    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_d
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto :goto_2

    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->I(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_e
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    goto :goto_2

    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lz4/h2;->K(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    iget-boolean v6, v0, Lz4/v1;->i:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f
    invoke-static {v3}, Lz4/x;->q(I)I

    move-result v3

    invoke-static {v5}, Lz4/x;->s(I)I

    move-result v6

    :goto_2
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    :pswitch_22
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->U(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_23
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->Y(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_24
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->a0(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_25
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->Z(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_26
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->V(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_27
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->X(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_28
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lz4/h2;->q(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    :pswitch_29
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lz4/h2;->n(ILjava/util/List;Lz4/f2;)I

    move-result v3

    goto :goto_3

    :pswitch_2a
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lz4/h2;->m(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    :pswitch_2b
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->b0(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2c
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->Z(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2d
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->a0(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2e
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->W(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2f
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->T(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_30
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->S(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_31
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->Z(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_32
    invoke-static {v1, v5, v6}, Lz4/v1;->z(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lz4/h2;->a0(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz4/r1;

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lz4/x;->P(ILz4/r1;Lz4/f2;)I

    move-result v3

    goto :goto_3

    :pswitch_34
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lz4/x;->h0(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_35
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->n0(II)I

    move-result v3

    goto :goto_3

    :pswitch_36
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v9, v10}, Lz4/x;->m0(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_37
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v11}, Lz4/x;->p0(II)I

    move-result v3

    goto :goto_3

    :pswitch_38
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->q0(II)I

    move-result v3

    goto :goto_3

    :pswitch_39
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->l0(II)I

    move-result v3

    goto :goto_3

    :pswitch_3a
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz4/i;

    invoke-static {v3, v5}, Lz4/x;->O(ILz4/i;)I

    move-result v3

    goto :goto_3

    :pswitch_3b
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lz4/h2;->l(ILjava/lang/Object;Lz4/f2;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lz4/i;

    if-eqz v6, :cond_10

    check-cast v5, Lz4/i;

    invoke-static {v3, v5}, Lz4/x;->O(ILz4/i;)I

    move-result v3

    goto/16 :goto_3

    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lz4/x;->D(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v8}, Lz4/x;->Q(IZ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v11}, Lz4/x;->o0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3f
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v9, v10}, Lz4/x;->k0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_40
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lz4/x;->j0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_41
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lz4/x;->f0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_42
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lz4/x;->a0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_43
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v3, v4}, Lz4/x;->C(IF)I

    move-result v3

    goto/16 :goto_3

    :pswitch_44
    invoke-virtual {v0, v1, v12}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lz4/x;->B(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    :cond_12
    iget-object v2, v0, Lz4/v1;->o:Lz4/x2;

    invoke-static {v2, v1}, Lz4/v1;->f(Lz4/x2;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_13
    sget-object v2, Lz4/v1;->s:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_5
    iget-object v13, v0, Lz4/v1;->a:[I

    array-length v13, v13

    if-ge v5, v13, :cond_2b

    invoke-virtual {v0, v5}, Lz4/v1;->s(I)I

    move-result v13

    iget-object v14, v0, Lz4/v1;->a:[I

    aget v15, v14, v5

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v5, 0x2

    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v3, :cond_14

    int-to-long v8, v14

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v3, v14

    :cond_14
    move v8, v11

    goto :goto_7

    :cond_15
    iget-boolean v8, v0, Lz4/v1;->i:Z

    if-eqz v8, :cond_16

    sget-object v8, Lz4/i0;->Z:Lz4/i0;

    invoke-virtual {v8}, Lz4/i0;->c()I

    move-result v8

    if-lt v4, v8, :cond_16

    sget-object v8, Lz4/i0;->m0:Lz4/i0;

    invoke-virtual {v8}, Lz4/i0;->c()I

    move-result v8

    if-gt v4, v8, :cond_16

    iget-object v8, v0, Lz4/v1;->a:[I

    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    and-int/2addr v8, v7

    goto :goto_6

    :cond_16
    const/4 v8, 0x0

    :goto_6
    const/16 v18, 0x0

    :goto_7
    and-int v9, v13, v7

    int-to-long v9, v9

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_45
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/r1;

    invoke-virtual {v0, v5}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lz4/x;->P(ILz4/r1;Lz4/f2;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_46
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lz4/x;->h0(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_47
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lz4/x;->n0(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_48
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lz4/x;->m0(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_49
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lz4/x;->p0(II)I

    move-result v8

    goto/16 :goto_e

    :pswitch_4a
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lz4/x;->q0(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4b
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lz4/x;->l0(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4c
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/i;

    invoke-static {v15, v4}, Lz4/x;->O(ILz4/i;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4d
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lz4/h2;->l(ILjava/lang/Object;Lz4/f2;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4e
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Lz4/i;

    if-eqz v8, :cond_17

    check-cast v4, Lz4/i;

    invoke-static {v15, v4}, Lz4/x;->O(ILz4/i;)I

    move-result v4

    goto/16 :goto_a

    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lz4/x;->D(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4f
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    invoke-static {v15, v4}, Lz4/x;->Q(IZ)I

    move-result v8

    goto/16 :goto_e

    :pswitch_50
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lz4/x;->o0(II)I

    move-result v8

    goto/16 :goto_e

    :pswitch_51
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lz4/x;->k0(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_52
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lz4/x;->j0(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_53
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lz4/x;->f0(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_54
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lz4/x;->a0(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_55
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lz4/x;->C(IF)I

    move-result v8

    goto/16 :goto_e

    :pswitch_56
    invoke-virtual {v0, v1, v15, v5}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lz4/x;->B(ID)I

    move-result v4

    goto/16 :goto_a

    :pswitch_57
    iget-object v4, v0, Lz4/v1;->q:Lz4/m1;

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v5}, Lz4/v1;->r(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v15, v8, v9}, Lz4/m1;->e(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_58
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v5}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lz4/h2;->r(ILjava/util/List;Lz4/f2;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_59
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->o(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_18

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_5a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->F(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_19

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_19
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_5b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->K(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_1a

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1a
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_5c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->I(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_1b

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_5d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->s(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_1c

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1c
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_5e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->C(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_1d

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_5f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->M(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_1e

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_60
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->I(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_1f

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_61
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->K(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_20

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_62
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->v(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_21

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_63
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_22

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto :goto_8

    :pswitch_64
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_23

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto :goto_8

    :pswitch_65
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->I(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_24

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_24
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    goto :goto_8

    :pswitch_66
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lz4/h2;->K(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    iget-boolean v9, v0, Lz4/v1;->i:Z

    if-eqz v9, :cond_25

    int-to-long v8, v8

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_25
    invoke-static {v15}, Lz4/x;->q(I)I

    move-result v8

    invoke-static {v4}, Lz4/x;->s(I)I

    move-result v9

    :goto_8
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_e

    :pswitch_67
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    invoke-static {v15, v4, v8}, Lz4/h2;->U(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_68
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->Y(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_69
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->a0(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6a
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->Z(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6b
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->V(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6c
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->X(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lz4/h2;->q(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v5}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lz4/h2;->n(ILjava/util/List;Lz4/f2;)I

    move-result v4

    goto :goto_a

    :pswitch_6f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lz4/h2;->m(ILjava/util/List;)I

    move-result v4

    goto :goto_a

    :pswitch_70
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    invoke-static {v15, v4, v8}, Lz4/h2;->b0(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_71
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->Z(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_72
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->a0(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_73
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->W(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_74
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->T(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_75
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->S(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_76
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->Z(ILjava/util/List;Z)I

    move-result v4

    :goto_9
    add-int/2addr v6, v4

    const/4 v4, 0x1

    goto :goto_d

    :pswitch_77
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v8}, Lz4/h2;->a0(ILjava/util/List;Z)I

    move-result v4

    :goto_a
    add-int/2addr v6, v4

    :cond_26
    :goto_b
    const/4 v4, 0x1

    :cond_27
    :goto_c
    const/4 v8, 0x0

    :goto_d
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_11

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/r1;

    invoke-virtual {v0, v5}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lz4/x;->P(ILz4/r1;Lz4/f2;)I

    move-result v4

    goto :goto_a

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lz4/x;->h0(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lz4/x;->n0(II)I

    move-result v4

    goto :goto_a

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lz4/x;->m0(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lz4/x;->p0(II)I

    move-result v8

    :goto_e
    add-int/2addr v6, v8

    goto :goto_b

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lz4/x;->q0(II)I

    move-result v4

    goto :goto_a

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lz4/x;->l0(II)I

    move-result v4

    goto :goto_a

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/i;

    invoke-static {v15, v4}, Lz4/x;->O(ILz4/i;)I

    move-result v4

    goto :goto_a

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lz4/h2;->l(ILjava/lang/Object;Lz4/f2;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Lz4/i;

    if-eqz v8, :cond_28

    check-cast v4, Lz4/i;

    invoke-static {v15, v4}, Lz4/x;->O(ILz4/i;)I

    move-result v4

    goto/16 :goto_a

    :cond_28
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lz4/x;->D(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    invoke-static {v15, v4}, Lz4/x;->Q(IZ)I

    move-result v8

    add-int/2addr v6, v8

    goto/16 :goto_c

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v18

    if-eqz v8, :cond_27

    const/4 v8, 0x0

    invoke-static {v15, v8}, Lz4/x;->o0(II)I

    move-result v9

    add-int/2addr v6, v9

    goto/16 :goto_d

    :pswitch_84
    const/4 v4, 0x1

    const/4 v8, 0x0

    and-int v9, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_29

    invoke-static {v15, v13, v14}, Lz4/x;->k0(IJ)I

    move-result v9

    goto :goto_f

    :pswitch_85
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lz4/x;->j0(II)I

    move-result v9

    goto :goto_f

    :pswitch_86
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lz4/x;->f0(IJ)I

    move-result v9

    goto :goto_f

    :pswitch_87
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lz4/x;->a0(IJ)I

    move-result v9

    :goto_f
    add-int/2addr v6, v9

    :cond_29
    const/4 v9, 0x0

    goto :goto_10

    :pswitch_88
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_29

    const/4 v9, 0x0

    invoke-static {v15, v9}, Lz4/x;->C(IF)I

    move-result v10

    add-int/2addr v6, v10

    :cond_2a
    :goto_10
    const-wide/16 v10, 0x0

    goto :goto_11

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_2a

    const-wide/16 v10, 0x0

    invoke-static {v15, v10, v11}, Lz4/x;->B(ID)I

    move-result v15

    add-int/2addr v6, v15

    :goto_11
    add-int/lit8 v5, v5, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_2b
    const/4 v8, 0x0

    iget-object v2, v0, Lz4/v1;->o:Lz4/x2;

    invoke-static {v2, v1}, Lz4/v1;->f(Lz4/x2;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lz4/v1;->f:Z

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v2, v1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object v1

    const/4 v11, 0x0

    :goto_12
    iget-object v2, v1, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2}, Lz4/i2;->m()I

    move-result v2

    if-ge v11, v2, :cond_2c

    iget-object v2, v1, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2, v11}, Lz4/i2;->g(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz4/h0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lz4/f0;->j(Lz4/h0;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_2c
    iget-object v1, v1, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Lz4/i2;->n()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz4/h0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lz4/f0;->j(Lz4/h0;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_13

    :cond_2d
    add-int/2addr v6, v8

    :cond_2e
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz4/v1;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lz4/v1;->s(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lz4/v1;->a:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lz4/v1;->w(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, p2, v4, v0}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v0}, Lz4/v1;->v(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lz4/v1;->w(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p2, v4, v0}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v0}, Lz4/v1;->v(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lz4/v1;->q:Lz4/m1;

    invoke-static {v1, p1, p2, v2, v3}, Lz4/h2;->f(Lz4/m1;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lz4/v1;->n:Lz4/b1;

    invoke-virtual {v1, p1, p2, v2, v3}, Lz4/b1;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lz4/v1;->j(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lz4/d3;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lz4/d3;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lz4/v1;->j(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->h(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lz4/d3;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lz4/d3;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lz4/d3;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lz4/d3;->d(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lz4/d3;->c(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lz4/v1;->u(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lz4/v1;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lz4/v1;->o:Lz4/x2;

    invoke-static {v0, p1, p2}, Lz4/h2;->g(Lz4/x2;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lz4/v1;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz4/v1;->p:Lz4/c0;

    invoke-static {v0, p1, p2}, Lz4/h2;->e(Lz4/c0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lz4/v1;->k:I

    :goto_0
    iget v1, p0, Lz4/v1;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lz4/v1;->j:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lz4/v1;->s(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lz4/v1;->q:Lz4/m1;

    invoke-interface {v4, v3}, Lz4/m1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz4/v1;->j:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lz4/v1;->n:Lz4/b1;

    iget-object v3, p0, Lz4/v1;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lz4/b1;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz4/v1;->o:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->c(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lz4/v1;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->e(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;Lz4/r3;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz4/r3;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lz4/r3;->r()I

    move-result v0

    sget v1, Lz4/m0$d;->m:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lz4/v1;->o:Lz4/x2;

    invoke-static {v0, p1, p2}, Lz4/v1;->k(Lz4/x2;Ljava/lang/Object;Lz4/r3;)V

    iget-boolean v0, p0, Lz4/v1;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object v0

    iget-object v1, v0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lz4/f0;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    :goto_0
    iget-object v7, p0, Lz4/v1;->a:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    invoke-virtual {p0, v7}, Lz4/v1;->s(I)I

    move-result v8

    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    iget-object v10, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v10, v1}, Lz4/c0;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    iget-object v10, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v10, p2, v1}, Lz4/c0;->b(Lz4/r3;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lz4/r3;->D(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->a(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->M(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->d(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->K(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->x(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->J(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz4/i;

    invoke-interface {p2, v9, v8}, Lz4/r3;->z(ILz4/i;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lz4/r3;->m(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lz4/v1;->i(ILjava/lang/Object;Lz4/r3;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->E(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->i(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->A(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->j(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->b(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->c(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->p(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->B(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->v(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, p1, v9, v7}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/v1;->A(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->u(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, p2, v9, v8, v7}, Lz4/v1;->l(Lz4/r3;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v7}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lz4/h2;->j(ILjava/util/List;Lz4/r3;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->w(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_15
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->N(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_16
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->G(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_17
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->P(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_18
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->Q(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_19
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->L(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1a
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->R(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1b
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->O(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1c
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->E(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1d
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->J(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1e
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->t(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1f
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->p(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_20
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->k(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_21
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lz4/h2;->d(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->w(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_23
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->N(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_24
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->G(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_25
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->P(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_26
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->Q(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_27
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->L(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_28
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lz4/h2;->i(ILjava/util/List;Lz4/r3;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v7}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lz4/h2;->c(ILjava/util/List;Lz4/r3;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lz4/h2;->b(ILjava/util/List;Lz4/r3;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->R(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_2c
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->O(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_2d
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->E(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_2e
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->J(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_2f
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->t(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_30
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->p(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_31
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->k(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_32
    iget-object v9, p0, Lz4/v1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lz4/h2;->d(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lz4/r3;->D(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->a(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->M(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->d(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->K(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->x(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->J(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz4/i;

    invoke-interface {p2, v9, v8}, Lz4/r3;->z(ILz4/i;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lz4/r3;->m(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lz4/v1;->i(ILjava/lang/Object;Lz4/r3;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->i(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->A(II)V

    goto :goto_3

    :pswitch_3f
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->j(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->b(II)V

    goto :goto_3

    :pswitch_41
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->c(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->p(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lz4/r3;->v(IF)V

    goto :goto_3

    :pswitch_44
    invoke-virtual {p0, p1, v7}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lz4/r3;->u(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    iget-object p1, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {p1, p2, v1}, Lz4/c0;->b(Lz4/r3;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lz4/v1;->h:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lz4/v1;->f:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object v0

    iget-object v1, v0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lz4/f0;->d()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    :goto_5
    iget-object v7, p0, Lz4/v1;->a:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_c

    invoke-virtual {p0, v8}, Lz4/v1;->s(I)I

    move-result v9

    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    :goto_7
    if-eqz v1, :cond_a

    iget-object v11, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v11, v1}, Lz4/c0;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    iget-object v11, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v11, p2, v1}, Lz4/c0;->b(Lz4/r3;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v1, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_45
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lz4/r3;->D(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_8

    :pswitch_46
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->a(IJ)V

    goto/16 :goto_8

    :pswitch_47
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->M(II)V

    goto/16 :goto_8

    :pswitch_48
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->d(IJ)V

    goto/16 :goto_8

    :pswitch_49
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->K(II)V

    goto/16 :goto_8

    :pswitch_4a
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->x(II)V

    goto/16 :goto_8

    :pswitch_4b
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->J(II)V

    goto/16 :goto_8

    :pswitch_4c
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz4/i;

    invoke-interface {p2, v10, v9}, Lz4/r3;->z(ILz4/i;)V

    goto/16 :goto_8

    :pswitch_4d
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lz4/r3;->m(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_8

    :pswitch_4e
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lz4/v1;->i(ILjava/lang/Object;Lz4/r3;)V

    goto/16 :goto_8

    :pswitch_4f
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->E(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->i(IZ)V

    goto/16 :goto_8

    :pswitch_50
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->A(II)V

    goto/16 :goto_8

    :pswitch_51
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->j(IJ)V

    goto/16 :goto_8

    :pswitch_52
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->b(II)V

    goto/16 :goto_8

    :pswitch_53
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->c(IJ)V

    goto/16 :goto_8

    :pswitch_54
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->p(IJ)V

    goto/16 :goto_8

    :pswitch_55
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->B(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->v(IF)V

    goto/16 :goto_8

    :pswitch_56
    invoke-virtual {p0, p1, v10, v8}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/v1;->A(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->u(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, p2, v10, v9, v8}, Lz4/v1;->l(Lz4/r3;ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_58
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v8}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lz4/h2;->j(ILjava/util/List;Lz4/r3;Lz4/f2;)V

    goto/16 :goto_8

    :pswitch_59
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->w(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_5a
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->N(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_5b
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->G(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_5c
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->P(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_5d
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->Q(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_5e
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->L(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_5f
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->R(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_60
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->O(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_61
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->E(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_62
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->J(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_63
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->t(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_64
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->p(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_65
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->k(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_66
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lz4/h2;->d(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_67
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->w(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_68
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->N(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_69
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->G(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_6a
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->P(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_6b
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->Q(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_6c
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->L(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_6d
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lz4/h2;->i(ILjava/util/List;Lz4/r3;)V

    goto/16 :goto_8

    :pswitch_6e
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v8}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lz4/h2;->c(ILjava/util/List;Lz4/r3;Lz4/f2;)V

    goto/16 :goto_8

    :pswitch_6f
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lz4/h2;->b(ILjava/util/List;Lz4/r3;)V

    goto/16 :goto_8

    :pswitch_70
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->R(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_71
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->O(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_72
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->E(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_73
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->J(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_74
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->t(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_75
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->p(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_76
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->k(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_77
    iget-object v10, p0, Lz4/v1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lz4/h2;->d(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_8

    :pswitch_78
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lz4/r3;->D(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_8

    :pswitch_79
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->a(IJ)V

    goto/16 :goto_8

    :pswitch_7a
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->M(II)V

    goto/16 :goto_8

    :pswitch_7b
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->d(IJ)V

    goto/16 :goto_8

    :pswitch_7c
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->K(II)V

    goto/16 :goto_8

    :pswitch_7d
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->x(II)V

    goto/16 :goto_8

    :pswitch_7e
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->J(II)V

    goto/16 :goto_8

    :pswitch_7f
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz4/i;

    invoke-interface {p2, v10, v9}, Lz4/r3;->z(ILz4/i;)V

    goto/16 :goto_8

    :pswitch_80
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lz4/r3;->m(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_8

    :pswitch_81
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lz4/v1;->i(ILjava/lang/Object;Lz4/r3;)V

    goto/16 :goto_8

    :pswitch_82
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->i(IZ)V

    goto/16 :goto_8

    :pswitch_83
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->A(II)V

    goto :goto_8

    :pswitch_84
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->j(IJ)V

    goto :goto_8

    :pswitch_85
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->b(II)V

    goto :goto_8

    :pswitch_86
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->c(IJ)V

    goto :goto_8

    :pswitch_87
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->p(IJ)V

    goto :goto_8

    :pswitch_88
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lz4/r3;->v(IF)V

    goto :goto_8

    :pswitch_89
    invoke-virtual {p0, p1, v8}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lz4/r3;->u(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    iget-object v2, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v2, p2, v1}, Lz4/c0;->b(Lz4/r3;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lz4/v1;->o:Lz4/x2;

    invoke-static {v0, p1, p2}, Lz4/v1;->k(Lz4/x2;Ljava/lang/Object;Lz4/r3;)V

    return-void

    :cond_f
    invoke-virtual {p0, p1, p2}, Lz4/v1;->x(Ljava/lang/Object;Lz4/r3;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lz4/v1;->k:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_c

    iget-object v4, p0, Lz4/v1;->j:[I

    aget v4, v4, v2

    iget-object v6, p0, Lz4/v1;->a:[I

    aget v6, v6, v4

    invoke-virtual {p0, v4}, Lz4/v1;->s(I)I

    move-result v7

    iget-boolean v8, p0, Lz4/v1;->h:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    iget-object v8, p0, Lz4/v1;->a:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v1, :cond_1

    sget-object v1, Lz4/v1;->s:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v1, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v1, v10

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    invoke-virtual {p0, p1, v4, v3, v8}, Lz4/v1;->o(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_a

    const/16 v11, 0x11

    if-eq v10, v11, :cond_a

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_7

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_6

    const/16 v8, 0x44

    if-eq v10, v8, :cond_6

    const/16 v6, 0x31

    if-eq v10, v6, :cond_7

    const/16 v5, 0x32

    if-eq v10, v5, :cond_4

    goto :goto_5

    :cond_4
    iget-object v5, p0, Lz4/v1;->q:Lz4/m1;

    and-int v6, v7, v9

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lz4/m1;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v4}, Lz4/v1;->r(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lz4/v1;->q:Lz4/m1;

    invoke-interface {v0, p1}, Lz4/m1;->d(Ljava/lang/Object;)Lz4/k1;

    const/4 p1, 0x0

    throw p1

    :cond_6
    invoke-virtual {p0, p1, v6, v4}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0, v4}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lz4/v1;->p(Ljava/lang/Object;ILz4/f2;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_7
    and-int v6, v7, v9

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0, v4}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v4

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Lz4/f2;->e(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-nez v5, :cond_b

    return v0

    :cond_a
    invoke-virtual {p0, p1, v4, v3, v8}, Lz4/v1;->o(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0, v4}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lz4/v1;->p(Ljava/lang/Object;ILz4/f2;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    iget-boolean v1, p0, Lz4/v1;->f:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v1, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    invoke-virtual {p1}, Lz4/f0;->c()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    :cond_d
    return v5
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lz4/v1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lz4/v1;->s(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v2}, Lz4/v1;->t(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lz4/h2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lz4/h2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lz4/h2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lz4/h2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lz4/h2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lz4/h2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lz4/h2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p2, v6, v7}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v2}, Lz4/v1;->y(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lz4/v1;->o:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lz4/v1;->o:Lz4/x2;

    invoke-virtual {v2, p2}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lz4/v1;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    iget-object v0, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v0, p2}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz4/f0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lz4/v1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lz4/v1;->s(I)I

    move-result v3

    iget-object v4, p0, Lz4/v1;->a:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->E(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lz4/o0;->g(Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->B(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/v1;->A(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1c
    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lz4/o0;->g(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lz4/o0;->j(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lz4/v1;->o:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lz4/v1;->f:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    invoke-virtual {p1}, Lz4/f0;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lz4/v1;->s(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p2, p3}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lz4/o0;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lz4/v1;->u(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lz4/v1;->u(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public final l(Lz4/r3;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lz4/r3;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Lz4/v1;->q:Lz4/m1;

    invoke-virtual {p0, p4}, Lz4/v1;->r(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lz4/m1;->d(Ljava/lang/Object;)Lz4/k1;

    const/4 p4, 0x0

    iget-object v0, p0, Lz4/v1;->q:Lz4/m1;

    invoke-interface {v0, p3}, Lz4/m1;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lz4/r3;->f(ILz4/k1;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lz4/v1;->h:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {p0, p2}, Lz4/v1;->s(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :pswitch_1
    invoke-static {p1, v0, v1}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    :pswitch_2
    invoke-static {p1, v0, v1}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :pswitch_3
    invoke-static {p1, v0, v1}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_4
    invoke-static {p1, v0, v1}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    :pswitch_5
    invoke-static {p1, v0, v1}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_6
    invoke-static {p1, v0, v1}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p2, Lz4/i;->b:Lz4/i;

    invoke-static {p1, v0, v1}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lz4/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_8
    invoke-static {p1, v0, v1}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_9
    invoke-static {p1, v0, v1}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    instance-of p2, p1, Lz4/i;

    if-eqz p2, :cond_c

    sget-object p2, Lz4/i;->b:Lz4/i;

    invoke-virtual {p2, p1}, Lz4/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    :pswitch_c
    invoke-static {p1, v0, v1}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    :pswitch_d
    invoke-static {p1, v0, v1}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    :pswitch_e
    invoke-static {p1, v0, v1}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    :pswitch_f
    invoke-static {p1, v0, v1}, Lz4/d3;->B(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    :pswitch_10
    invoke-static {p1, v0, v1}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    :pswitch_11
    invoke-static {p1, v0, v1}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    :cond_14
    invoke-virtual {p0, p2}, Lz4/v1;->t(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lz4/v1;->t(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final o(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lz4/v1;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final q(I)Lz4/f2;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lz4/v1;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lz4/f2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    iget-object v1, p0, Lz4/v1;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lz4/d2;->b(Ljava/lang/Class;)Lz4/f2;

    move-result-object v0

    iget-object v1, p0, Lz4/v1;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final r(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz4/v1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final s(I)I
    .locals 1

    iget-object v0, p0, Lz4/v1;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final t(I)I
    .locals 1

    iget-object v0, p0, Lz4/v1;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final u(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lz4/v1;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lz4/v1;->t(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lz4/d3;->A(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1, v1, v2, p2}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final v(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lz4/v1;->t(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lz4/d3;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final w(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lz4/v1;->s(I)I

    move-result v0

    iget-object v1, p0, Lz4/v1;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, p2, v1, p3}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v2, v3}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lz4/o0;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, p3}, Lz4/v1;->v(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v2, v3, p2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, p3}, Lz4/v1;->v(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public final x(Ljava/lang/Object;Lz4/r3;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz4/r3;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lz4/v1;->f:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v3, v1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object v3

    iget-object v5, v3, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lz4/f0;->d()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    iget-object v7, v0, Lz4/v1;->a:[I

    array-length v7, v7

    sget-object v8, Lz4/v1;->s:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    invoke-virtual {v0, v10}, Lz4/v1;->s(I)I

    move-result v12

    iget-object v13, v0, Lz4/v1;->a:[I

    aget v14, v13, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    iget-boolean v4, v0, Lz4/v1;->h:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    aget v4, v13, v4

    and-int v13, v4, v16

    move/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v13

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v9, v5}, Lz4/c0;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    iget-object v9, v0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v9, v2, v5}, Lz4/c0;->b(Lz4/r3;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    and-int v9, v12, v16

    int-to-long v9, v9

    move/from16 v12, v17

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lz4/r3;->D(ILjava/lang/Object;Lz4/f2;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->a(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->M(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->d(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->K(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->x(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->J(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/i;

    invoke-interface {v2, v14, v4}, Lz4/r3;->z(ILz4/i;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lz4/r3;->m(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lz4/v1;->i(ILjava/lang/Object;Lz4/r3;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->E(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->i(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->A(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->j(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->C(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->b(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->c(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->D(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->p(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->B(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->v(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v1, v14, v12}, Lz4/v1;->n(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lz4/v1;->A(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->u(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v14, v4, v12}, Lz4/v1;->l(Lz4/r3;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-static {v4, v9, v2, v10}, Lz4/h2;->j(ILjava/util/List;Lz4/r3;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->w(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->N(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->G(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->P(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->Q(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->L(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->R(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->O(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->E(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->J(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->t(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->p(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->k(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->d(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->w(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->N(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->G(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->P(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->Q(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->L(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_28
    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lz4/h2;->i(ILjava/util/List;Lz4/r3;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v10

    invoke-static {v4, v9, v2, v10}, Lz4/h2;->c(ILjava/util/List;Lz4/r3;Lz4/f2;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lz4/h2;->b(ILjava/util/List;Lz4/r3;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->R(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->O(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->E(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->J(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->t(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->p(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->k(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    iget-object v4, v0, Lz4/v1;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lz4/h2;->d(ILjava/util/List;Lz4/r3;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lz4/r3;->D(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->a(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->M(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->d(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->K(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->x(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->J(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/i;

    invoke-interface {v2, v14, v4}, Lz4/r3;->z(ILz4/i;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lz4/v1;->q(I)Lz4/f2;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lz4/r3;->m(ILjava/lang/Object;Lz4/f2;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lz4/v1;->i(ILjava/lang/Object;Lz4/r3;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lz4/d3;->D(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->i(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->A(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->j(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->b(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->c(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->p(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lz4/d3;->E(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lz4/r3;->v(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lz4/d3;->F(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lz4/r3;->u(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v12, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    iget-object v4, v0, Lz4/v1;->p:Lz4/c0;

    invoke-virtual {v4, v2, v5}, Lz4/c0;->b(Lz4/r3;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    iget-object v3, v0, Lz4/v1;->o:Lz4/x2;

    invoke-static {v3, v1, v2}, Lz4/v1;->k(Lz4/x2;Ljava/lang/Object;Lz4/r3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lz4/v1;->m(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public Lp1/j;
.super Lp1/b;
.source "SourceFile"


# static fields
.field public static final a:Lp1/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp1/j;

    invoke-direct {v0}, Lp1/j;-><init>()V

    sput-object v0, Lp1/j;->a:Lp1/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp1/b;-><init>()V

    return-void
.end method

.method public static x(I)Lq1/a;
    .locals 3

    new-instance v0, Lq1/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad attribute length; expected length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y()Lq1/a;
    .locals 2

    new-instance v0, Lq1/i;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z()Lq1/a;
    .locals 2

    new-instance v0, Lq1/i;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(Lp1/f;ILjava/lang/String;IILq1/j;)Lq1/a;
    .locals 6

    const-string v0, "Synthetic"

    const-string v1, "Signature"

    const-string v2, "RuntimeVisibleAnnotations"

    const-string v3, "RuntimeInvisibleAnnotations"

    const-string v4, "Deprecated"

    if-eqz p2, :cond_13

    const/4 v5, 0x1

    if-eq p2, v5, :cond_d

    const/4 v5, 0x2

    if-eq p2, v5, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_1

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->k(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_2

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->l(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_1d

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->m(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v5, "AnnotationDefault"

    if-ne p3, v5, :cond_4

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->c(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v5, "Code"

    if-ne p3, v5, :cond_5

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->e(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_5
    if-ne p3, v4, :cond_6

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->g(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v4, "Exceptions"

    if-ne p3, v4, :cond_7

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->i(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_7
    if-ne p3, v3, :cond_8

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->p(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_8
    if-ne p3, v2, :cond_9

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->r(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v2, :cond_a

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->q(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v2, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v2, :cond_b

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->s(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_b
    if-ne p3, v1, :cond_c

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->t(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_c
    if-ne p3, v0, :cond_1d

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->w(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v5, "ConstantValue"

    if-ne p3, v5, :cond_e

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->f(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_e
    if-ne p3, v4, :cond_f

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->g(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_f
    if-ne p3, v3, :cond_10

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->p(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_10
    if-ne p3, v2, :cond_11

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->r(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_11
    if-ne p3, v1, :cond_12

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->t(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_12
    if-ne p3, v0, :cond_1d

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->w(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_13
    const-string v5, "BootstrapMethods"

    if-ne p3, v5, :cond_14

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->d(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_14
    if-ne p3, v4, :cond_15

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->g(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_15
    const-string v4, "EnclosingMethod"

    if-ne p3, v4, :cond_16

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->h(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_16
    const-string v4, "InnerClasses"

    if-ne p3, v4, :cond_17

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->j(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_17
    if-ne p3, v3, :cond_18

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->p(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_18
    if-ne p3, v2, :cond_19

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->r(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_19
    if-ne p3, v0, :cond_1a

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->w(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_1a
    if-ne p3, v1, :cond_1b

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->t(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string v0, "SourceDebugExtension"

    if-ne p3, v0, :cond_1c

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->u(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_1d

    invoke-virtual {p0, p1, p4, p5, p6}, Lp1/j;->v(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_1d
    :goto_0
    invoke-super/range {p0 .. p6}, Lp1/b;->b(Lp1/f;ILjava/lang/String;IILq1/j;)Lq1/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lp1/f;IILq1/j;)Lq1/a;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    :cond_0
    new-instance v0, Lp1/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lp1/a;-><init>(Lp1/f;IILq1/j;)V

    invoke-virtual {v0}, Lp1/a;->j()Lx1/a;

    move-result-object p1

    new-instance p2, Lm1/a;

    invoke-direct {p2, p1, p3}, Lm1/a;-><init>(Lx1/a;I)V

    return-object p2
.end method

.method public final d(Lp1/f;IILq1/j;)Lq1/a;
    .locals 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb2/d;->n(I)I

    move-result v4

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_boostrap_methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, p2, v0, v2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, -0x2

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object v2

    invoke-virtual {p1}, Lp1/f;->p()Lx1/e0;

    move-result-object v3

    move-object v0, p0

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lp1/j;->n(Lb2/d;Lx1/b;Lx1/e0;IIILq1/j;)Ln1/d;

    move-result-object p1

    new-instance p2, Lm1/b;

    invoke-direct {p2, p1}, Lm1/b;-><init>(Ln1/d;)V

    return-object p2
.end method

.method public final e(Lp1/f;IILq1/j;)Lq1/a;
    .locals 22

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lp1/f;->e()Lb2/d;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lp1/f;->f()Lx1/b;

    move-result-object v4

    invoke-virtual {v3, v0}, Lb2/d;->n(I)I

    move-result v6

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v5}, Lb2/d;->n(I)I

    move-result v7

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v3, v8}, Lb2/d;->i(I)I

    move-result v9

    const/4 v10, 0x2

    if-eqz v2, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "max_stack: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v3, v0, v10, v11}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "max_locals: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v3, v5, v10, v11}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "code_length: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x4

    invoke-interface {v2, v3, v8, v11, v5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v8, v9, 0x4

    if-ge v1, v8, :cond_2

    invoke-static {}, Lp1/j;->z()Lq1/a;

    move-result-object v0

    return-object v0

    :cond_2
    add-int v8, v5, v9

    sub-int/2addr v1, v9

    new-instance v9, Ln1/i;

    invoke-virtual {v3, v5, v8}, Lb2/d;->r(II)Lb2/d;

    move-result-object v5

    invoke-direct {v9, v5, v4}, Ln1/i;-><init>(Lb2/d;Lx1/b;)V

    if-eqz v2, :cond_3

    new-instance v5, Lp1/e;

    invoke-virtual {v9}, Ln1/i;->c()Lb2/d;

    move-result-object v11

    invoke-direct {v5, v11, v2}, Lp1/e;-><init>(Lb2/d;Lq1/j;)V

    invoke-virtual {v9, v5}, Ln1/i;->b(Ln1/i$c;)V

    :cond_3
    invoke-virtual {v3, v8}, Lb2/d;->n(I)I

    move-result v5

    if-nez v5, :cond_4

    sget-object v11, Ln1/g;->a:Ln1/g;

    goto :goto_0

    :cond_4
    new-instance v11, Ln1/g;

    invoke-direct {v11, v5}, Ln1/g;-><init>(I)V

    :goto_0
    if-eqz v2, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception_table_length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v8, v10, v12}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_5
    add-int/2addr v8, v10

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v12, v5, 0x8

    add-int/2addr v12, v10

    if-ge v1, v12, :cond_6

    invoke-static {}, Lp1/j;->z()Lq1/a;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_b

    if-eqz v2, :cond_7

    const/4 v12, 0x1

    invoke-interface {v2, v12}, Lq1/j;->b(I)V

    :cond_7
    invoke-virtual {v3, v8}, Lb2/d;->n(I)I

    move-result v18

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v3, v12}, Lb2/d;->n(I)I

    move-result v19

    add-int/lit8 v12, v8, 0x4

    invoke-virtual {v3, v12}, Lb2/d;->n(I)I

    move-result v20

    add-int/lit8 v12, v8, 0x6

    invoke-virtual {v3, v12}, Lb2/d;->n(I)I

    move-result v12

    invoke-interface {v4, v12}, Lx1/b;->u(I)Lx1/a;

    move-result-object v12

    move-object/from16 v21, v12

    check-cast v21, Lx1/e0;

    move-object v12, v11

    move v13, v10

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    move-object/from16 v17, v21

    invoke-virtual/range {v12 .. v17}, Ln1/g;->A(IIIILx1/e0;)V

    if-eqz v2, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v21, :cond_8

    const-string v13, "<any>"

    goto :goto_2

    :cond_8
    invoke-virtual/range {v21 .. v21}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    invoke-interface {v2, v3, v8, v13, v12}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_9
    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, -0x8

    if-eqz v2, :cond_a

    const/4 v12, -0x1

    invoke-interface {v2, v12}, Lq1/j;->b(I)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v11}, Lb2/o;->setImmutable()V

    new-instance v3, Lp1/c;

    const/4 v4, 0x3

    move-object/from16 v12, p0

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4, v8, v12}, Lp1/c;-><init>(Lp1/f;IILp1/b;)V

    invoke-virtual {v3, v2}, Lp1/c;->e(Lq1/j;)V

    invoke-virtual {v3}, Lp1/c;->b()Lq1/k;

    move-result-object v10

    invoke-virtual {v10}, Lb2/o;->setImmutable()V

    invoke-virtual {v3}, Lp1/c;->a()I

    move-result v2

    sub-int/2addr v2, v8

    if-eq v2, v1, :cond_c

    sub-int/2addr v8, v0

    add-int/2addr v2, v8

    invoke-static {v2}, Lp1/j;->x(I)Lq1/a;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Lm1/c;

    move-object v5, v0

    move-object v8, v9

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lm1/c;-><init>(IILn1/i;Ln1/g;Lq1/b;)V

    return-object v0
.end method

.method public final f(Lp1/f;IILq1/j;)Lq1/a;
    .locals 4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lp1/j;->x(I)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p3

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object p1

    invoke-virtual {p3, p2}, Lb2/d;->n(I)I

    move-result v1

    invoke-interface {p1, v1}, Lx1/b;->get(I)Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/g0;

    new-instance v1, Lm1/d;

    invoke-direct {v1, p1}, Lm1/d;-><init>(Lx1/g0;)V

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public final g(Lp1/f;IILq1/j;)Lq1/a;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lp1/j;->x(I)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lm1/e;

    invoke-direct {p1}, Lm1/e;-><init>()V

    return-object p1
.end method

.method public final h(Lp1/f;IILq1/j;)Lq1/a;
    .locals 5

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lp1/j;->x(I)Lq1/a;

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p3

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object p1

    invoke-virtual {p3, p2}, Lb2/d;->n(I)I

    move-result v0

    invoke-interface {p1, v0}, Lx1/b;->get(I)Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/e0;

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p3, v1}, Lb2/d;->n(I)I

    move-result v2

    invoke-interface {p1, v2}, Lx1/b;->u(I)Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/a0;

    new-instance v2, Lm1/f;

    invoke-direct {v2, v0, p1}, Lm1/f;-><init>(Lx1/e0;Lx1/a0;)V

    if-eqz p4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {p4, p3, p2, v3, v0}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lp1/f;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, v1, v3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public final i(Lp1/f;IILq1/j;)Lq1/a;
    .locals 5

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb2/d;->n(I)I

    move-result v2

    if-eqz p4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number_of_exceptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v1, p2, v0, v3}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/2addr p2, v0

    add-int/lit8 p3, p3, -0x2

    mul-int/lit8 p4, v2, 0x2

    if-eq p3, p4, :cond_2

    add-int/2addr p4, v0

    invoke-static {p4}, Lp1/j;->x(I)Lq1/a;

    :cond_2
    invoke-virtual {p1, p2, v2}, Lp1/f;->s(II)Ly1/e;

    move-result-object p1

    new-instance p2, Lm1/g;

    invoke-direct {p2, p1}, Lm1/g;-><init>(Ly1/e;)V

    return-object p2
.end method

.method public final j(Lp1/f;IILq1/j;)Lq1/a;
    .locals 21

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lp1/f;->e()Lb2/d;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lp1/f;->f()Lx1/b;

    move-result-object v5

    invoke-virtual {v4, v0}, Lb2/d;->n(I)I

    move-result v6

    if-eqz v2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number_of_classes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v0, v3, v7}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v7, v6, 0x8

    if-eq v1, v7, :cond_2

    add-int/2addr v7, v3

    invoke-static {v7}, Lp1/j;->x(I)Lq1/a;

    :cond_2
    new-instance v1, Lm1/x;

    invoke-direct {v1, v6}, Lm1/x;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    invoke-virtual {v4, v0}, Lb2/d;->n(I)I

    move-result v8

    add-int/lit8 v14, v0, 0x2

    invoke-virtual {v4, v14}, Lb2/d;->n(I)I

    move-result v9

    add-int/lit8 v15, v0, 0x4

    invoke-virtual {v4, v15}, Lb2/d;->n(I)I

    move-result v10

    add-int/lit8 v13, v0, 0x6

    invoke-virtual {v4, v13}, Lb2/d;->n(I)I

    move-result v16

    invoke-interface {v5, v8}, Lx1/b;->get(I)Lx1/a;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lx1/e0;

    invoke-interface {v5, v9}, Lx1/b;->u(I)Lx1/a;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lx1/e0;

    invoke-interface {v5, v10}, Lx1/b;->u(I)Lx1/a;

    move-result-object v8

    move-object/from16 v19, v8

    check-cast v19, Lx1/d0;

    move-object v8, v1

    move v9, v7

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move/from16 v20, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lm1/x;->z(ILx1/e0;Lx1/e0;Lx1/d0;I)V

    if-eqz v2, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inner_class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lp1/f;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v0, v3, v8}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  outer_class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Lp1/f;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v14, v3, v8}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lp1/f;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v15, v3, v8}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  access_flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lw1/a;->d(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v9, v20

    invoke-interface {v2, v4, v9, v3, v8}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    new-instance v0, Lm1/h;

    invoke-direct {v0, v1}, Lm1/h;-><init>(Lm1/x;)V

    return-object v0
.end method

.method public final k(Lp1/f;IILq1/j;)Lq1/a;
    .locals 5

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb2/d;->n(I)I

    move-result v1

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line_number_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p1, p2, v0, v2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/2addr p2, v0

    add-int/lit8 p3, p3, -0x2

    mul-int/lit8 v2, v1, 0x4

    if-eq p3, v2, :cond_2

    add-int/2addr v2, v0

    invoke-static {v2}, Lp1/j;->x(I)Lq1/a;

    :cond_2
    new-instance p3, Ln1/m;

    invoke-direct {p3, v1}, Ln1/m;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, p2}, Lb2/d;->n(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v3}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Ln1/m;->B(III)V

    if-eqz p4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p4, p1, p2, v3, v2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lb2/o;->setImmutable()V

    new-instance p1, Lm1/i;

    invoke-direct {p1, p3}, Lm1/i;-><init>(Ln1/m;)V

    return-object p1
.end method

.method public final l(Lp1/f;IILq1/j;)Lq1/a;
    .locals 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb2/d;->n(I)I

    move-result v6

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, p2, v0, v2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Lb2/d;->r(II)Lb2/d;

    move-result-object v3

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lp1/j;->o(Lb2/d;Lx1/b;Lq1/j;IZ)Ln1/n;

    move-result-object p1

    new-instance p2, Lm1/j;

    invoke-direct {p2, p1}, Lm1/j;-><init>(Ln1/n;)V

    return-object p2
.end method

.method public final m(Lp1/f;IILq1/j;)Lq1/a;
    .locals 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb2/d;->n(I)I

    move-result v6

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_type_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, p2, v0, v2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Lb2/d;->r(II)Lb2/d;

    move-result-object v3

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object v4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lp1/j;->o(Lb2/d;Lx1/b;Lq1/j;IZ)Ln1/n;

    move-result-object p1

    new-instance p2, Lm1/k;

    invoke-direct {p2, p1}, Lm1/k;-><init>(Ln1/n;)V

    return-object p2
.end method

.method public final n(Lb2/d;Lx1/b;Lx1/e0;IIILq1/j;)Ln1/d;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p7

    new-instance v4, Ln1/d;

    invoke-direct {v4, v2}, Ln1/d;-><init>(I)V

    move/from16 v6, p5

    move/from16 v7, p6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_5

    const/4 v9, 0x4

    if-ge v7, v9, :cond_0

    invoke-static {}, Lp1/j;->z()Lq1/a;

    :cond_0
    invoke-virtual {v0, v6}, Lb2/d;->n(I)I

    move-result v9

    add-int/lit8 v10, v6, 0x2

    invoke-virtual {v0, v10}, Lb2/d;->n(I)I

    move-result v11

    const/4 v12, 0x2

    if-eqz v3, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bootstrap_method_ref: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v6, v12, v13}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "num_bootstrap_arguments: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v10, v12, v13}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v7, -0x4

    mul-int/lit8 v10, v11, 0x2

    if-ge v7, v10, :cond_2

    invoke-static {}, Lp1/j;->z()Lq1/a;

    :cond_2
    new-instance v10, Ln1/c;

    invoke-direct {v10, v11}, Ln1/c;-><init>(I)V

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_4

    invoke-virtual {v0, v6}, Lb2/d;->n(I)I

    move-result v14

    if-eqz v3, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bootstrap_arguments["

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v6, v12, v5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_3
    invoke-interface {v1, v14}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    invoke-virtual {v10, v13, v5}, Ln1/c;->x(ILx1/a;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Lb2/o;->setImmutable()V

    invoke-interface {v1, v9}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    check-cast v5, Lx1/y;

    move-object/from16 v9, p3

    invoke-virtual {v4, v8, v9, v5, v10}, Ln1/d;->A(ILx1/e0;Lx1/y;Ln1/c;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Lb2/o;->setImmutable()V

    if-eqz v7, :cond_6

    invoke-static {v7}, Lp1/j;->x(I)Lq1/a;

    :cond_6
    return-object v4
.end method

.method public final o(Lb2/d;Lx1/b;Lq1/j;IZ)Ln1/n;
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    const-string v3, " "

    invoke-virtual/range {p1 .. p1}, Lb2/d;->q()I

    move-result v4

    mul-int/lit8 v5, v2, 0xa

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lp1/j;->x(I)Lq1/a;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lb2/d;->o()Lb2/d$a;

    move-result-object v4

    new-instance v13, Ln1/n;

    invoke-direct {v13, v2}, Ln1/n;-><init>(I)V

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v2, :cond_3

    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v15

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v16

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v17

    invoke-interface {v0, v5}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lx1/d0;

    invoke-interface {v0, v6}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lx1/d0;

    const/4 v5, 0x0

    if-eqz p5, :cond_1

    move-object v10, v5

    move-object/from16 v11, v19

    goto :goto_1

    :cond_1
    move-object v11, v5

    move-object/from16 v10, v19

    :goto_1
    move-object v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Ln1/n;->D(IIILx1/d0;Lx1/d0;Lx1/d0;I)V

    if-eqz v1, :cond_2

    mul-int/lit8 v5, v14, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v15, v15, v16

    invoke-static {v15}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    move-object/from16 v8, p1

    invoke-interface {v1, v8, v5, v7, v6}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p1

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {v13}, Lb2/o;->setImmutable()V

    return-object v13
.end method

.method public final p(Lp1/f;IILq1/j;)Lq1/a;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    :cond_0
    new-instance v0, Lp1/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lp1/a;-><init>(Lp1/f;IILq1/j;)V

    sget-object p1, Lv1/b;->d:Lv1/b;

    invoke-virtual {v0, p1}, Lp1/a;->c(Lv1/b;)Lv1/c;

    move-result-object p1

    new-instance p2, Lm1/l;

    invoke-direct {p2, p1, p3}, Lm1/l;-><init>(Lv1/c;I)V

    return-object p2
.end method

.method public final q(Lp1/f;IILq1/j;)Lq1/a;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    :cond_0
    new-instance v0, Lp1/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lp1/a;-><init>(Lp1/f;IILq1/j;)V

    sget-object p1, Lv1/b;->d:Lv1/b;

    invoke-virtual {v0, p1}, Lp1/a;->h(Lv1/b;)Lv1/d;

    move-result-object p1

    new-instance p2, Lm1/m;

    invoke-direct {p2, p1, p3}, Lm1/m;-><init>(Lv1/d;I)V

    return-object p2
.end method

.method public final r(Lp1/f;IILq1/j;)Lq1/a;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    :cond_0
    new-instance v0, Lp1/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lp1/a;-><init>(Lp1/f;IILq1/j;)V

    sget-object p1, Lv1/b;->b:Lv1/b;

    invoke-virtual {v0, p1}, Lp1/a;->c(Lv1/b;)Lv1/c;

    move-result-object p1

    new-instance p2, Lm1/n;

    invoke-direct {p2, p1, p3}, Lm1/n;-><init>(Lv1/c;I)V

    return-object p2
.end method

.method public final s(Lp1/f;IILq1/j;)Lq1/a;
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-static {}, Lp1/j;->y()Lq1/a;

    :cond_0
    new-instance v0, Lp1/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lp1/a;-><init>(Lp1/f;IILq1/j;)V

    sget-object p1, Lv1/b;->b:Lv1/b;

    invoke-virtual {v0, p1}, Lp1/a;->h(Lv1/b;)Lv1/d;

    move-result-object p1

    new-instance p2, Lm1/o;

    invoke-direct {p2, p1, p3}, Lm1/o;-><init>(Lv1/d;I)V

    return-object p2
.end method

.method public final t(Lp1/f;IILq1/j;)Lq1/a;
    .locals 4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lp1/j;->x(I)Lq1/a;

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p3

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object p1

    invoke-virtual {p3, p2}, Lb2/d;->n(I)I

    move-result v1

    invoke-interface {p1, v1}, Lx1/b;->get(I)Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/d0;

    new-instance v1, Lm1/p;

    invoke-direct {v1, p1}, Lm1/p;-><init>(Lx1/d0;)V

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public final u(Lp1/f;IILq1/j;)Lq1/a;
    .locals 4

    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p1

    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Lb2/d;->r(II)Lb2/d;

    move-result-object p1

    new-instance v0, Lx1/d0;

    invoke-direct {v0, p1}, Lx1/d0;-><init>(Lb2/d;)V

    new-instance v1, Lm1/q;

    invoke-direct {v1, v0}, Lm1/q;-><init>(Lx1/d0;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceDebugExtension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public final v(Lp1/f;IILq1/j;)Lq1/a;
    .locals 4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-static {v0}, Lp1/j;->x(I)Lq1/a;

    :cond_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p3

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object p1

    invoke-virtual {p3, p2}, Lb2/d;->n(I)I

    move-result v1

    invoke-interface {p1, v1}, Lx1/b;->get(I)Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/d0;

    new-instance v1, Lm1/r;

    invoke-direct {v1, p1}, Lm1/r;-><init>(Lx1/d0;)V

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public final w(Lp1/f;IILq1/j;)Lq1/a;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lp1/j;->x(I)Lq1/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lm1/s;

    invoke-direct {p1}, Lm1/s;-><init>()V

    return-object p1
.end method

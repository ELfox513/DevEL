.class public final Lb5/x9;
.super Lb5/n;
.source "SourceFile"


# instance fields
.field public final b:Lb5/c;


# direct methods
.method public constructor <init>(Lb5/c;)V
    .locals 0

    invoke-direct {p0}, Lb5/n;-><init>()V

    iput-object p1, p0, Lb5/x9;->b:Lb5/c;

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "setEventName"

    const-string v9, "setParamValue"

    const-string v10, "getParams"

    const-string v11, "getParamValue"

    const-string v12, "getTimestamp"

    const-string v13, "getEventName"

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_8

    if-eq v4, v15, :cond_7

    if-eq v4, v14, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    invoke-super/range {p0 .. p3}, Lb5/n;->l(Ljava/lang/String;Lb5/v4;Ljava/util/List;)Lb5/q;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {v9, v14, v3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/q;

    invoke-virtual {v2, v1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v1

    invoke-interface {v1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb5/q;

    invoke-virtual {v2, v3}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v2

    iget-object v3, v0, Lb5/x9;->b:Lb5/c;

    invoke-virtual {v3}, Lb5/c;->b()Lb5/b;

    move-result-object v3

    invoke-static {v2}, Lb5/w5;->f(Lb5/q;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lb5/b;->g(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    invoke-static {v8, v15, v3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/q;

    invoke-virtual {v2, v1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v1

    sget-object v2, Lb5/q;->c:Lb5/q;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lb5/q;->e:Lb5/q;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lb5/x9;->b:Lb5/c;

    invoke-virtual {v2}, Lb5/c;->b()Lb5/b;

    move-result-object v2

    invoke-interface {v1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb5/b;->f(Ljava/lang/String;)V

    new-instance v2, Lb5/u;

    invoke-interface {v1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lb5/u;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal event name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v12, v5, v3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lb5/x9;->b:Lb5/c;

    invoke-virtual {v1}, Lb5/c;->b()Lb5/b;

    move-result-object v1

    new-instance v2, Lb5/i;

    invoke-virtual {v1}, Lb5/b;->a()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lb5/i;-><init>(Ljava/lang/Double;)V

    return-object v2

    :cond_5
    invoke-static {v10, v5, v3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lb5/x9;->b:Lb5/c;

    invoke-virtual {v1}, Lb5/c;->b()Lb5/b;

    move-result-object v1

    invoke-virtual {v1}, Lb5/b;->e()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lb5/n;

    invoke-direct {v2}, Lb5/n;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lb5/x6;->b(Ljava/lang/Object;)Lb5/q;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lb5/n;->u(Ljava/lang/String;Lb5/q;)V

    goto :goto_2

    :cond_6
    return-object v2

    :cond_7
    invoke-static {v11, v15, v3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/q;

    invoke-virtual {v2, v1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v1

    invoke-interface {v1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lb5/x9;->b:Lb5/c;

    invoke-virtual {v2}, Lb5/c;->b()Lb5/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb5/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lb5/x6;->b(Ljava/lang/Object;)Lb5/q;

    move-result-object v1

    return-object v1

    :cond_8
    invoke-static {v13, v5, v3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lb5/x9;->b:Lb5/c;

    invoke-virtual {v1}, Lb5/c;->b()Lb5/b;

    move-result-object v1

    new-instance v2, Lb5/u;

    invoke-virtual {v1}, Lb5/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lb5/u;-><init>(Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method

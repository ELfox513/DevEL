.class public final Ly4/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly4/k2;

.field public final b:Ly4/y0;

.field public c:I


# direct methods
.method public constructor <init>(Ly4/k2;Ly4/y0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly4/j2;->c:I

    iput-object p1, p0, Ly4/j2;->a:Ly4/k2;

    iput-object p2, p0, Ly4/j2;->b:Ly4/y0;

    return-void
.end method


# virtual methods
.method public final a()Ly4/b;
    .locals 11

    iget-object v0, p0, Ly4/j2;->b:Ly4/y0;

    iget v1, v0, Ly4/y0;->f:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ly4/u1;

    const-string v1, "Invalid response from server."

    invoke-direct {v0, v5, v1}, Ly4/u1;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, Ly4/u1;

    iget-object v0, v0, Ly4/y0;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Publisher misconfiguration: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v4, v0}, Ly4/u1;-><init>(ILjava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v1, Ly4/u1;

    iget-object v0, v0, Ly4/y0;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid response from server: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v5, v0}, Ly4/u1;-><init>(ILjava/lang/String;)V

    throw v1

    :pswitch_2
    iput v5, p0, Ly4/j2;->c:I

    goto :goto_2

    :pswitch_3
    iput v1, p0, Ly4/j2;->c:I

    goto :goto_2

    :pswitch_4
    iput v4, p0, Ly4/j2;->c:I

    :goto_2
    iget-object v2, v0, Ly4/y0;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v4, v3

    goto :goto_3

    :cond_2
    new-instance v4, Ly4/e0;

    iget-object v0, v0, Ly4/y0;->b:Ljava/lang/String;

    invoke-direct {v4, v0, v2}, Ly4/e0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Ly4/j2;->a:Ly4/k2;

    invoke-static {v0}, Ly4/k2;->c(Ly4/k2;)Ly4/n;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    iget-object v6, p0, Ly4/j2;->b:Ly4/y0;

    iget-object v6, v6, Ly4/y0;->d:Ljava/util/List;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ly4/n;->f(Ljava/util/Set;)V

    iget-object v0, p0, Ly4/j2;->b:Ly4/y0;

    iget-object v0, v0, Ly4/y0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/x0;

    iget v6, v2, Ly4/x0;->b:I

    add-int/lit8 v7, v6, -0x1

    if-eqz v6, :cond_7

    if-eqz v7, :cond_6

    if-eq v7, v5, :cond_5

    if-eq v7, v1, :cond_4

    goto :goto_5

    :cond_4
    const-string v6, "clear"

    goto :goto_6

    :cond_5
    const-string v6, "write"

    goto :goto_6

    :cond_6
    :goto_5
    move-object v6, v3

    :goto_6
    if-eqz v6, :cond_3

    iget-object v7, p0, Ly4/j2;->a:Ly4/k2;

    invoke-static {v7}, Ly4/k2;->a(Ly4/k2;)Ly4/s1;

    move-result-object v7

    iget-object v2, v2, Ly4/x0;->a:Ljava/lang/String;

    new-array v8, v5, [Ly4/r1;

    const/4 v9, 0x0

    iget-object v10, p0, Ly4/j2;->a:Ly4/k2;

    invoke-static {v10}, Ly4/k2;->b(Ly4/k2;)Ly4/l;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v6, v2, v8}, Ly4/s1;->b(Ljava/lang/String;Ljava/lang/String;[Ly4/r1;)V

    goto :goto_4

    :cond_7
    throw v3

    :cond_8
    new-instance v0, Ly4/b;

    iget v1, p0, Ly4/j2;->c:I

    invoke-direct {v0, v1, v4, v3}, Ly4/b;-><init>(ILy4/e0;Ly4/i2;)V

    return-object v0

    :cond_9
    goto :goto_8

    :goto_7
    throw v3

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

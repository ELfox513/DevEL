.class public final Lb5/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb5/x;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lb5/l0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb5/y;->a:Ljava/util/Map;

    new-instance v0, Lb5/l0;

    invoke-direct {v0}, Lb5/l0;-><init>()V

    iput-object v0, p0, Lb5/y;->b:Lb5/l0;

    new-instance v0, Lb5/w;

    invoke-direct {v0}, Lb5/w;-><init>()V

    invoke-virtual {p0, v0}, Lb5/y;->b(Lb5/x;)V

    new-instance v0, Lb5/z;

    invoke-direct {v0}, Lb5/z;-><init>()V

    invoke-virtual {p0, v0}, Lb5/y;->b(Lb5/x;)V

    new-instance v0, Lb5/a0;

    invoke-direct {v0}, Lb5/a0;-><init>()V

    invoke-virtual {p0, v0}, Lb5/y;->b(Lb5/x;)V

    new-instance v0, Lb5/e0;

    invoke-direct {v0}, Lb5/e0;-><init>()V

    invoke-virtual {p0, v0}, Lb5/y;->b(Lb5/x;)V

    new-instance v0, Lb5/j0;

    invoke-direct {v0}, Lb5/j0;-><init>()V

    invoke-virtual {p0, v0}, Lb5/y;->b(Lb5/x;)V

    new-instance v0, Lb5/k0;

    invoke-direct {v0}, Lb5/k0;-><init>()V

    invoke-virtual {p0, v0}, Lb5/y;->b(Lb5/x;)V

    new-instance v0, Lb5/m0;

    invoke-direct {v0}, Lb5/m0;-><init>()V

    invoke-virtual {p0, v0}, Lb5/y;->b(Lb5/x;)V

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Lb5/q;)Lb5/q;
    .locals 2

    invoke-static {p1}, Lb5/w5;->c(Lb5/v4;)I

    instance-of v0, p2, Lb5/r;

    if-eqz v0, :cond_1

    check-cast p2, Lb5/r;

    invoke-virtual {p2}, Lb5/r;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lb5/r;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lb5/y;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb5/y;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/x;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb5/y;->b:Lb5/l0;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Lb5/x;->a(Ljava/lang/String;Lb5/v4;Ljava/util/List;)Lb5/q;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final b(Lb5/x;)V
    .locals 3

    iget-object v0, p1, Lb5/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/n0;

    invoke-virtual {v1}, Lb5/n0;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb5/y;->a:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

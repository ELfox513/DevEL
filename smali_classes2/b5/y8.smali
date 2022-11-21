.class public final Lb5/y8;
.super Lb5/j;
.source "SourceFile"


# instance fields
.field public final d:Lb5/c;


# direct methods
.method public constructor <init>(Lb5/c;)V
    .locals 1

    const-string v0, "internal.eventLogger"

    invoke-direct {p0, v0}, Lb5/j;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lb5/y8;->d:Lb5/c;

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    iget-object v0, p0, Lb5/j;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1, p2}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p1, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    invoke-interface {v0}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/q;

    invoke-virtual {p1, v1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v1

    invoke-interface {v1}, Lb5/q;->f()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lb5/w5;->a(D)D

    move-result-wide v1

    double-to-long v1, v1

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/q;

    invoke-virtual {p1, p2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    instance-of p2, p1, Lb5/n;

    if-eqz p2, :cond_0

    check-cast p1, Lb5/n;

    invoke-static {p1}, Lb5/w5;->g(Lb5/n;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iget-object p2, p0, Lb5/y8;->d:Lb5/c;

    invoke-virtual {p2, v0, v1, v2, p1}, Lb5/c;->e(Ljava/lang/String;JLjava/util/Map;)V

    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1
.end method

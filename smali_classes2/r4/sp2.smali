.class public final Lr4/sp2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/no2;

.field public final b:Lr4/so2;

.field public final c:Lr4/c12;

.field public final d:Lr4/pu2;


# direct methods
.method public constructor <init>(Lr4/c12;Lr4/pu2;Lr4/no2;Lr4/so2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lr4/sp2;->a:Lr4/no2;

    iput-object p4, p0, Lr4/sp2;->b:Lr4/so2;

    iput-object p1, p0, Lr4/sp2;->c:Lr4/c12;

    iput-object p2, p0, Lr4/sp2;->d:Lr4/pu2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lr4/sp2;->c(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lr4/sp2;->c(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lr4/sp2;->a:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-nez v0, :cond_0

    iget-object p2, p0, Lr4/sp2;->d:Lr4/pu2;

    invoke-virtual {p2, p1}, Lr4/pu2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v6, Lr4/e12;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v1

    iget-object v0, p0, Lr4/sp2;->b:Lr4/so2;

    iget-object v3, v0, Lr4/so2;->b:Ljava/lang/String;

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lr4/e12;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lr4/sp2;->c:Lr4/c12;

    invoke-virtual {p1, v6}, Lr4/c12;->g(Lr4/e12;)V

    return-void
.end method

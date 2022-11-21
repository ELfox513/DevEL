.class public final Lv3/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/a<",
            "Lv3/b<",
            "*>;",
            "Lt3/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lp/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/a<",
            "Lv3/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "Ljava/util/Map<",
            "Lv3/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lv3/b<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/c1;->a:Lp/a;

    invoke-virtual {v0}, Lp/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lv3/b;Lt3/b;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b<",
            "*>;",
            "Lt3/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lv3/c1;->a:Lp/a;

    invoke-virtual {v0, p1, p2}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv3/c1;->b:Lp/a;

    invoke-virtual {v0, p1, p3}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lv3/c1;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lv3/c1;->d:I

    invoke-virtual {p2}, Lt3/b;->b1()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv3/c1;->e:Z

    :cond_0
    iget p1, p0, Lv3/c1;->d:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lv3/c1;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Lu3/c;

    iget-object p2, p0, Lv3/c1;->a:Lp/a;

    invoke-direct {p1, p2}, Lu3/c;-><init>(Lp/a;)V

    iget-object p2, p0, Lv3/c1;->c:Lj5/j;

    invoke-virtual {p2, p1}, Lj5/j;->b(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lv3/c1;->c:Lj5/j;

    iget-object p2, p0, Lv3/c1;->b:Lp/a;

    invoke-virtual {p1, p2}, Lj5/j;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

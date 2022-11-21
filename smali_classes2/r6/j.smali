.class public Lr6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr6/n;


# instance fields
.field public final a:Lr6/o;

.field public final b:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "Lr6/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr6/o;Lj5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/o;",
            "Lj5/j<",
            "Lr6/l;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/j;->a:Lr6/o;

    iput-object p2, p0, Lr6/j;->b:Lj5/j;

    return-void
.end method


# virtual methods
.method public a(Lt6/d;)Z
    .locals 4

    invoke-virtual {p1}, Lt6/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr6/j;->a:Lr6/o;

    invoke-virtual {v0, p1}, Lr6/o;->f(Lt6/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr6/j;->b:Lj5/j;

    invoke-static {}, Lr6/l;->a()Lr6/l$a;

    move-result-object v1

    invoke-virtual {p1}, Lt6/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr6/l$a;->b(Ljava/lang/String;)Lr6/l$a;

    move-result-object v1

    invoke-virtual {p1}, Lt6/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr6/l$a;->d(J)Lr6/l$a;

    move-result-object v1

    invoke-virtual {p1}, Lt6/d;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr6/l$a;->c(J)Lr6/l$a;

    move-result-object p1

    invoke-virtual {p1}, Lr6/l$a;->a()Lr6/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj5/j;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onException(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lr6/j;->b:Lj5/j;

    invoke-virtual {v0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method

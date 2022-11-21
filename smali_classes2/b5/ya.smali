.class public final Lb5/ya;
.super Lb5/j;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lb5/ad;


# direct methods
.method public constructor <init>(Lb5/zb;Ljava/lang/String;Lb5/ad;)V
    .locals 0

    iput-object p3, p0, Lb5/ya;->d:Lb5/ad;

    const-string p1, "getValue"

    invoke-direct {p0, p1}, Lb5/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 2
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

    const-string v0, "getValue"

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p1, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/q;

    invoke-virtual {p1, p2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    invoke-interface {v0}, Lb5/q;->j()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lb5/ya;->d:Lb5/ad;

    invoke-interface {v0, p2}, Lb5/ad;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p1, Lb5/u;

    invoke-direct {p1, p2}, Lb5/u;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

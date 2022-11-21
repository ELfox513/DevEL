.class public final Lb5/uf;
.super Lb5/j;
.source "SourceFile"


# instance fields
.field public final d:Lb5/sf;


# direct methods
.method public constructor <init>(Lb5/sf;)V
    .locals 5

    const-string v0, "internal.logger"

    invoke-direct {p0, v0}, Lb5/j;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lb5/uf;->d:Lb5/sf;

    iget-object p1, p0, Lb5/j;->b:Ljava/util/Map;

    new-instance v0, Lb5/tf;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lb5/tf;-><init>(Lb5/uf;ZZ)V

    const-string v3, "log"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb5/j;->b:Ljava/util/Map;

    new-instance v0, Lb5/be;

    const-string v4, "silent"

    invoke-direct {v0, p0, v4}, Lb5/be;-><init>(Lb5/uf;Ljava/lang/String;)V

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb5/j;->b:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/j;

    new-instance v0, Lb5/tf;

    invoke-direct {v0, p0, v2, v2}, Lb5/tf;-><init>(Lb5/uf;ZZ)V

    invoke-virtual {p1, v3, v0}, Lb5/j;->u(Ljava/lang/String;Lb5/q;)V

    iget-object p1, p0, Lb5/j;->b:Ljava/util/Map;

    new-instance v0, Lb5/cf;

    const-string v2, "unmonitored"

    invoke-direct {v0, p0, v2}, Lb5/cf;-><init>(Lb5/uf;Ljava/lang/String;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb5/j;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/j;

    new-instance v0, Lb5/tf;

    invoke-direct {v0, p0, v1, v1}, Lb5/tf;-><init>(Lb5/uf;ZZ)V

    invoke-virtual {p1, v3, v0}, Lb5/j;->u(Ljava/lang/String;Lb5/q;)V

    return-void
.end method

.method public static bridge synthetic c(Lb5/uf;)Lb5/sf;
    .locals 0

    iget-object p0, p0, Lb5/uf;->d:Lb5/sf;

    return-object p0
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 0
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

    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1
.end method

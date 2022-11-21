.class public final Lr4/az0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/cz0;


# direct methods
.method public constructor <init>(Lr4/cz0;)V
    .locals 0

    iput-object p1, p0, Lr4/az0;->a:Lr4/cz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 7

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lr4/az0;->a:Lr4/cz0;

    invoke-static {p1}, Lr4/cz0;->u(Lr4/cz0;)Lr4/sp2;

    move-result-object p1

    iget-object v0, p0, Lr4/az0;->a:Lr4/cz0;

    invoke-static {v0}, Lr4/cz0;->s(Lr4/cz0;)Lr4/mu2;

    move-result-object v0

    iget-object v1, p0, Lr4/az0;->a:Lr4/cz0;

    invoke-static {v1}, Lr4/cz0;->c(Lr4/cz0;)Lr4/bp2;

    move-result-object v1

    iget-object v2, p0, Lr4/az0;->a:Lr4/cz0;

    invoke-static {v2}, Lr4/cz0;->p(Lr4/cz0;)Lr4/no2;

    move-result-object v2

    iget-object v3, p0, Lr4/az0;->a:Lr4/cz0;

    invoke-static {v3}, Lr4/cz0;->p(Lr4/cz0;)Lr4/no2;

    move-result-object v3

    iget-object v6, v3, Lr4/no2;->c:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual/range {v0 .. v6}, Lr4/mu2;->b(Lr4/bp2;Lr4/no2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v1, p0, Lr4/az0;->a:Lr4/cz0;

    invoke-static {v1}, Lr4/cz0;->a(Lr4/cz0;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb3/k2;->i(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1, v0, v2}, Lr4/sp2;->b(Ljava/util/List;I)V

    return-void
.end method

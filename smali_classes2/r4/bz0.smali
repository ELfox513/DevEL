.class public final Lr4/bz0;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lr4/cz0;


# direct methods
.method public constructor <init>(Lr4/cz0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr4/bz0;->b:Lr4/cz0;

    iput-object p2, p0, Lr4/bz0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    iget-object p1, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {p1}, Lr4/cz0;->u(Lr4/cz0;)Lr4/sp2;

    move-result-object p1

    iget-object v0, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v0}, Lr4/cz0;->s(Lr4/cz0;)Lr4/mu2;

    move-result-object v1

    iget-object v0, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v0}, Lr4/cz0;->c(Lr4/cz0;)Lr4/bp2;

    move-result-object v2

    iget-object v0, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v0}, Lr4/cz0;->p(Lr4/cz0;)Lr4/no2;

    move-result-object v3

    iget-object v5, p0, Lr4/bz0;->a:Ljava/lang/String;

    iget-object v0, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v0}, Lr4/cz0;->p(Lr4/cz0;)Lr4/no2;

    move-result-object v0

    iget-object v7, v0, Lr4/no2;->d:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lr4/mu2;->b(Lr4/bp2;Lr4/no2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/sp2;->a(Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 7

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {p1}, Lr4/cz0;->u(Lr4/cz0;)Lr4/sp2;

    move-result-object p1

    iget-object v0, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v0}, Lr4/cz0;->s(Lr4/cz0;)Lr4/mu2;

    move-result-object v0

    iget-object v1, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v1}, Lr4/cz0;->c(Lr4/cz0;)Lr4/bp2;

    move-result-object v1

    iget-object v2, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v2}, Lr4/cz0;->p(Lr4/cz0;)Lr4/no2;

    move-result-object v2

    iget-object v4, p0, Lr4/bz0;->a:Ljava/lang/String;

    iget-object v3, p0, Lr4/bz0;->b:Lr4/cz0;

    invoke-static {v3}, Lr4/cz0;->p(Lr4/cz0;)Lr4/no2;

    move-result-object v3

    iget-object v6, v3, Lr4/no2;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lr4/mu2;->b(Lr4/bp2;Lr4/no2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/sp2;->a(Ljava/util/List;)V

    return-void
.end method

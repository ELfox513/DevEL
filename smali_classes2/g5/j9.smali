.class public final Lg5/j9;
.super Lg5/n;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lg5/k9;


# direct methods
.method public constructor <init>(Lg5/k9;Lg5/x5;)V
    .locals 0

    iput-object p1, p0, Lg5/j9;->e:Lg5/k9;

    invoke-direct {p0, p2}, Lg5/n;-><init>(Lg5/x5;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget-object v0, p0, Lg5/j9;->e:Lg5/k9;

    iget-object v1, v0, Lg5/k9;->d:Lg5/m9;

    invoke-virtual {v1}, Lg5/v5;->c()V

    iget-object v1, v0, Lg5/k9;->d:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lg5/k9;->d(ZZJ)Z

    iget-object v1, v0, Lg5/k9;->d:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->t()Lg5/d2;

    move-result-object v1

    iget-object v0, v0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg5/d2;->i(J)V

    return-void
.end method

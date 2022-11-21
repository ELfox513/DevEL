.class public final Lr4/c72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "Lr4/h11;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/f21;

.field public final c:Lr4/n00;

.field public final d:Lr4/i83;

.field public final e:Lr4/mt2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/f21;Lr4/mt2;Lr4/i83;Lr4/n00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c72;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/c72;->b:Lr4/f21;

    iput-object p3, p0, Lr4/c72;->e:Lr4/mt2;

    iput-object p4, p0, Lr4/c72;->d:Lr4/i83;

    iput-object p5, p0, Lr4/c72;->c:Lr4/n00;

    return-void
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 0

    iget-object p1, p0, Lr4/c72;->c:Lr4/n00;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lr4/no2;->s:Lr4/uo2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lr4/uo2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "Lr4/h11;",
            ">;"
        }
    .end annotation

    new-instance v6, Lr4/a72;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lr4/c72;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lr4/y62;->a:Lr4/g31;

    iget-object v0, p2, Lr4/no2;->u:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/qo2;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lr4/a72;-><init>(Lr4/c72;Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/qo2;)V

    iget-object v0, p0, Lr4/c72;->b:Lr4/f21;

    new-instance v1, Lr4/x31;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Lr4/f21;->d(Lr4/x31;Lr4/o11;)Lr4/i11;

    move-result-object p1

    new-instance v0, Lr4/i00;

    invoke-virtual {p1}, Lr4/i11;->k()Lr4/b72;

    move-result-object v1

    iget-object p2, p2, Lr4/no2;->s:Lr4/uo2;

    iget-object v2, p2, Lr4/uo2;->b:Ljava/lang/String;

    iget-object p2, p2, Lr4/uo2;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lr4/i00;-><init>(Lz2/f;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lr4/c72;->e:Lr4/mt2;

    sget-object v1, Lr4/gt2;->C:Lr4/gt2;

    new-instance v2, Lr4/z62;

    invoke-direct {v2, p0, v0}, Lr4/z62;-><init>(Lr4/c72;Lr4/i00;)V

    iget-object v0, p0, Lr4/c72;->d:Lr4/i83;

    invoke-static {v2, v0, v1, p2}, Lr4/xs2;->d(Lr4/qs2;Lr4/i83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object p2

    sget-object v0, Lr4/gt2;->D:Lr4/gt2;

    invoke-virtual {p2, v0}, Lr4/dt2;->j(Ljava/lang/Object;)Lr4/dt2;

    move-result-object p2

    invoke-virtual {p1}, Lr4/i11;->h()Lr4/h11;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr4/dt2;->e(Lr4/h83;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/i00;)V
    .locals 1

    iget-object v0, p0, Lr4/c72;->c:Lr4/n00;

    invoke-interface {v0, p1}, Lr4/n00;->S3(Lr4/k00;)V

    return-void
.end method

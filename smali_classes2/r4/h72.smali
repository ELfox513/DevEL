.class public final Lr4/h72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/n00;

.field public final b:Lr4/i83;

.field public final c:Lr4/mt2;

.field public final d:Lr4/q72;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/q72;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/mt2;Lr4/i83;Lr4/n00;Lr4/q72;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/mt2;",
            "Lr4/i83;",
            "Lr4/n00;",
            "Lr4/q72;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h72;->c:Lr4/mt2;

    iput-object p2, p0, Lr4/h72;->b:Lr4/i83;

    iput-object p3, p0, Lr4/h72;->a:Lr4/n00;

    iput-object p4, p0, Lr4/h72;->d:Lr4/q72;

    return-void
.end method

.method public static synthetic d(Lr4/h72;)Lr4/q72;
    .locals 0

    iget-object p0, p0, Lr4/h72;->d:Lr4/q72;

    return-object p0
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 0

    iget-object p1, p0, Lr4/h72;->a:Lr4/n00;

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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "TAdT;>;"
        }
    .end annotation

    new-instance v6, Lr4/vm0;

    invoke-direct {v6}, Lr4/vm0;-><init>()V

    new-instance v7, Lr4/m72;

    invoke-direct {v7}, Lr4/m72;-><init>()V

    new-instance v8, Lr4/g72;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lr4/g72;-><init>(Lr4/h72;Lr4/vm0;Lr4/bp2;Lr4/no2;Lr4/m72;)V

    invoke-virtual {v7, v8}, Lr4/m72;->d(Lz2/f;)V

    new-instance p1, Lr4/i00;

    iget-object p2, p2, Lr4/no2;->s:Lr4/uo2;

    iget-object v0, p2, Lr4/uo2;->b:Ljava/lang/String;

    iget-object p2, p2, Lr4/uo2;->a:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lr4/i00;-><init>(Lz2/f;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lr4/h72;->c:Lr4/mt2;

    sget-object v0, Lr4/gt2;->C:Lr4/gt2;

    new-instance v1, Lr4/f72;

    invoke-direct {v1, p0, p1}, Lr4/f72;-><init>(Lr4/h72;Lr4/i00;)V

    iget-object p1, p0, Lr4/h72;->b:Lr4/i83;

    invoke-static {v1, p1, v0, p2}, Lr4/xs2;->d(Lr4/qs2;Lr4/i83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object p1

    sget-object p2, Lr4/gt2;->D:Lr4/gt2;

    invoke-virtual {p1, p2}, Lr4/dt2;->j(Ljava/lang/Object;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lr4/dt2;->e(Lr4/h83;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/i00;)V
    .locals 1

    iget-object v0, p0, Lr4/h72;->a:Lr4/n00;

    invoke-interface {v0, p1}, Lr4/n00;->S3(Lr4/k00;)V

    return-void
.end method

.class public final Lr4/xt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/lt1;


# instance fields
.field public final a:J

.field public final b:Lr4/l92;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lr4/qt1;Lr4/bu0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr4/xt1;->a:J

    invoke-virtual {p5}, Lr4/bu0;->t()Lr4/rm2;

    move-result-object p1

    invoke-interface {p1, p3}, Lr4/rm2;->b(Landroid/content/Context;)Lr4/rm2;

    new-instance p2, Lr4/yt;

    invoke-direct {p2}, Lr4/yt;-><init>()V

    invoke-interface {p1, p2}, Lr4/rm2;->a(Lr4/yt;)Lr4/rm2;

    invoke-interface {p1, p6}, Lr4/rm2;->A(Ljava/lang/String;)Lr4/rm2;

    invoke-interface {p1}, Lr4/rm2;->zza()Lr4/sm2;

    move-result-object p1

    invoke-interface {p1}, Lr4/sm2;->zza()Lr4/l92;

    move-result-object p1

    iput-object p1, p0, Lr4/xt1;->b:Lr4/l92;

    new-instance p2, Lr4/wt1;

    invoke-direct {p2, p0, p4}, Lr4/wt1;-><init>(Lr4/xt1;Lr4/qt1;)V

    invoke-virtual {p1, p2}, Lr4/l92;->S1(Lr4/iv;)V

    return-void
.end method

.method public static synthetic d(Lr4/xt1;)J
    .locals 2

    iget-wide v0, p0, Lr4/xt1;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/xt1;->b:Lr4/l92;

    const/4 v1, 0x0

    invoke-static {v1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/l92;->L1(Lf4/a;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/xt1;->b:Lr4/l92;

    invoke-virtual {v0}, Lr4/l92;->h()V

    return-void
.end method

.method public final c(Lr4/tt;)V
    .locals 1

    iget-object v0, p0, Lr4/xt1;->b:Lr4/l92;

    invoke-virtual {v0, p1}, Lr4/l92;->w5(Lr4/tt;)Z

    return-void
.end method

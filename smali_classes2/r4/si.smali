.class public final Lr4/si;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/wi;
.implements Lr4/vi;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lr4/ek;

.field public final d:Lr4/rf;

.field public final k:I

.field public final p:Landroid/os/Handler;

.field public final q:Lr4/ri;

.field public final r:Lr4/rd;

.field public final s:I

.field public t:Lr4/vi;

.field public u:Lr4/td;

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lr4/ek;Lr4/rf;ILandroid/os/Handler;Lr4/ri;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/si;->a:Landroid/net/Uri;

    iput-object p2, p0, Lr4/si;->b:Lr4/ek;

    iput-object p3, p0, Lr4/si;->d:Lr4/rf;

    iput p4, p0, Lr4/si;->k:I

    iput-object p5, p0, Lr4/si;->p:Landroid/os/Handler;

    iput-object p6, p0, Lr4/si;->q:Lr4/ri;

    iput p8, p0, Lr4/si;->s:I

    new-instance p1, Lr4/rd;

    invoke-direct {p1}, Lr4/rd;-><init>()V

    iput-object p1, p0, Lr4/si;->r:Lr4/rd;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lr4/ui;)V
    .locals 0

    check-cast p1, Lr4/qi;

    invoke-virtual {p1}, Lr4/qi;->C()V

    return-void
.end method

.method public final c(Lr4/yc;ZLr4/vi;)V
    .locals 2

    iput-object p3, p0, Lr4/si;->t:Lr4/vi;

    new-instance p1, Lr4/kj;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lr4/kj;-><init>(JZ)V

    iput-object p1, p0, Lr4/si;->u:Lr4/td;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lr4/vi;->f(Lr4/td;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(ILr4/jk;)Lr4/ui;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/vk;->a(Z)V

    new-instance p1, Lr4/qi;

    iget-object v1, p0, Lr4/si;->a:Landroid/net/Uri;

    iget-object v0, p0, Lr4/si;->b:Lr4/ek;

    invoke-interface {v0}, Lr4/ek;->zza()Lr4/fk;

    move-result-object v2

    iget-object v0, p0, Lr4/si;->d:Lr4/rf;

    invoke-interface {v0}, Lr4/rf;->zza()[Lr4/pf;

    move-result-object v3

    iget v4, p0, Lr4/si;->k:I

    iget-object v5, p0, Lr4/si;->p:Landroid/os/Handler;

    iget-object v6, p0, Lr4/si;->q:Lr4/ri;

    const/4 v9, 0x0

    iget v10, p0, Lr4/si;->s:I

    const/4 v11, 0x0

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lr4/qi;-><init>(Landroid/net/Uri;Lr4/fk;[Lr4/pf;ILandroid/os/Handler;Lr4/ri;Lr4/vi;Lr4/jk;Ljava/lang/String;I[B)V

    return-object p1
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/si;->t:Lr4/vi;

    return-void
.end method

.method public final f(Lr4/td;Ljava/lang/Object;)V
    .locals 5

    iget-object p2, p0, Lr4/si;->r:Lr4/rd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    iget-wide v1, p2, Lr4/rd;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p2, p0, Lr4/si;->v:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lr4/si;->u:Lr4/td;

    iput-boolean v0, p0, Lr4/si;->v:Z

    iget-object p2, p0, Lr4/si;->t:Lr4/vi;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lr4/vi;->f(Lr4/td;Ljava/lang/Object;)V

    return-void
.end method

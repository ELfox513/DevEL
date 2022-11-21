.class public final Lr4/gr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ga1;
.implements Lr4/y81;
.implements Lr4/m71;
.implements Lr4/d81;
.implements Lr4/gt;
.implements Lr4/vc1;


# instance fields
.field public final a:Lr4/ip;

.field public b:Z


# direct methods
.method public constructor <init>(Lr4/ip;Lr4/gm2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/gr1;->b:Z

    iput-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    if-eqz p2, :cond_0

    const/16 p2, 0x44d

    invoke-virtual {p1, p2}, Lr4/ip;->c(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Lr4/bq;)V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    new-instance v1, Lr4/er1;

    invoke-direct {v1, p1}, Lr4/er1;-><init>(Lr4/bq;)V

    invoke-virtual {v0, v1}, Lr4/ip;->b(Lr4/hp;)V

    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x44e

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void
.end method

.method public final A0(Lr4/bp2;)V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    new-instance v1, Lr4/cr1;

    invoke-direct {v1, p1}, Lr4/cr1;-><init>(Lr4/bp2;)V

    invoke-virtual {v0, v1}, Lr4/ip;->b(Lr4/hp;)V

    return-void
.end method

.method public final B(Lr4/lt;)V
    .locals 1

    iget p1, p1, Lr4/lt;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized F0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/gr1;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lr4/ip;->c(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/gr1;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lr4/ip;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final M0(Z)V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/16 p1, 0x454

    goto :goto_0

    :cond_0
    const/16 p1, 0x453

    :goto_0
    invoke-virtual {v0, p1}, Lr4/ip;->c(I)V

    return-void
.end method

.method public final c0(Lr4/og0;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lr4/ip;->c(I)V

    return-void
.end method

.method public final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lr4/ip;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m0(Lr4/bq;)V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    new-instance v1, Lr4/fr1;

    invoke-direct {v1, p1}, Lr4/fr1;-><init>(Lr4/bq;)V

    invoke-virtual {v0, v1}, Lr4/ip;->b(Lr4/hp;)V

    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x450

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v1, 0x455

    invoke-virtual {v0, v1}, Lr4/ip;->c(I)V

    return-void
.end method

.method public final p(Z)V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/16 p1, 0x452

    goto :goto_0

    :cond_0
    const/16 p1, 0x451

    :goto_0
    invoke-virtual {v0, p1}, Lr4/ip;->c(I)V

    return-void
.end method

.method public final v(Lr4/bq;)V
    .locals 2

    iget-object v0, p0, Lr4/gr1;->a:Lr4/ip;

    new-instance v1, Lr4/dr1;

    invoke-direct {v1, p1}, Lr4/dr1;-><init>(Lr4/bq;)V

    invoke-virtual {v0, v1}, Lr4/ip;->b(Lr4/hp;)V

    iget-object p1, p0, Lr4/gr1;->a:Lr4/ip;

    const/16 v0, 0x44f

    invoke-virtual {p1, v0}, Lr4/ip;->c(I)V

    return-void
.end method

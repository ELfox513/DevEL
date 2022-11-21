.class public Lk4/l;
.super Lx3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk4/l$a;,
        Lk4/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/g<",
        "Lk4/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final T:La5/t;

.field public final U:Ljava/lang/String;

.field public V:Lcom/google/android/gms/games/PlayerEntity;

.field public W:Lcom/google/android/gms/games/GameEntity;

.field public final X:Lk4/g;

.field public Y:Z

.field public final Z:J

.field public a0:Z

.field public final b0:Lh4/d$a;

.field public c0:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Lh4/d$a;Lv3/e;Lv3/k;)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lx3/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILx3/d;Lv3/e;Lv3/k;)V

    new-instance p2, Lk4/k;

    invoke-direct {p2, p0}, Lk4/k;-><init>(Lk4/l;)V

    iput-object p2, p0, Lk4/l;->T:La5/t;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lk4/l;->Y:Z

    iput-boolean p2, p0, Lk4/l;->a0:Z

    invoke-virtual {p3}, Lx3/d;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lk4/l;->U:Ljava/lang/String;

    invoke-virtual {p3}, Lx3/d;->f()I

    move-result p2

    invoke-static {p0, p2}, Lk4/g;->b(Lk4/l;I)Lk4/g;

    move-result-object p2

    iput-object p2, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p5, p2

    iput-wide p5, p0, Lk4/l;->Z:J

    iput-object p4, p0, Lk4/l;->b0:Lh4/d$a;

    iget-boolean p2, p4, Lh4/d$a;->s:Z

    if-nez p2, :cond_1

    invoke-virtual {p3}, Lx3/d;->i()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lx3/d;->i()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk4/l;->m0(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static l0(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "GamesGmsClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1, p0}, Lk4/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static n0(Lj5/j;Ljava/lang/SecurityException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/j<",
            "TR;>;",
            "Ljava/lang/SecurityException;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance p1, Lu3/b;

    const/4 v0, 0x4

    invoke-static {v0}, Lh4/f;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p1, v0}, Lu3/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p1}, Lj5/j;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static o0(Lv3/d;Ljava/lang/SecurityException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/d<",
            "TR;>;",
            "Ljava/lang/SecurityException;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Lh4/f;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-interface {p0, p1}, Lv3/d;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method

.method public static p0(Lj5/j;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/j<",
            "TR;>;I)V"
        }
    .end annotation

    invoke-static {p1}, Lh4/h;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Z0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5dd

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    move v1, v0

    goto/16 :goto_0

    :pswitch_0
    const/16 v1, 0x67f5

    goto/16 :goto_0

    :pswitch_1
    const/16 v1, 0x67f4

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x67f3

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x67f2

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x67ef

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x67ee

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0x67ed

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x67ec

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x67eb

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0x67ea

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x67e9

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x67e8

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0x67e5

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x67e4

    goto/16 :goto_0

    :pswitch_e
    const/16 v1, 0x67e3

    goto/16 :goto_0

    :pswitch_f
    const/16 v1, 0x67e2

    goto/16 :goto_0

    :pswitch_10
    const/16 v1, 0x67e1

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0x67e0

    goto/16 :goto_0

    :pswitch_12
    const/16 v1, 0x67df

    goto/16 :goto_0

    :pswitch_13
    const/16 v1, 0x67de

    goto/16 :goto_0

    :pswitch_14
    const/16 v1, 0x67d8

    goto/16 :goto_0

    :pswitch_15
    const/16 v1, 0x67d7

    goto/16 :goto_0

    :pswitch_16
    const/16 v1, 0x67d6

    goto/16 :goto_0

    :pswitch_17
    const/16 v1, 0x67d5

    goto/16 :goto_0

    :pswitch_18
    const/16 v1, 0x67d4

    goto/16 :goto_0

    :pswitch_19
    const/16 v1, 0x67d0

    goto/16 :goto_0

    :pswitch_1a
    const/16 v1, 0x67cf

    goto/16 :goto_0

    :pswitch_1b
    const/16 v1, 0x67ce

    goto/16 :goto_0

    :pswitch_1c
    const/16 v1, 0x67cd

    goto/16 :goto_0

    :pswitch_1d
    const/16 v1, 0x67cc

    goto/16 :goto_0

    :pswitch_1e
    const/16 v1, 0x67cb

    goto/16 :goto_0

    :pswitch_1f
    const/16 v1, 0x67ca

    goto/16 :goto_0

    :pswitch_20
    const/16 v1, 0x67c3

    goto/16 :goto_0

    :pswitch_21
    const/16 v1, 0x67c2

    goto/16 :goto_0

    :pswitch_22
    const/16 v1, 0x67c1

    goto/16 :goto_0

    :pswitch_23
    const/16 v1, 0x67c0

    goto/16 :goto_0

    :pswitch_24
    const/16 v1, 0x67b8

    goto/16 :goto_0

    :pswitch_25
    const/16 v1, 0x67b7

    goto/16 :goto_0

    :pswitch_26
    const/16 v1, 0x67b6

    goto/16 :goto_0

    :pswitch_27
    const/16 v1, 0x67a8

    goto/16 :goto_0

    :pswitch_28
    const/16 v1, 0x67a7

    goto/16 :goto_0

    :pswitch_29
    const/16 v1, 0x67a6

    goto/16 :goto_0

    :pswitch_2a
    const/16 v1, 0x67a5

    goto/16 :goto_0

    :pswitch_2b
    const/16 v1, 0x67a4

    goto/16 :goto_0

    :pswitch_2c
    const/16 v1, 0x67a3

    goto/16 :goto_0

    :pswitch_2d
    const/16 v1, 0x67a2

    goto/16 :goto_0

    :sswitch_0
    const/16 v1, 0x6850

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x684f

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0x684e

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0x684d

    goto/16 :goto_0

    :sswitch_4
    const/16 v1, 0x684c

    goto/16 :goto_0

    :sswitch_5
    const/16 v1, 0x681c

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0x681a

    goto :goto_0

    :sswitch_7
    const/16 v1, 0x6808

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x6807

    goto :goto_0

    :sswitch_9
    const/16 v1, 0x6806

    goto :goto_0

    :sswitch_a
    const/16 v1, 0x6805

    goto :goto_0

    :sswitch_b
    const/16 v1, 0x6804

    goto :goto_0

    :sswitch_c
    const/16 v1, 0x6803

    goto :goto_0

    :sswitch_d
    const/16 v1, 0x6802

    goto :goto_0

    :sswitch_e
    const/16 v1, 0x6801

    goto :goto_0

    :sswitch_f
    const/16 v1, 0x6800

    goto :goto_0

    :sswitch_10
    const/16 v1, 0x67ff

    goto :goto_0

    :sswitch_11
    const/16 v1, 0x67fe

    goto :goto_0

    :sswitch_12
    const/16 v1, 0x67fd

    goto :goto_0

    :sswitch_13
    const/16 v1, 0x67fc

    goto :goto_0

    :sswitch_14
    const/16 v1, 0x6798

    goto :goto_0

    :sswitch_15
    const/16 v1, 0x678d

    goto :goto_0

    :sswitch_16
    const/16 v1, 0x678c

    goto :goto_0

    :cond_0
    const/16 v1, 0x67ad

    goto :goto_0

    :cond_1
    const/16 v1, 0x67ac

    goto :goto_0

    :cond_2
    :sswitch_17
    const/16 v1, 0x678b

    goto :goto_0

    :cond_3
    const/16 v1, 0x678a

    goto :goto_0

    :cond_4
    const/16 v1, 0x6789

    goto :goto_0

    :cond_5
    const/16 v1, 0x6788

    goto :goto_0

    :cond_6
    const/16 v1, 0x6787

    goto :goto_0

    :cond_7
    const/16 v1, 0x6786

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Z0()I

    move-result v2

    if-ne v1, v2, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Z0()I

    move-result v2

    invoke-static {v2}, Lh4/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Y0()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {v1, p1}, Lh4/f;->c(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    goto :goto_1

    :cond_a
    packed-switch v0, :pswitch_data_8

    :pswitch_2e
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Y0()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object p1, v0

    :goto_1
    :pswitch_2f
    invoke-static {p1}, Lx3/b;->a(Lcom/google/android/gms/common/api/Status;)Lu3/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj5/j;->b(Ljava/lang/Exception;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_17
        0x8 -> :sswitch_16
        0x9 -> :sswitch_15
        0x1f4 -> :sswitch_14
        0x2328 -> :sswitch_13
        0x2329 -> :sswitch_12
        0x232a -> :sswitch_11
        0x232b -> :sswitch_10
        0x232c -> :sswitch_f
        0x232e -> :sswitch_e
        0x2331 -> :sswitch_d
        0x2332 -> :sswitch_c
        0x2333 -> :sswitch_b
        0x2334 -> :sswitch_a
        0x2338 -> :sswitch_9
        0x2339 -> :sswitch_8
        0x233a -> :sswitch_7
        0x23f0 -> :sswitch_6
        0x23f2 -> :sswitch_5
        0x2710 -> :sswitch_4
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_1
        0x2714 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xbb8
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfa0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1770
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1964
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1b58
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1f40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2f
    .end packed-switch
.end method

.method public static synthetic t0(Lj5/j;I)V
    .locals 0

    invoke-static {p0, p1}, Lk4/l;->p0(Lj5/j;I)V

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method public synthetic I(Landroid/os/IInterface;)V
    .locals 4

    check-cast p1, Lk4/d;

    invoke-super {p0, p1}, Lx3/c;->I(Landroid/os/IInterface;)V

    iget-boolean v0, p0, Lk4/l;->Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {v0}, Lk4/g;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk4/l;->Y:Z

    :cond_0
    iget-object v0, p0, Lk4/l;->b0:Lh4/d$a;

    iget-boolean v1, v0, Lh4/d$a;->a:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lh4/d$a;->s:Z

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, La5/w;

    iget-object v1, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {v1}, Lk4/g;->f()La5/u;

    move-result-object v1

    invoke-direct {v0, v1}, La5/w;-><init>(La5/u;)V

    new-instance v1, Lk4/m;

    invoke-direct {v1, v0}, Lk4/m;-><init>(La5/w;)V

    iget-wide v2, p0, Lk4/l;->Z:J

    invoke-interface {p1, v1, v2, v3}, Lk4/d;->t6(Lk4/b;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lk4/l;->l0(Landroid/os/RemoteException;)V

    :cond_1
    return-void
.end method

.method public J(Lt3/b;)V
    .locals 0

    invoke-super {p0, p1}, Lx3/c;->J(Lt3/b;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk4/l;->Y:Z

    return-void
.end method

.method public L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-class v0, Lk4/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "show_welcome_popup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lk4/l;->Y:Z

    iput-boolean v0, p0, Lk4/l;->a0:Z

    const-string v0, "com.google.android.gms.games.current_player"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lk4/l;->V:Lcom/google/android/gms/games/PlayerEntity;

    const-string v0, "com.google.android.gms.games.current_game"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lk4/l;->W:Lcom/google/android/gms/games/GameEntity;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lx3/c;->L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lx3/g;->A()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk4/l;->Y:Z

    invoke-virtual {p0}, Lx3/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lk4/l;->T:La5/t;

    invoke-virtual {v0}, La5/t;->a()V

    invoke-virtual {p0}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lk4/d;

    iget-wide v1, p0, Lk4/l;->Z:J

    invoke-interface {v0, v1, v2}, Lk4/d;->V(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "GamesGmsClientImpl"

    const-string v1, "Failed to notify client disconnect."

    invoke-static {v0, v1}, Lk4/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Lx3/c;->e()V

    return-void
.end method

.method public f(Lx3/c$e;)V
    .locals 1

    :try_start_0
    new-instance v0, Lk4/o;

    invoke-direct {v0, p1}, Lk4/o;-><init>(Lx3/c$e;)V

    invoke-virtual {p0, v0}, Lk4/l;->r0(Lv3/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-interface {p1}, Lx3/c$e;->O0()V

    return-void
.end method

.method public h(Lx3/c$c;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lk4/l;->V:Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lk4/l;->W:Lcom/google/android/gms/games/GameEntity;

    invoke-super {p0, p1}, Lx3/c;->h(Lx3/c$c;)V

    return-void
.end method

.method public k()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final k0(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lx3/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lk4/d;

    invoke-interface {v0, p1, p2}, Lk4/d;->e5(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lk4/l;->l0(Landroid/os/RemoteException;)V

    :cond_0
    return-void
.end method

.method public final m0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {v0, p1}, Lk4/g;->c(Landroid/view/View;)V

    return-void
.end method

.method public n()Z
    .locals 4

    iget-object v0, p0, Lk4/l;->b0:Lh4/d$a;

    iget v1, v0, Lh4/d$a;->y:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lh4/d$a;->v:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lh4/d$a;->s:Z

    if-nez v0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public final q0(Lj5/j;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/j<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lk4/l$b;

    invoke-direct {v0, p1}, Lk4/l$b;-><init>(Lj5/j;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lk4/d;

    iget-object v2, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {v2}, Lk4/g;->e()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {v3}, Lk4/g;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v0, p2, v2, v3}, Lk4/d;->m4(Lk4/p;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-static {p1, p2}, Lk4/l;->n0(Lj5/j;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lk4/d;

    if-eqz v1, :cond_1

    check-cast v0, Lk4/d;

    return-object v0

    :cond_1
    new-instance v0, Lk4/h;

    invoke-direct {v0, p1}, Lk4/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final r0(Lv3/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/d<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lk4/l;->T:La5/t;

    invoke-virtual {v0}, La5/t;->a()V

    :try_start_0
    invoke-virtual {p0}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lk4/d;

    new-instance v1, Lk4/n;

    invoke-direct {v1, p1}, Lk4/n;-><init>(Lv3/d;)V

    invoke-interface {v0, v1}, Lk4/d;->P5(Lk4/p;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lk4/l;->o0(Lv3/d;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final s0()V
    .locals 1

    invoke-virtual {p0}, Lx3/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lk4/d;

    invoke-interface {v0}, Lk4/d;->X5()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lk4/l;->l0(Landroid/os/RemoteException;)V

    :cond_0
    return-void
.end method

.method public final u0(I)V
    .locals 1

    iget-object v0, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {v0, p1}, Lk4/g;->a(I)V

    return-void
.end method

.method public v()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lk4/d;

    invoke-interface {v0}, Lk4/d;->Q6()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lk4/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lk4/l;->c0:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lk4/l;->l0(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Lx3/c;->w()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk4/l;->b0:Lh4/d$a;

    invoke-virtual {v1}, Lh4/d$a;->c()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lk4/l;->U:Ljava/lang/String;

    const-string v3, "com.google.android.gms.games.key.gamePackageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.desiredLocale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v2, p0, Lk4/l;->X:Lk4/g;

    invoke-virtual {v2}, Lk4/g;->e()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v2, "com.google.android.gms.games.key.popupWindowToken"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.google.android.gms.games.key.API_VERSION"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lx3/g;->h0()Lx3/d;

    move-result-object v0

    invoke-static {v0}, Li5/a;->k0(Lx3/d;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.google.android.gms.games.key.signInOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

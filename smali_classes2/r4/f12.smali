.class public final synthetic Lr4/f12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final a:Lr4/ls1;

.field public final b:Landroid/app/Activity;

.field public final d:Lr4/xt2;

.field public final k:Lr4/c12;

.field public final p:Ljava/lang/String;

.field public final q:Lb3/y0;

.field public final r:Ljava/lang/String;

.field public final s:Landroid/content/res/Resources;

.field public final t:La3/n;


# direct methods
.method public constructor <init>(Lr4/ls1;Landroid/app/Activity;Lr4/xt2;Lr4/c12;Ljava/lang/String;Lb3/y0;Ljava/lang/String;Landroid/content/res/Resources;La3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f12;->a:Lr4/ls1;

    iput-object p2, p0, Lr4/f12;->b:Landroid/app/Activity;

    iput-object p3, p0, Lr4/f12;->d:Lr4/xt2;

    iput-object p4, p0, Lr4/f12;->k:Lr4/c12;

    iput-object p5, p0, Lr4/f12;->p:Ljava/lang/String;

    iput-object p6, p0, Lr4/f12;->q:Lb3/y0;

    iput-object p7, p0, Lr4/f12;->r:Ljava/lang/String;

    iput-object p8, p0, Lr4/f12;->s:Landroid/content/res/Resources;

    iput-object p9, p0, Lr4/f12;->t:La3/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v9, v1, Lr4/f12;->a:Lr4/ls1;

    iget-object v10, v1, Lr4/f12;->b:Landroid/app/Activity;

    iget-object v11, v1, Lr4/f12;->d:Lr4/xt2;

    iget-object v12, v1, Lr4/f12;->k:Lr4/c12;

    iget-object v13, v1, Lr4/f12;->p:Ljava/lang/String;

    iget-object v0, v1, Lr4/f12;->q:Lb3/y0;

    iget-object v14, v1, Lr4/f12;->r:Ljava/lang/String;

    iget-object v15, v1, Lr4/f12;->s:Landroid/content/res/Resources;

    iget-object v8, v1, Lr4/f12;->t:La3/n;

    if-eqz v9, :cond_0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_action"

    const-string v3, "confirm"

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, "dialog_click"

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    move-object v1, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lr4/k12;->i7(Landroid/content/Context;Lr4/ls1;Lr4/xt2;Lr4/c12;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object v1, v8

    :goto_0
    :try_start_0
    invoke-static {v10}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    invoke-interface {v0, v2, v14, v13}, Lb3/y0;->zze(Lf4/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Failed to schedule offline notification poster."

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v12, v13}, Lr4/c12;->f(Ljava/lang/String;)V

    if-eqz v9, :cond_1

    const-string v7, "offline_notification_worker_not_scheduled"

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-static/range {v2 .. v7}, Lr4/k12;->h7(Landroid/content/Context;Lr4/ls1;Lr4/xt2;Lr4/c12;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lb3/g;->m()I

    move-result v0

    invoke-direct {v2, v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-nez v15, :cond_2

    const-string v0, "You\'ll get a notification with the link when you\'re back online"

    goto :goto_2

    :cond_2
    sget v0, Lx2/a;->d:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lr4/i12;

    invoke-direct {v3, v1}, Lr4/i12;-><init>(La3/n;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lr4/j12;

    invoke-direct {v3, v0, v2, v1}, Lr4/j12;-><init>(Landroid/app/AlertDialog;Ljava/util/Timer;La3/n;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

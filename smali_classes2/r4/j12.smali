.class public final Lr4/j12;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog;

.field public final synthetic b:Ljava/util/Timer;

.field public final synthetic d:La3/n;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;La3/n;)V
    .locals 0

    iput-object p1, p0, Lr4/j12;->a:Landroid/app/AlertDialog;

    iput-object p2, p0, Lr4/j12;->b:Ljava/util/Timer;

    iput-object p3, p0, Lr4/j12;->d:La3/n;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/j12;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lr4/j12;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lr4/j12;->d:La3/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La3/n;->a()V

    :cond_0
    return-void
.end method

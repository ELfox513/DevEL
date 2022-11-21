.class public final synthetic Lv3/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lv3/j;

.field public final b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lv3/j;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/l0;->a:Lv3/j;

    iput-object p2, p0, Lv3/l0;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv3/l0;->a:Lv3/j;

    iget-object v1, p0, Lv3/l0;->b:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lv3/j;->r(Landroid/os/IBinder;)V

    return-void
.end method

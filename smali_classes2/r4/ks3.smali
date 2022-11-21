.class public final Lr4/ks3;
.super Lo/d;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lr4/q00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/q00;[B)V
    .locals 0

    invoke-direct {p0}, Lo/d;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lr4/ks3;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Lo/b;)V
    .locals 0

    iget-object p1, p0, Lr4/ks3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/q00;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lr4/q00;->f(Lo/b;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lr4/ks3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/q00;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lr4/q00;->g()V

    :cond_0
    return-void
.end method

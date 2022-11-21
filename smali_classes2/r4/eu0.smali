.class public final Lr4/eu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/im0;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/cu0;Lr4/du0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/cu0;->a(Lr4/cu0;)Lr4/im0;

    move-result-object p2

    iput-object p2, p0, Lr4/eu0;->a:Lr4/im0;

    invoke-static {p1}, Lr4/cu0;->b(Lr4/cu0;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lr4/eu0;->b:Landroid/content/Context;

    invoke-static {p1}, Lr4/cu0;->c(Lr4/cu0;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lr4/eu0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lr4/eu0;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/eu0;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final c()Lr4/im0;
    .locals 1

    iget-object v0, p0, Lr4/eu0;->a:Lr4/im0;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v0

    iget-object v1, p0, Lr4/eu0;->b:Landroid/content/Context;

    iget-object v2, p0, Lr4/eu0;->a:Lr4/im0;

    iget-object v2, v2, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lr4/u;
    .locals 4

    new-instance v0, Lr4/u;

    new-instance v1, Lz2/i;

    iget-object v2, p0, Lr4/eu0;->b:Landroid/content/Context;

    iget-object v3, p0, Lr4/eu0;->a:Lr4/im0;

    invoke-direct {v1, v2, v3}, Lz2/i;-><init>(Landroid/content/Context;Lr4/im0;)V

    invoke-direct {v0, v1}, Lr4/u;-><init>(Lr4/q;)V

    return-object v0
.end method

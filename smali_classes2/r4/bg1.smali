.class public Lr4/bg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/dh1;

.field public final b:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/dh1;Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bg1;->a:Lr4/dh1;

    iput-object p2, p0, Lr4/bg1;->b:Lr4/cs0;

    return-void
.end method

.method public static final h(Lr4/ih1;)Lr4/ve1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ih1;",
            ")",
            "Lr4/ve1<",
            "Lr4/me1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/ve1;

    sget-object v1, Lr4/qm0;->f:Lr4/i83;

    invoke-direct {v0, p0, v1}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lr4/dh1;
    .locals 1

    iget-object v0, p0, Lr4/bg1;->a:Lr4/dh1;

    return-object v0
.end method

.method public final b()Lr4/cs0;
    .locals 1

    iget-object v0, p0, Lr4/bg1;->b:Lr4/cs0;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/bg1;->b:Lr4/cs0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/bg1;->b:Lr4/cs0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public e(Lr4/i61;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i61;",
            ")",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/j71;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lr4/qm0;->f:Lr4/i83;

    new-instance v1, Lr4/ve1;

    invoke-direct {v1, p1, v0}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public f(Lr4/i61;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i61;",
            ")",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/me1;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lr4/qm0;->f:Lr4/i83;

    new-instance v1, Lr4/ve1;

    invoke-direct {v1, p1, v0}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/concurrent/Executor;)Lr4/ve1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/ve1<",
            "Lr4/dc1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/bg1;->b:Lr4/cs0;

    new-instance v1, Lr4/ve1;

    new-instance v2, Lr4/ag1;

    invoke-direct {v2, v0}, Lr4/ag1;-><init>(Lr4/cs0;)V

    invoke-direct {v1, v2, p1}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

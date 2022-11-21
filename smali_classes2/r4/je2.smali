.class public final Lr4/je2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/ke2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/i83;Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i83;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/je2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/je2;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/je2;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/ke2;
    .locals 3

    sget-object v0, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/je2;->c:Ljava/util/Set;

    const-string v1, "rewarded"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "interstitial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "native"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "banner"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lr4/ke2;

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v1

    iget-object v2, p0, Lr4/je2;->b:Landroid/content/Context;

    invoke-interface {v1, v2}, Lr4/qe0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/ke2;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lr4/ke2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/ke2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/ke2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/je2;->a:Lr4/i83;

    new-instance v1, Lr4/ie2;

    invoke-direct {v1, p0}, Lr4/ie2;-><init>(Lr4/je2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

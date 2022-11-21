.class public final Lr4/t33;
.super Lr4/r53;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lr4/j33;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Iterator;

.field public final synthetic d:Lr4/w33;


# direct methods
.method public constructor <init>(Lr4/w33;)V
    .locals 1

    iput-object p1, p0, Lr4/t33;->d:Lr4/w33;

    invoke-direct {p0}, Lr4/r53;-><init>()V

    iget-object p1, p1, Lr4/w33;->k:Lr4/s33;

    invoke-virtual {p1}, Lr4/s33;->f()Lr4/j33;

    move-result-object p1

    check-cast p1, Lr4/o33;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/o33;->B(I)Lr4/s53;

    move-result-object p1

    iput-object p1, p0, Lr4/t33;->a:Ljava/util/Iterator;

    sget-object p1, Lr4/a43;->k:Lr4/s53;

    iput-object p1, p0, Lr4/t33;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lr4/t33;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/t33;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/t33;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/t33;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j33;

    invoke-virtual {v0}, Lr4/j33;->d()Lr4/r53;

    move-result-object v0

    iput-object v0, p0, Lr4/t33;->b:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lr4/t33;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

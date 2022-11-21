.class public final Lw0/l$a;
.super Lw0/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw0/u$a<",
        "Lw0/l$a;",
        "Lw0/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lw0/u$a;-><init>(Ljava/lang/Class;)V

    iget-object p1, p0, Lw0/u$a;->c:Lf1/p;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lf1/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Lw0/u;
    .locals 1

    invoke-virtual {p0}, Lw0/l$a;->h()Lw0/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lw0/u$a;
    .locals 1

    invoke-virtual {p0}, Lw0/l$a;->i()Lw0/l$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Lw0/l;
    .locals 2

    iget-boolean v0, p0, Lw0/u$a;->a:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lw0/u$a;->c:Lf1/p;

    iget-object v0, v0, Lf1/p;->j:Lw0/b;

    invoke-virtual {v0}, Lw0/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lw0/l;

    invoke-direct {v0, p0}, Lw0/l;-><init>(Lw0/l$a;)V

    return-object v0
.end method

.method public i()Lw0/l$a;
    .locals 0

    return-object p0
.end method

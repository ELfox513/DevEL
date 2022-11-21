.class public Landroidx/lifecycle/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/s$b;,
        Landroidx/lifecycle/s$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/s$a;

.field public final b:Landroidx/lifecycle/t;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;Landroidx/lifecycle/s$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/s$a;

    iput-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/t;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/r;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/s;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/r;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/r;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/t;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->b(Ljava/lang/String;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/s$a;

    instance-of v1, v0, Landroidx/lifecycle/s$b;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/lifecycle/s$b;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/s$b;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/r;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Landroidx/lifecycle/s$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/r;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/t;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/t;->c(Ljava/lang/String;Landroidx/lifecycle/r;)V

    return-object p2
.end method

.class public Lx5/k0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/k0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj5/a<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx5/k0$a;


# direct methods
.method public constructor <init>(Lx5/k0$a;)V
    .locals 0

    iput-object p1, p0, Lx5/k0$a$a;->a:Lx5/k0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lj5/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lx5/k0$a$a;->b(Lj5/i;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lj5/i;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx5/k0$a$a;->a:Lx5/k0$a;

    iget-object v0, v0, Lx5/k0$a;->b:Lj5/j;

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj5/j;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx5/k0$a$a;->a:Lx5/k0$a;

    iget-object v0, v0, Lx5/k0$a;->b:Lj5/j;

    invoke-virtual {p1}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj5/j;->b(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

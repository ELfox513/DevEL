.class public final Lr4/of0;
.super Lr4/rk0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Li3/c;


# direct methods
.method public constructor <init>(Lr4/pf0;Li3/c;)V
    .locals 0

    iput-object p2, p0, Lr4/of0;->a:Li3/c;

    invoke-direct {p0}, Lr4/rk0;-><init>()V

    return-void
.end method


# virtual methods
.method public final f2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Li3/b;

    new-instance v1, Lr4/dy;

    invoke-direct {v1, p1, p3, p2}, Lr4/dy;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Li3/b;-><init>(Lr4/dy;)V

    iget-object p1, p0, Lr4/of0;->a:Li3/c;

    invoke-virtual {p1, v0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/of0;->a:Li3/c;

    invoke-virtual {v0, p1}, Li3/c;->a(Ljava/lang/String;)V

    return-void
.end method

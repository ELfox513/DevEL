.class public final Lr4/a32;
.super Lr4/rc0;
.source "SourceFile"


# instance fields
.field public final a:Lr4/t12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/t12<",
            "Lr4/ed0;",
            "Lr4/n32;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lr4/c32;


# direct methods
.method public synthetic constructor <init>(Lr4/c32;Lr4/t12;Lr4/b32;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/t12<",
            "Lr4/ed0;",
            "Lr4/n32;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lr4/a32;->b:Lr4/c32;

    invoke-direct {p0}, Lr4/rc0;-><init>()V

    iput-object p2, p0, Lr4/a32;->a:Lr4/t12;

    return-void
.end method


# virtual methods
.method public final F(Lr4/lt;)V
    .locals 1

    iget-object v0, p0, Lr4/a32;->a:Lr4/t12;

    iget-object v0, v0, Lr4/t12;->c:Lr4/u81;

    check-cast v0, Lr4/n32;

    invoke-virtual {v0, p1}, Lr4/n32;->u5(Lr4/lt;)V

    return-void
.end method

.method public final F5(Lr4/ob0;)V
    .locals 1

    iget-object v0, p0, Lr4/a32;->b:Lr4/c32;

    invoke-static {v0, p1}, Lr4/c32;->d(Lr4/c32;Lr4/ob0;)Lr4/ob0;

    iget-object p1, p0, Lr4/a32;->a:Lr4/t12;

    iget-object p1, p1, Lr4/t12;->c:Lr4/u81;

    check-cast p1, Lr4/n32;

    invoke-virtual {p1}, Lr4/n32;->h()V

    return-void
.end method

.method public final M(Lf4/a;)V
    .locals 1

    iget-object v0, p0, Lr4/a32;->b:Lr4/c32;

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lr4/c32;->c(Lr4/c32;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lr4/a32;->a:Lr4/t12;

    iget-object p1, p1, Lr4/t12;->c:Lr4/u81;

    check-cast p1, Lr4/n32;

    invoke-virtual {p1}, Lr4/n32;->h()V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/a32;->a:Lr4/t12;

    iget-object v0, v0, Lr4/t12;->c:Lr4/u81;

    check-cast v0, Lr4/n32;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lr4/n32;->Z6(ILjava/lang/String;)V

    return-void
.end method

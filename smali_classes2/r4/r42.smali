.class public final Lr4/r42;
.super Lr4/xc0;
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

.field public final synthetic b:Lr4/t42;


# direct methods
.method public synthetic constructor <init>(Lr4/t42;Lr4/t12;Lr4/s42;)V
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

    iput-object p1, p0, Lr4/r42;->b:Lr4/t42;

    invoke-direct {p0}, Lr4/xc0;-><init>()V

    iput-object p2, p0, Lr4/r42;->a:Lr4/t12;

    return-void
.end method


# virtual methods
.method public final F(Lr4/lt;)V
    .locals 1

    iget-object v0, p0, Lr4/r42;->a:Lr4/t12;

    iget-object v0, v0, Lr4/t12;->c:Lr4/u81;

    check-cast v0, Lr4/n32;

    invoke-virtual {v0, p1}, Lr4/n32;->u5(Lr4/lt;)V

    return-void
.end method

.method public final L4(Lr4/ub0;)V
    .locals 1

    iget-object v0, p0, Lr4/r42;->b:Lr4/t42;

    invoke-static {v0, p1}, Lr4/t42;->c(Lr4/t42;Lr4/ub0;)Lr4/ub0;

    iget-object p1, p0, Lr4/r42;->a:Lr4/t12;

    iget-object p1, p1, Lr4/t12;->c:Lr4/u81;

    check-cast p1, Lr4/n32;

    invoke-virtual {p1}, Lr4/n32;->h()V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/r42;->a:Lr4/t12;

    iget-object v0, v0, Lr4/t12;->c:Lr4/u81;

    check-cast v0, Lr4/n32;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lr4/n32;->Z6(ILjava/lang/String;)V

    return-void
.end method

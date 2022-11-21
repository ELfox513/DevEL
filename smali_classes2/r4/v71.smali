.class public final Lr4/v71;
.super Lr4/yc1;
.source "SourceFile"

# interfaces
.implements Lr4/n71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/z71;",
        ">;",
        "Lr4/n71;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/z71;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final S(Lr4/lt;)V
    .locals 1

    new-instance v0, Lr4/s71;

    invoke-direct {v0, p1}, Lr4/s71;-><init>(Lr4/lt;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

.method public final U(Lr4/ch1;)V
    .locals 2

    sget-object v0, Lr4/rz;->X6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lr4/t71;

    invoke-direct {v0, p1}, Lr4/t71;-><init>(Lr4/ch1;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lr4/u71;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

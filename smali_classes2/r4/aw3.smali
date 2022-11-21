.class public abstract Lr4/aw3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/zv3;

.field public b:Lr4/kw3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b([Lr4/h7;Lr4/j44;Lr4/ft3;Lr4/e8;)Lr4/cw3;
.end method

.method public final c(Lr4/zv3;Lr4/kw3;)V
    .locals 0

    iput-object p1, p0, Lr4/aw3;->a:Lr4/zv3;

    iput-object p2, p0, Lr4/aw3;->b:Lr4/kw3;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lr4/aw3;->a:Lr4/zv3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/zv3;->zza()V

    :cond_0
    return-void
.end method

.method public final e()Lr4/kw3;
    .locals 1

    iget-object v0, p0, Lr4/aw3;->b:Lr4/kw3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

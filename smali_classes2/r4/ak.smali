.class public abstract Lr4/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/zj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lr4/od;Lr4/mj;)Lr4/bk;
.end method

.method public abstract b(Ljava/lang/Object;)V
.end method

.method public final c(Lr4/zj;)V
    .locals 0

    iput-object p1, p0, Lr4/ak;->a:Lr4/zj;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lr4/ak;->a:Lr4/zj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/zj;->i()V

    :cond_0
    return-void
.end method

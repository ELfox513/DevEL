.class public abstract Li2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li2/l$a;
    .locals 1

    new-instance v0, Li2/b$b;

    invoke-direct {v0}, Li2/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lf2/b;
.end method

.method public abstract c()Lf2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf2/c<",
            "*>;"
        }
    .end annotation
.end method

.method public d()[B
    .locals 2

    invoke-virtual {p0}, Li2/l;->e()Lf2/e;

    move-result-object v0

    invoke-virtual {p0}, Li2/l;->c()Lf2/c;

    move-result-object v1

    invoke-virtual {v1}, Lf2/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lf2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public abstract e()Lf2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf2/e<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract f()Li2/m;
.end method

.method public abstract g()Ljava/lang/String;
.end method

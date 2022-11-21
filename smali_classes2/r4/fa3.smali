.class public final Lr4/fa3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ia3;


# instance fields
.field public final synthetic a:Lr4/q93;


# direct methods
.method public constructor <init>(Lr4/q93;)V
    .locals 0

    iput-object p1, p0, Lr4/fa3;->a:Lr4/q93;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lr4/i93;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/i93<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lr4/k93;

    iget-object v1, p0, Lr4/fa3;->a:Lr4/q93;

    invoke-virtual {v1}, Lr4/q93;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lr4/k93;-><init>(Lr4/q93;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/fa3;->a:Lr4/q93;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Lr4/i93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lr4/i93<",
            "TQ;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lr4/k93;

    iget-object v1, p0, Lr4/fa3;->a:Lr4/q93;

    invoke-direct {v0, v1, p1}, Lr4/k93;-><init>(Lr4/q93;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/fa3;->a:Lr4/q93;

    invoke-virtual {v0}, Lr4/q93;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

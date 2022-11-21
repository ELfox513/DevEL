.class public Lr4/k93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/i93;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lr4/ao3;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/i93<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/q93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/q93<",
            "TKeyProtoT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/q93;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q93<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lr4/q93;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Given internalKeyMananger %s does not support primitive class %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lr4/k93;->a:Lr4/q93;

    iput-object p2, p0, Lr4/k93;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lr4/ao3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProtoT;)TPrimitiveT;"
        }
    .end annotation

    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lr4/k93;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v0, p1}, Lr4/q93;->d(Lr4/ao3;)V

    iget-object v0, p0, Lr4/k93;->a:Lr4/q93;

    iget-object v1, p0, Lr4/k93;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lr4/q93;->e(Lr4/ao3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create a primitive for Void"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lr4/j93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/j93<",
            "*TKeyProtoT;>;"
        }
    .end annotation

    new-instance v0, Lr4/j93;

    iget-object v1, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v1}, Lr4/q93;->h()Lr4/o93;

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/j93;-><init>(Lr4/o93;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/k93;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v0}, Lr4/q93;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lr4/ll3;)Lr4/wg3;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lr4/k93;->b()Lr4/j93;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/j93;->a(Lr4/ll3;)Lr4/ao3;

    move-result-object p1

    invoke-static {}, Lr4/wg3;->E()Lr4/vg3;

    move-result-object v0

    iget-object v1, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v1}, Lr4/q93;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/vg3;->v(Ljava/lang/String;)Lr4/vg3;

    invoke-interface {p1}, Lr4/ao3;->F()Lr4/ll3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/vg3;->x(Lr4/ll3;)Lr4/vg3;

    iget-object p1, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {p1}, Lr4/q93;->i()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/vg3;->z(I)Lr4/vg3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/wg3;
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpected proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final q(Lr4/ll3;)Lr4/ao3;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lr4/k93;->b()Lr4/j93;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/j93;->a(Lr4/ll3;)Lr4/ao3;

    move-result-object p1
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    iget-object v1, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v1}, Lr4/q93;->h()Lr4/o93;

    move-result-object v1

    invoke-virtual {v1}, Lr4/o93;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failures parsing proto of type "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final r(Lr4/ao3;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ao3;",
            ")TPrimitiveT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v0}, Lr4/q93;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Expected proto of type "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v1}, Lr4/q93;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lr4/k93;->a(Lr4/ao3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Lr4/ll3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ll3;",
            ")TPrimitiveT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v0, p1}, Lr4/q93;->c(Lr4/ll3;)Lr4/ao3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/k93;->a(Lr4/ao3;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    iget-object v1, p0, Lr4/k93;->a:Lr4/q93;

    invoke-virtual {v1}, Lr4/q93;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failures parsing proto of type "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

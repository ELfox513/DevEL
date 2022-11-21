.class public final Lr4/r93;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/jh3;


# direct methods
.method public constructor <init>(Lr4/jh3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r93;->a:Lr4/jh3;

    return-void
.end method

.method public static final a(Lr4/jh3;)Lr4/r93;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr4/jh3;->E()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lr4/r93;

    invoke-direct {v0, p0}, Lr4/r93;-><init>(Lr4/jh3;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    invoke-static {p1}, Lr4/ja3;->n(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No wrapper found for "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lr4/r93;->a:Lr4/jh3;

    invoke-static {v1}, Lr4/ka3;->b(Lr4/jh3;)V

    invoke-static {v0}, Lr4/aa3;->b(Ljava/lang/Class;)Lr4/aa3;

    move-result-object v1

    iget-object v2, p0, Lr4/r93;->a:Lr4/jh3;

    invoke-virtual {v2}, Lr4/jh3;->D()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/ih3;

    invoke-virtual {v3}, Lr4/ih3;->J()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lr4/ih3;->D()Lr4/wg3;

    move-result-object v4

    invoke-static {v4, v0}, Lr4/ja3;->k(Lr4/wg3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lr4/aa3;->d(Ljava/lang/Object;Lr4/ih3;)Lr4/x93;

    move-result-object v4

    invoke-virtual {v3}, Lr4/ih3;->E()I

    move-result v3

    iget-object v5, p0, Lr4/r93;->a:Lr4/jh3;

    invoke-virtual {v5}, Lr4/jh3;->C()I

    move-result v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v1, v4}, Lr4/aa3;->c(Lr4/x93;)V

    goto :goto_1

    :cond_3
    invoke-static {v1, p1}, Lr4/ja3;->l(Lr4/aa3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/r93;->a:Lr4/jh3;

    invoke-static {v0}, Lr4/ka3;->a(Lr4/jh3;)Lr4/oh3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/pm3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

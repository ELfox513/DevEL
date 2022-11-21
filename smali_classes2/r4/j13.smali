.class public final Lr4/j13;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/m03;

.field public final b:Lr4/i13;


# direct methods
.method public constructor <init>(Lr4/i13;)V
    .locals 1

    sget-object v0, Lr4/l03;->b:Lr4/l03;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j13;->b:Lr4/i13;

    iput-object v0, p0, Lr4/j13;->a:Lr4/m03;

    return-void
.end method

.method public static synthetic a(Lr4/j13;)Lr4/m03;
    .locals 0

    iget-object p0, p0, Lr4/j13;->a:Lr4/m03;

    return-object p0
.end method

.method public static b(Lr4/m03;)Lr4/j13;
    .locals 2

    new-instance v0, Lr4/j13;

    new-instance v1, Lr4/d13;

    invoke-direct {v1, p0}, Lr4/d13;-><init>(Lr4/m03;)V

    invoke-direct {v0, v1}, Lr4/j13;-><init>(Lr4/i13;)V

    return-object v0
.end method

.method public static c(I)Lr4/j13;
    .locals 2

    new-instance p0, Lr4/j13;

    new-instance v0, Lr4/f13;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, Lr4/f13;-><init>(I)V

    invoke-direct {p0, v0}, Lr4/j13;-><init>(Lr4/i13;)V

    return-object p0
.end method

.method public static synthetic e(Lr4/j13;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr4/j13;->g(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr4/g13;

    invoke-direct {v0, p0, p1}, Lr4/g13;-><init>(Lr4/j13;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr4/j13;->g(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/j13;->b:Lr4/i13;

    invoke-interface {v0, p0, p1}, Lr4/i13;->a(Lr4/j13;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

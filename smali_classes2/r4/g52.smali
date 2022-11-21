.class public final Lr4/g52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc4/f;

.field public final b:Lr4/h52;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lr4/v12;


# direct methods
.method public constructor <init>(Lc4/f;Lr4/h52;Lr4/v12;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr4/g52;->c:Ljava/util/List;

    iput-object p1, p0, Lr4/g52;->a:Lc4/f;

    iput-object p2, p0, Lr4/g52;->b:Lr4/h52;

    sget-object p1, Lr4/rz;->d5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/g52;->d:Z

    iput-object p3, p0, Lr4/g52;->e:Lr4/v12;

    return-void
.end method

.method public static synthetic a(Lr4/g52;)Lc4/f;
    .locals 0

    iget-object p0, p0, Lr4/g52;->a:Lc4/f;

    return-object p0
.end method

.method public static synthetic b(Lr4/g52;)Lr4/h52;
    .locals 0

    iget-object p0, p0, Lr4/g52;->b:Lr4/h52;

    return-object p0
.end method

.method public static synthetic c(Lr4/g52;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/g52;->d:Z

    return p0
.end method

.method public static synthetic d(Lr4/g52;)Lr4/v12;
    .locals 0

    iget-object p0, p0, Lr4/g52;->e:Lr4/v12;

    return-object p0
.end method

.method public static synthetic f(Lr4/g52;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lr4/g52;->c:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final e(Lr4/so2;Lr4/no2;Lr4/h83;)Lr4/h83;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/so2;",
            "Lr4/no2;",
            "Lr4/h83<",
            "TT;>;)",
            "Lr4/h83<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/g52;->a:Lc4/f;

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v3

    iget-object v5, p2, Lr4/no2;->w:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v0, Lr4/f52;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lr4/f52;-><init>(Lr4/g52;JLjava/lang/String;Lr4/no2;Lr4/so2;)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p3, v0, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p3
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr4/g52;->c:Ljava/util/List;

    const-string v1, "_"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lr4/oi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lr4/pf;

.field public final b:Lr4/qf;

.field public c:Lr4/pf;


# direct methods
.method public constructor <init>([Lr4/pf;Lr4/qf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/oi;->a:[Lr4/pf;

    iput-object p2, p0, Lr4/oi;->b:Lr4/qf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/oi;->c:Lr4/pf;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/oi;->c:Lr4/pf;

    :cond_0
    return-void
.end method

.method public final b(Lr4/of;Landroid/net/Uri;)Lr4/pf;
    .locals 5

    iget-object v0, p0, Lr4/oi;->c:Lr4/pf;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/oi;->a:[Lr4/pf;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    :try_start_0
    invoke-interface {v3, p1}, Lr4/pf;->n(Lr4/of;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lr4/oi;->c:Lr4/pf;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lr4/of;->g()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lr4/of;->g()V

    throw p2

    :catch_0
    :cond_1
    invoke-virtual {p1}, Lr4/of;->g()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lr4/oi;->c:Lr4/pf;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lr4/oi;->b:Lr4/qf;

    invoke-interface {p1, p2}, Lr4/pf;->o(Lr4/qf;)V

    iget-object p1, p0, Lr4/oi;->c:Lr4/pf;

    return-object p1

    :cond_3
    new-instance p1, Lr4/nj;

    iget-object v0, p0, Lr4/oi;->a:[Lr4/pf;

    invoke-static {v0}, Lr4/ll;->n([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "None of the available extractors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lr4/nj;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

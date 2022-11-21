.class public final Lr4/ys3;
.super Lr4/ts3;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/ys3;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr4/e8;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/ts3;-><init>(Lr4/e8;)V

    iput-object p2, p0, Lr4/ys3;->d:Ljava/lang/Object;

    iput-object p3, p0, Lr4/ys3;->e:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic p(Lr4/ys3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/ys3;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static q(Lr4/u5;)Lr4/ys3;
    .locals 3

    new-instance v0, Lr4/ys3;

    new-instance v1, Lr4/at3;

    invoke-direct {v1, p0}, Lr4/at3;-><init>(Lr4/u5;)V

    sget-object p0, Lr4/d8;->o:Ljava/lang/Object;

    sget-object v2, Lr4/ys3;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lr4/ys3;-><init>(Lr4/e8;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static r(Lr4/e8;Ljava/lang/Object;Ljava/lang/Object;)Lr4/ys3;
    .locals 1

    new-instance v0, Lr4/ys3;

    invoke-direct {v0, p0, p1, p2}, Lr4/ys3;-><init>(Lr4/e8;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final f(ILr4/d8;J)Lr4/d8;
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1, p2, p3, p4}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    iget-object p1, p2, Lr4/d8;->a:Ljava/lang/Object;

    iget-object p3, p0, Lr4/ys3;->d:Ljava/lang/Object;

    invoke-static {p1, p3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lr4/d8;->o:Ljava/lang/Object;

    iput-object p1, p2, Lr4/d8;->a:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final h(ILr4/b8;Z)Lr4/b8;
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1, p2, p3}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    iget-object p1, p2, Lr4/b8;->b:Ljava/lang/Object;

    iget-object v0, p0, Lr4/ys3;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget-object p1, Lr4/ys3;->f:Ljava/lang/Object;

    iput-object p1, p2, Lr4/b8;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    sget-object v1, Lr4/ys3;->f:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/ys3;->e:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1}, Lr4/e8;->j(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lr4/ys3;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lr4/ys3;->f:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final s(Lr4/e8;)Lr4/ys3;
    .locals 3

    new-instance v0, Lr4/ys3;

    iget-object v1, p0, Lr4/ys3;->d:Ljava/lang/Object;

    iget-object v2, p0, Lr4/ys3;->e:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lr4/ys3;-><init>(Lr4/e8;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

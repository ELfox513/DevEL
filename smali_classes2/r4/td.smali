.class public abstract Lr4/td;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/td;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/qd;

    invoke-direct {v0}, Lr4/qd;-><init>()V

    sput-object v0, Lr4/td;->a:Lr4/td;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(ILr4/sd;ZJ)Lr4/sd;
.end method

.method public abstract c()I
.end method

.method public abstract d(ILr4/rd;Z)Lr4/rd;
.end method

.method public abstract e(Ljava/lang/Object;)I
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lr4/td;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(ILr4/sd;Z)Lr4/sd;
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lr4/td;->b(ILr4/sd;ZJ)Lr4/sd;

    move-result-object p1

    return-object p1
.end method

.method public final h(ILr4/rd;Lr4/sd;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    invoke-virtual {p0, v0, p3, v0}, Lr4/td;->g(ILr4/sd;Z)Lr4/sd;

    const/4 p2, 0x1

    if-nez p1, :cond_5

    const/4 p1, -0x1

    if-eqz p4, :cond_2

    if-eq p4, p2, :cond_1

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    invoke-virtual {p0}, Lr4/td;->a()I

    move-result p4

    add-int/2addr p4, p1

    if-nez p4, :cond_3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lr4/td;->a()I

    move-result p4

    add-int/2addr p4, p1

    if-nez p4, :cond_3

    const/4 p2, -0x1

    :cond_3
    :goto_1
    if-ne p2, p1, :cond_4

    return p1

    :cond_4
    invoke-virtual {p0, p2, p3, v0}, Lr4/td;->g(ILr4/sd;Z)Lr4/sd;

    return v0

    :cond_5
    add-int/2addr p1, p2

    return p1
.end method

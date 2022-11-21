.class public final Ln1/m;
.super Lb2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/m$a;
    }
.end annotation


# static fields
.field public static final a:Ln1/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln1/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln1/m;-><init>(I)V

    sput-object v0, Ln1/m;->a:Ln1/m;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method

.method public static x(Ln1/m;Ln1/m;)Ln1/m;
    .locals 6

    sget-object v0, Ln1/m;->a:Ln1/m;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    new-instance v2, Ln1/m;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ln1/m;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p0, v4}, Ln1/m;->z(I)Ln1/m$a;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ln1/m;->C(ILn1/m$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    add-int p0, v0, v3

    invoke-virtual {p1, v3}, Ln1/m;->z(I)Ln1/m$a;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ln1/m;->C(ILn1/m$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public A(I)I
    .locals 6

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ln1/m;->z(I)Ln1/m$a;

    move-result-object v4

    invoke-virtual {v4}, Ln1/m$a;->b()I

    move-result v5

    if-gt v5, p1, :cond_1

    if-le v5, v1, :cond_1

    invoke-virtual {v4}, Ln1/m$a;->a()I

    move-result v2

    if-ne v5, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public B(III)V
    .locals 1

    new-instance v0, Ln1/m$a;

    invoke-direct {v0, p2, p3}, Ln1/m$a;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public C(ILn1/m$a;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)Ln1/m$a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/m$a;

    return-object p1
.end method

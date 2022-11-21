.class public final Lv1/d;
.super Lb2/f;
.source "SourceFile"


# static fields
.field public static final a:Lv1/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv1/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv1/d;-><init>(I)V

    sput-object v0, Lv1/d;->a:Lv1/d;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method

.method public static x(Lv1/d;Lv1/d;)Lv1/d;
    .locals 5

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v1, Lv1/d;

    invoke-direct {v1, v0}, Lv1/d;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lv1/d;->z(I)Lv1/c;

    move-result-object v3

    invoke-virtual {p1, v2}, Lv1/d;->z(I)Lv1/c;

    move-result-object v4

    invoke-static {v3, v4}, Lv1/c;->B(Lv1/c;Lv1/c;)Lv1/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lv1/d;->A(ILv1/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "list1.size() != list2.size()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public A(ILv1/c;)V
    .locals 0

    invoke-virtual {p2}, Lb2/o;->throwIfMutable()V

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public z(I)Lv1/c;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv1/c;

    return-object p1
.end method

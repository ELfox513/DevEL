.class public final Lu1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lu1/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu1/e;Lu1/e;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-static {p1}, Lu1/e;->a(Lu1/e;)I

    move-result v0

    invoke-static {p2}, Lu1/e;->a(Lu1/e;)I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-static {p1}, Lu1/e;->a(Lu1/e;)I

    move-result p1

    invoke-static {p2}, Lu1/e;->a(Lu1/e;)I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_3
    invoke-virtual {p1}, Lu1/e;->e()I

    move-result p1

    invoke-virtual {p2}, Lu1/e;->e()I

    move-result p2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lu1/e;

    check-cast p2, Lu1/e;

    invoke-virtual {p0, p1, p2}, Lu1/e$a;->a(Lu1/e;Lu1/e;)I

    move-result p1

    return p1
.end method

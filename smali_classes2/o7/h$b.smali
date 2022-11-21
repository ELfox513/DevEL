.class public final Lo7/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo7/h;",
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
.method public a(Lo7/h;Lo7/h;)I
    .locals 4

    invoke-virtual {p1}, Lo7/h;->r()Lo7/h$g;

    move-result-object v0

    invoke-virtual {p2}, Lo7/h;->r()Lo7/h$g;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lo7/h$g;->d()B

    move-result v2

    invoke-static {v2}, Lo7/h;->d(B)I

    move-result v2

    invoke-interface {v1}, Lo7/h$g;->d()B

    move-result v3

    invoke-static {v3}, Lo7/h;->d(B)I

    move-result v3

    invoke-static {v2, v3}, Lx1/i;->a(II)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_1
    invoke-virtual {p1}, Lo7/h;->size()I

    move-result p1

    invoke-virtual {p2}, Lo7/h;->size()I

    move-result p2

    invoke-static {p1, p2}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo7/h;

    check-cast p2, Lo7/h;

    invoke-virtual {p0, p1, p2}, Lo7/h$b;->a(Lo7/h;Lo7/h;)I

    move-result p1

    return p1
.end method

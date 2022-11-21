.class public Lo7/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lo7/l0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/l0$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo7/u1$b;Ljava/lang/Object;Lo7/u1$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/u1$b;",
            "TK;",
            "Lo7/u1$b;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo7/l0$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lo7/l0$a;-><init>(Lo7/u1$b;Ljava/lang/Object;Lo7/u1$b;Ljava/lang/Object;)V

    iput-object v0, p0, Lo7/l0;->a:Lo7/l0$a;

    iput-object p2, p0, Lo7/l0;->b:Ljava/lang/Object;

    iput-object p4, p0, Lo7/l0;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lo7/l0$a;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/l0$a<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lo7/l0$a;->a:Lo7/u1$b;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lo7/u;->d(Lo7/u1$b;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lo7/l0$a;->c:Lo7/u1$b;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lo7/u;->d(Lo7/u1$b;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(Lo7/u1$b;Ljava/lang/Object;Lo7/u1$b;Ljava/lang/Object;)Lo7/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/u1$b;",
            "TK;",
            "Lo7/u1$b;",
            "TV;)",
            "Lo7/l0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lo7/l0;

    invoke-direct {v0, p0, p1, p2, p3}, Lo7/l0;-><init>(Lo7/u1$b;Ljava/lang/Object;Lo7/u1$b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Lo7/k;Lo7/l0$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/k;",
            "Lo7/l0$a<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    iget-object v0, p1, Lo7/l0$a;->a:Lo7/u1$b;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lo7/u;->z(Lo7/k;Lo7/u1$b;ILjava/lang/Object;)V

    iget-object p1, p1, Lo7/l0$a;->c:Lo7/u1$b;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lo7/u;->z(Lo7/k;Lo7/u1$b;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    invoke-static {p1}, Lo7/k;->U(I)I

    move-result p1

    iget-object v0, p0, Lo7/l0;->a:Lo7/l0$a;

    invoke-static {v0, p2, p3}, Lo7/l0;->b(Lo7/l0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Lo7/k;->C(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public c()Lo7/l0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/l0$a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lo7/l0;->a:Lo7/l0$a;

    return-object v0
.end method

.class public Lu1/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/b$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lu1/b$j<",
        "TT;>.a;>;"
    }
.end annotation


# instance fields
.field public final a:Lk1/f;

.field public final b:Lu1/c;

.field public final d:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final k:I

.field public final p:I

.field public final synthetic q:Lu1/b$j;


# direct methods
.method public constructor <init>(Lu1/b$j;Lk1/f;Lu1/c;Ljava/lang/Comparable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/f;",
            "Lu1/c;",
            "TT;II)V"
        }
    .end annotation

    iput-object p1, p0, Lu1/b$j$a;->q:Lu1/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu1/b$j$a;->a:Lk1/f;

    iput-object p3, p0, Lu1/b$j$a;->b:Lu1/c;

    iput-object p4, p0, Lu1/b$j$a;->d:Ljava/lang/Comparable;

    iput p5, p0, Lu1/b$j$a;->k:I

    iput p6, p0, Lu1/b$j$a;->p:I

    return-void
.end method


# virtual methods
.method public c(Lu1/b$j$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu1/b$j<",
            "TT;>.a;)I"
        }
    .end annotation

    iget-object v0, p0, Lu1/b$j$a;->d:Ljava/lang/Comparable;

    iget-object p1, p1, Lu1/b$j$a;->d:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lu1/b$j$a;

    invoke-virtual {p0, p1}, Lu1/b$j$a;->c(Lu1/b$j$a;)I

    move-result p1

    return p1
.end method

.class public Lo7/y$b;
.super Lo7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo7/y<",
        "TT;*>;>",
        "Lo7/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lo7/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo7/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo7/b;-><init>()V

    iput-object p1, p0, Lo7/y$b;->b:Lo7/y;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lo7/i;Lo7/p;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo7/y$b;->g(Lo7/i;Lo7/p;)Lo7/y;

    move-result-object p1

    return-object p1
.end method

.method public g(Lo7/i;Lo7/p;)Lo7/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/i;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lo7/y$b;->b:Lo7/y;

    invoke-static {v0, p1, p2}, Lo7/y;->N(Lo7/y;Lo7/i;Lo7/p;)Lo7/y;

    move-result-object p1

    return-object p1
.end method

.class public Lo7/k1$c;
.super Lo7/k1$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/k1<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lo7/k1;


# direct methods
.method public constructor <init>(Lo7/k1;)V
    .locals 1

    iput-object p1, p0, Lo7/k1$c;->b:Lo7/k1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo7/k1$g;-><init>(Lo7/k1;Lo7/k1$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo7/k1;Lo7/k1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lo7/k1$c;-><init>(Lo7/k1;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lo7/k1$b;

    iget-object v1, p0, Lo7/k1$c;->b:Lo7/k1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo7/k1$b;-><init>(Lo7/k1;Lo7/k1$a;)V

    return-object v0
.end method

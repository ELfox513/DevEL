.class public Lf1/l$a;
.super Ln0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/l;-><init>(Ln0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln0/b<",
        "Lf1/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lf1/l;


# direct methods
.method public constructor <init>(Lf1/l;Ln0/e;)V
    .locals 0

    iput-object p1, p0, Lf1/l$a;->d:Lf1/l;

    invoke-direct {p0, p2}, Ln0/b;-><init>(Ln0/e;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lq0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lf1/j;

    invoke-virtual {p0, p1, p2}, Lf1/l$a;->i(Lq0/f;Lf1/j;)V

    return-void
.end method

.method public i(Lq0/f;Lf1/j;)V
    .locals 2

    iget-object v0, p2, Lf1/j;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lq0/d;->A0(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Lq0/d;->E(ILjava/lang/String;)V

    :goto_0
    iget-object p2, p2, Lf1/j;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    invoke-interface {p1, v0}, Lq0/d;->A0(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p2}, Lq0/d;->E(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

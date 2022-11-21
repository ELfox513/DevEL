.class public Lf1/i$a;
.super Ln0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/i;-><init>(Ln0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln0/b<",
        "Lf1/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lf1/i;


# direct methods
.method public constructor <init>(Lf1/i;Ln0/e;)V
    .locals 0

    iput-object p1, p0, Lf1/i$a;->d:Lf1/i;

    invoke-direct {p0, p2}, Ln0/b;-><init>(Ln0/e;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lq0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lf1/g;

    invoke-virtual {p0, p1, p2}, Lf1/i$a;->i(Lq0/f;Lf1/g;)V

    return-void
.end method

.method public i(Lq0/f;Lf1/g;)V
    .locals 3

    iget-object v0, p2, Lf1/g;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lq0/d;->A0(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Lq0/d;->E(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    iget p2, p2, Lf1/g;->b:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lq0/d;->c0(IJ)V

    return-void
.end method

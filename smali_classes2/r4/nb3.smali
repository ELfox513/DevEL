.class public final Lr4/nb3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/ai3;",
        "Lr4/xh3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/ob3;


# direct methods
.method public constructor <init>(Lr4/ob3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/nb3;->b:Lr4/ob3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 1

    check-cast p1, Lr4/ai3;

    invoke-virtual {p1}, Lr4/ai3;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lr4/ai3;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid key format: missing KEK URI or DEK template"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/ai3;->I(Lr4/ll3;Lr4/bm3;)Lr4/ai3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/ai3;

    invoke-static {}, Lr4/xh3;->I()Lr4/wh3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/wh3;->x(Lr4/ai3;)Lr4/wh3;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/wh3;->v(I)Lr4/wh3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/xh3;

    return-object p1
.end method
